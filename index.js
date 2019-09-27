const express = require('express');
const { ApolloServer } = require('apollo-server-express');

const typeDefs = require('./graphql/models/todo.model')


const resolvers = {
  Query: {
    hello: () => 'Hello world!',
    error: () => 'This error'
  },
};

const server = new ApolloServer({ typeDefs, resolvers });

const app = express();
server.applyMiddleware({ app });

app.listen({ port: 4000 }, () =>
  console.log(`🚀 Server ready at http://localhost:4000${server.graphqlPath}`)
);
