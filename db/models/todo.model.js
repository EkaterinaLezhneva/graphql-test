const Sequelize = require('sequelize');

module.exports = () => ({
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
});
