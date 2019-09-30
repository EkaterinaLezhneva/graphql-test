const TodoActions = require('../../index');

const resolvers = {
  Query: {
    getTodos: async (_, data) => {
      return await TodoActions.getTodos(data);
    }
  },
  Mutation: {
    createTodo: async (_, data) => {
      return await TodoActions.createTodo(data);
    },
    updateTodo: async (_, data) => {
      return await TodoActions.updateTodo(data);
    },
    markTodo: async (_, data) => {
      return await TodoActions.markTodo(data);
    },
    deleteTodo: (_, data) => {
      return TodoActions.deleteTodo(data);
    },
  }
};

module.exports = resolvers;
