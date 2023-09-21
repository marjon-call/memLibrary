// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/mem.sol";

contract MemTest is Test {
   

    address[] arr2 = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db];
    

    struct TestStruct {
        address var1;
        address var2;
    }



   
   function testPush() public {

        address[] memory arr = new address[](4);
        arr[0] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        arr[1] = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        arr[2] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        arr[3] = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

       

        address[] memory _arr2 = arr2;

        address[] memory arr3 = new address[](1);

        arr3[0] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

        arr = mem.push(arr, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        arr = mem.push(arr, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);



        TestStruct memory ts = TestStruct(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        
        assertEq(arr.length, 6);

        assertEq(arr[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(arr[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(arr[2], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr[3], 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(arr[4], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(arr[5], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(_arr2[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(_arr2[2], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        assertEq(ts.var1, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(ts.var2, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        assertEq(arr3[0], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr3.length, 1);


    }


    function testPop() public {

        address[] memory arr = new address[](4);
        arr[0] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        arr[1] = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        arr[2] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        arr[3] = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

       

        
        address[] memory _arr2 = arr2;

        address[] memory arr3 = new address[](1);

        arr3[0] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

        arr = mem.pop(arr);
        arr = mem.pop(arr);


        TestStruct memory ts = TestStruct(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        
        assertEq(arr.length, 2);

        assertEq(arr[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(arr[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);


        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(_arr2[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(_arr2[2], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        assertEq(ts.var1, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(ts.var2, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        assertEq(arr3[0], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr3.length, 1);


    }

   


   function testInsert() public {

        address[] memory arr = new address[](4);
        arr[0] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        arr[1] = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        arr[2] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        arr[3] = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

        


        address[] memory _arr2 = arr2;

        address[] memory arr3 = new address[](1);

        arr3[0] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

        arr = mem.insert(arr, address(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4), 1);
        arr = mem.insert(arr, address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2), 5);


        TestStruct memory ts = TestStruct(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        
        assertEq(arr.length, 6);

        assertEq(arr[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(arr[1], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(arr[2], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(arr[3], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr[4], 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(arr[5], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(_arr2[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(_arr2[2], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        assertEq(ts.var1, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(ts.var2, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        assertEq(arr3[0], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr3.length, 1);


   }


    function testRemove() public {

        address[] memory arr = new address[](4);
        arr[0] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        arr[1] = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        arr[2] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        arr[3] = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;


        address[] memory _arr2 = arr2;

        address[] memory arr3 = new address[](1);

        arr3[0] = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

        arr = mem.remove(arr, 0);
        arr = mem.remove(arr, 1);


        TestStruct memory ts = TestStruct(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        
        assertEq(arr.length, 2);

        assertEq(arr[0], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(arr[1], 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        assertEq(_arr2[1], 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        assertEq(_arr2[2], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        assertEq(ts.var1, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
        assertEq(ts.var2, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);

        assertEq(arr3[0], 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        assertEq(arr3.length, 1);



    }

        
}