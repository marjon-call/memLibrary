# memLibrary
 
This is a Solidity Libaray that allows users to manipulate memory arrays. The library contains ```push()```, ```pop()```, ```insert()``` and ```remove()```. It supports the following types: ```uint8[]``` - ```uint256[]```, ```int8[]``` - ```int256[]```, ```address[]```, ```bool[]```, & ```bytes32[]```.

## Instalation

You can install this library with the following command:

```
npm install memlibrary
```

## Usage

This section goes over how to implement this library in your code.

### Import

After installing, you import the library with the following line of code:
```
import "memlibrary/src/mem.sol";
```

### Deployment

Since this library uses ```public``` functions, which take advantage of ```delegatecall()```, users must deploy the library with their contract. I have already deployed the library to Ethereum Mainnet at the following address: ```0x0fd9bbF9e7855F045442A3D571F81a9308706ff6```. To utilize this library on mainnet use the following code when deploying your smart contract:
```
    const YourContract = await ethers.getContractFactory("YourContract", {
      libraries: {
        mem: 0x0fd9bbF9e7855F045442A3D571F81a9308706ff6
      },
    });
    const yourContract = await YourContract.deploy();
    await yourContract.deployed();
```

If you would like to use this library outside of Ethereum mainnet, you will have tot deply the library yourself. The following code demonstartes how to do so:
```
    const Mem = await ethers.getContractFactory("mem");
    const mem = await Mem.deploy();
    await mem.deployed();

    const YourContract = await ethers.getContractFactory("YourContract", {
      libraries: {
        mem: mem.address
      },
    });
    const yourContract = await YourContract.deploy();
    await yourContract.deployed();
```

### Examples
```arr = mem.push(arr, _newVal)```: Takes in a memory array and new value as pramaters and returns the same array with the new value appended as the last element. <br>
```arr = mem.pop(arr)```: Takes in a memory array as a pramater and returns the same array without the last element. <br>
```arr = mem.insert(arr, _newVal, index)```: Takes in a memory array, a new value, and index for the new value as pramaters and returns the array with the new element inserted into the specified index. <br>
```arr = mem.remove(arr, index)```: Takes in a memory array and index for the target value as pramaters and returns the array without the element at the specified index. <br>




