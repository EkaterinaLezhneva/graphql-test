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
     getTodos(
      sortField: String,
      sortOrder: String,
      filterCompleted: Boolean
     ):[Todo]
  }, 
  type Mutation {
    createTodo(
      description: String,
      priority:Int
    ):Todo
    updateTodo(
      id:Int!,
      description:String,
      priority:Int
    ):Todo
    markTodo(
      id:Int!
    ):Todo
    deleteTodo(
      id:Int!
    ):String
  }
`;

module.exports = typeDefs;
