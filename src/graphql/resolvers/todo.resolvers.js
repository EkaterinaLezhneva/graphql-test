const TodoActions = require('../actions/todo');

const resolvers = {
  Query: {
    getTodos: (obj, args) => {
      return TodoActions.getTodos(args);
    }
  },
  Mutation: {
    createTodo: (obj, args) => {
      return TodoActions.createTodo(args);
    },
    updateTodo: (obj, args) => {
      return TodoActions.updateTodo(args);
    },
    markTodo: (obj, args) => {
      return TodoActions.markTodo(args);
    },
    deleteTodo: (obj, args) => {
      return TodoActions.deleteTodo(args);
    },
  }
};

module.exports = resolvers;
