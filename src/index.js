const { Todo } = require('./db/index');

const getTodos = async (data) => {
  try {
    let {
      sortField,
      sortOrder,
      filterCompleted,
    } = data;

    sortOrder = sortOrder ? sortOrder : 'asc';
    filterCompleted = filterCompleted ? filterCompleted : null;

    const query = {};
    if (filterCompleted !== null) query.where = { completed: filterCompleted };
    if (sortField) query.order = [[sortField, sortOrder]];
    let todos = await Todo.findAll(query);
    todos = todos.map(todo => todo.dataValues);
    return todos;
  } catch (ex) {
    return ex;
  }
};

const createTodo = async (data) => {
  try {
    let {
      description,
      priority
    } = data;
    if (!description) throw "Error: Description is empty";
    priority = priority && priority > 1 ? priority : 1;
    return await Todo.create({ description, priority });
  } catch (ex) {
    return ex;
  }
};

const updateTodo = async (data) => {
  try {
    const {
      description,
      id,
      priority
    } = data;
    if (!id) throw "Error: Id is empty";
    const newPriority = priority > 1 ? priority : 1;
    const updates = {};
    if (description) updates.description = description;
    if (priority) updates.priority = newPriority;
    await Todo.update(updates, { where: { id } });
    return await Todo.findOne({ where: id });
  } catch (ex) {
    return (ex);
  }
};
const markTodo = async ({ id }) => {
  try {
    if (!id) throw "Error: Id is empty";
    await Todo.update({ completed: true }, { where: { id } });
    return await Todo.findOne({ where: id });
  } catch (ex) {
    return (ex)
  }
};

const deleteTodo = async ({ id }) => {
  try {
    if (!id) throw "Error: Id is empty";
    await Todo.destroy({ where: { id } });
    return `Todo with id:${id} is removed`;
  } catch (ex) {
    return (ex);
  }
};

module.exports = {
  getTodos,
  createTodo,
  updateTodo,
  markTodo,
  deleteTodo
};
