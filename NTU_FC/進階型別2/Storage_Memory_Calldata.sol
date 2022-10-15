// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Storage {
    struct Todo {
        string title;
        bool completed;
    }

    // struct, array, mapping

    Todo[] public todos;

    function addTodo(string memory _title) public {
        todos.push(Todo({
            title: _title,
            completed: false
        }));
    }

    function updateTodoFromStorage(uint256 _index, string memory _title) public {
        _title = "eat breakfast";
        Todo storage todo = todos[0];
        todo.completed = true;
        todo.title = _title;
    }

    function fakeUpdateTodoFromMemory(uint256 _index) public view returns (Todo memory) {
        Todo memory todo = todos[_index];
        todo.completed = true;

        return todo;
    }

    function updateTodoFromCalldata(uint256 _index, string calldata _title) public {
        Todo storage todo = todos[0];
        todo.title = _title;
    }
}