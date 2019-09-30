const { gql } = require('apollo-server-express');

const typeDefs = gql`
  scalar Date
  type Todo {
    id:ID!,
    description:String!,
    priority:Int,
    completed:Boolean,
    createdAt:Date
  },
  type Query {
    """
      The getTodos method returns all todos.
      If the parameters sortField and sortOrder are passed, then it returns
      a sorted todos array according to the field specified in the parameter and the sorting method.
      If the sorting parameter sortOrder is not passed, then by default it is sorted in ascending order.
      If the parameter filterCompleted is passed, then todos are filtered by a completed or active todo.
    """
     getTodos(
      sortField: String,
      sortOrder: String,
      filterCompleted: Boolean
     ):[Todo]
  }, 
  type Mutation {
    """
    Method createTodo creates a new todo.
    Two parameters are passed: description and priority; description is a mandatory field.
    If the priority parameter is not passed, then by default it is 1.
    """
    createTodo(
      description: String,
      priority:Int
    ):Todo
    """
      Method updateTodo updates the todo with the specified id.
      Two parameters are passed: description and priority.
      If only the description field is passed, then only the description field is updated.
      If only priority is passed, then only the priority field is updated.
      If both fields are passed, then todo is updated both in the priority field and in the description field.
    """
    updateTodo(
      id:Int!,
      description:String,
      priority:Int
    ):Todo
    """
      Method markTodo sets the field completed to true for todo with the specified id.
    """
    markTodo(
      id:Int!
    ):Todo
    """
      Method deleteTodo removes the todo with the specified id.
    """
    deleteTodo(
      id:Int!
    ):String
  }
`;

module.exports = typeDefs;
