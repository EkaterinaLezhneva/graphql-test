const Sequelize = require('sequelize');

const TodoModel = {
  description: {
    type: Sequelize.TEXT,
  },
  priority: {
    type: Sequelize.INTEGER,
    defaultValue: 1,
  },
  completed: {
    type: Sequelize.BOOLEAN,
    defaultValue: false,
  },
};
module.exports = TodoModel;
