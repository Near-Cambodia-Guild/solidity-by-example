// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}

contract Structs{

    struct Car{
        
    string model;
    uint year;
    address owner;
}
Car public car;

Car[] public cars;

mapping (address=>Car[])public carByOwner;

function examples()external{

  Car memory toyata =Car({year : 2000 , model:"Toyata" , owner: msg.sender});
  Car memory lambo = Car ({year:1999 , model:"lambogini", owner: msg.sender});

  cars.push(toyata);
  cars.push(lambo);

cars.push (Car("ferrari",2020,msg.sender));
    Car memory _car=cars[0];
    _car.year;

  }    
}



