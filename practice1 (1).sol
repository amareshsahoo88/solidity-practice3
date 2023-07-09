// write a program using structure and mapping to store the data of a user linked to its wallet address.  name , age


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract userRegistry{

    address owner = msg.sender;

    modifier onlyOwner{
        require(msg.sender == owner , "only owner has the access to the data");
        _;
    }
    struct Person{
        string name;
        uint age;
    }

    mapping(address => Person) public personalInfo;

    function setPersonInfo(string memory _name, uint _age) public {
        Person memory newPerson;
        newPerson.name = _name;
        newPerson.age = _age;

        personalInfo[msg.sender] = newPerson;

    }

    function getpersonalInfo(address _personalAddress) public view onlyOwner returns(string memory name, uint age){
        Person memory person = personalInfo[_personalAddress];

        return (person.name , person.age);


    }
}