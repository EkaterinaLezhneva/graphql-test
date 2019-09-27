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
    hello: String,
    error:String
  }
`;

module.exports = typeDefs;
