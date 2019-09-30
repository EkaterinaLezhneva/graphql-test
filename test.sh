#Create todo
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  createTodo(description:\"Test 1\", priority:1){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  createTodo(description:\"Test 2\", priority:2){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  createTodo(description:\"Test 3\", priority:3){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  createTodo(description:\"Test 4\", priority:4){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed

#Get todos
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(sortField:\"description\", sortOrder:\"desc\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(sortField:\"description\", sortOrder:\"asc\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(sortField:\"description\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(sortField:\"priority\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(sortField:\"priority\", sortOrder:\"desc\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\n{\n  getTodos(filterCompleted:true){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed

#Update todo
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  updateTodo(id:10, description:\"Update test1\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  updateTodo(id:10, priority:10){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  updateTodo(id:10, priority:10, description:\"Update test2\"){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed

#Mark todo
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  markTodo(id:10){\n    id\n    description\n    priority\n    completed\n  }\n}\n"}' --compressed

#Delete todo
curl 'http://localhost:4000/graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: http://localhost:4000' --data-binary '{"query":"# Write your query or mutation hereget\nmutation{\n  deleteTodo(id:10)\n}\n"}' --compressed

