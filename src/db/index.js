const Sequelize = require('sequelize');
const TodoModel = require('./models/todo.model');

const sequelize = new Sequelize('graphql', 'postgres', 'dunice', {
  host: 'localhost',
  dialect: 'postgres'
});

const init = () => sequelize.sync();
const Todo = sequelize.define('Todo', TodoModel);

module.exports.database = sequelize;
module.exports.Todo = Todo;
module.exports.init = init;
