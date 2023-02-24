pragma solidity >=0.5.0 <0.6.0;

import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
    require(msg.sender == zombieToOwner[_zombieId]); // let's make sure we own this zombie
    Zombie storage myZombie = zombies[_zombieId]; // get this zombieId from our zombies
    // start here
  }

}

/*
Storage vs Memory (Data location)
In Solidity, there are two locations you can store variables — in storage and in memory.
Storage refers to variables stored permanently on the blockchain. Memory variables are temporary, and are erased between external function calls to your contract. Think of it like your computer's hard disk vs RAM.
Most of the time you don't need to use these keywords because Solidity handles them by default. State variables (variables declared outside of functions) are by default storage and written permanently to the blockchain, while variables declared inside functions are memory and will disappear when the function call ends.
However, there are times when you do need to use these keywords, namely when dealing with structs and arrays within functions:
*/