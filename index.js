const express = require('express');
const { ApolloServer } = require('apollo-server-express');

const typeDefs = require('./src/graphql/models/todo.model');
const resolvers = require('./src/graphql/resolvers/todo.resolvers');
const { init } = require('./src/db/index.js');

const server = new ApolloServer({ typeDefs, resolvers });
init();

const app = express();
server.applyMiddleware({ app });

app.listen({ port: 4000 }, () =>
  console.log(`🚀 Server ready at http://localhost:4000${server.graphqlPath}`)
);
