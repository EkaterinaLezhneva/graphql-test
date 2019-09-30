const express = require('express');
const { ApolloServer } = require('apollo-server-express');

const typeDefs = require('./graphql/models/todo.model');
const resolvers = require('./graphql/resolvers/todo.resolvers');
const { init } = require('./db');

const server = new ApolloServer({ typeDefs, resolvers });
init();

const app = express();
server.applyMiddleware({ app });

app.listen({ port: process.env.PORT }, () =>
  console.log(`🚀 Server ready at port http://localhost:${process.env.PORT}/${server.graphqlPath}`)
);
