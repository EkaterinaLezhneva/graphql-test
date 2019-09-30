const { Todo } = require('../../db/index');

async function getTodos(args) {
  let {
    sortField,
    sortOrder,
    filterCompleted,
  } = args;

  sortOrder = sortOrder ? sortOrder : 'asc';
  filterCompleted = filterCompleted ? filterCompleted : null;

  const query = {};
  if (filterCompleted !== null) query.where = { completed: filterCompleted };
  if (sortField) query.order = [[sortField, sortOrder]];
  let todos = await Todo.findAll(query);
  todos = todos.map(todo => todo.dataValues);
  return todos;
}

async function createTodo( { description, priority }) {
  if (!description) throw "Error: Description is empty";
  priority = priority && priority > 1 ? priority : 1;
  return await Todo.create({ description, priority });
}

async function updateTodo({ description, id, priority }) {
  if (!id) throw "Error: Id is empty";
  const newPriority = priority > 1 ? priority : 1;
  const updates = {};
  if (description) updates.description = description;
  if (priority) updates.priority = newPriority;
  await Todo.update(updates, { where: { id } });
  return await Todo.findOne({ where: id });
}

async function markTodo({ id }) {
  if (!id) throw "Error: Id is empty";
  await Todo.update({ completed: true }, { where: { id } });
  return await Todo.findOne({ where: id });
}

async function deleteTodo({ id }) {
  if (!id) throw "Error: Id is empty";
  await Todo.destroy({ where: { id } });
  return `Todo with id:${id} has been removed`;
}

module.exports = {
  getTodos,
  createTodo,
  updateTodo,
  markTodo,
  deleteTodo
};
