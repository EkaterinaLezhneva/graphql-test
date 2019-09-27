const Sequelize = require('sequelize');
const TodoModel = require('./models/todo.model');

const sequelize = new Sequelize('database', 'dunice', 'dunice', {
  host: 'localhost',
  dialect: 'postgres'
});

const init = () => sequelize.sync();
const Todo = sequelize.define('todo', TodoModel());

module.exports.database = sequelize;
module.exports.Todos = Todos;
module.exports.init = init;
