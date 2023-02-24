pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {
    event NewZombie(uint256 zombieId, string name, uint256 dna);

    uint256 dnaDigits = 16;
    uint256 dnaModulus = 10**dnaDigits;

    struct Zombie {
        string name;
        uint256 dna;
    }

    Zombie[] public zombies;

    /*To store zombie ownership, we're going to use two mappings: one that keeps track of the address that owns a zombie, and another that keeps track of how many zombies an owner has.
Create a mapping called zombieToOwner. The key will be a uint (we'll store and look up the zombie based on its id) and the value an address. Let's make this mapping public.
Create a mapping called ownerZombieCount, where the key is an address and the value a uint.*/

    mapping(uint256 => address) public zombieToOwner;
    mapping(address => uint256) ownerZombieCount;

    function _createZombie(string memory _name, uint256 _dna) private {
        uint256 id = zombies.push(Zombie(_name, _dna)) - 1;
        zombieToOwner[id] = msg.sender; // we map the zombie ID with account address that means this zombie is belongs to this wallet address
        ownerZombieCount[msg.sender]++; // we increase the count of zombies that hold by this wallet address
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str)
        private
        view
        returns (uint256)
    {
        uint256 rand = uint256(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus; // We want our DNA to only be 16 digits long (remember our dnaModulus?). So the second line of code should return the above value modulus (%) dnaModulus.
    }

    function createRandomZombie(string memory _name) public {
        require(ownerZombieCount[msg.sender] == 0); // check this function only gets executed one time per user, when they create their first zombie. If condition is not true it will throw exception. it is because we we don't want the user to be able to create unlimited zombies in their army by repeatedly calling createRandomZombie
        uint256 randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
}
