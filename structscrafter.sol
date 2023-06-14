// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    function operations() external {
        Car memory bugatti = Car("Chiron", 2018, msg.sender);
        
        Car memory bmw = Car({
            year: 2010,
            model: "x1",
            owner: msg.sender
        });

        Car memory tesla;
        tesla.model = "Model S";
        tesla.year = 2021;
        tesla.owner = msg.sender;

        cars.push(bugatti);
        cars.push(bmw);
        cars.push(Car("Model X", 2022, msg.sender));

        Car storage _car = cars[0];
        _car.year = 2019;
        delete _car.owner;

        delete cars[1];
    }
}
