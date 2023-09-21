// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/mem.sol";

contract MemTest is Test {
   

    bool[] arr2 = [false, false, false];
    

    struct TestStruct {
        bool var1;
        bool var2;
    }



   
   function testPush() public {

        bool[] memory arr = new bool[](4);
        arr[0] = true;
        arr[1] = false;
        arr[2] = true;
        arr[3] = false;


        bool[] memory _arr2 = arr2;

        bool[] memory arr3 = new bool[](1);

        arr3[0] = true;

        arr = mem.push(arr, true);
        arr = mem.push(arr, false);


        TestStruct memory ts = TestStruct(false,true);

        assertEq(arr.length, 6);

        assertEq(arr[0], true);
        assertEq(arr[1], false);
        assertEq(arr[2], true);
        assertEq(arr[3], false);
        assertEq(arr[4], true);
        assertEq(arr[5], false);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], false);
        assertEq(_arr2[1], false);
        assertEq(_arr2[2], false);

        assertEq(ts.var1, false);
        assertEq(ts.var2, true);

        assertEq(arr3[0], true);
        assertEq(arr3.length, 1);


    }


    function testPop() public {

        bool[] memory arr = new bool[](4);
        arr[0] = true;
        arr[1] = false;
        arr[2] = true;
        arr[3] = false;

        


        bool[] memory _arr2 = arr2;

        bool[] memory arr3 = new bool[](1);

        arr3[0] = true;

        arr = mem.pop(arr);
        arr = mem.pop(arr);


        TestStruct memory ts = TestStruct(false,true);

        
        assertEq(arr.length, 2);

        assertEq(arr[0], true);
        assertEq(arr[1], false);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], false);
        assertEq(_arr2[1], false);
        assertEq(_arr2[2], false);

        assertEq(ts.var1, false);
        assertEq(ts.var2, true);

        assertEq(arr3[0], true);
        assertEq(arr3.length, 1);

    }

   


   function testInsert() public {

        bool[] memory arr = new bool[](4);
        arr[0] = true;
        arr[1] = false;
        arr[2] = true;
        arr[3] = false;

        


        bool[] memory _arr2 = arr2;

        bool[] memory arr3 = new bool[](1);

        arr3[0] = true;

        arr = mem.insert(arr, true, 1);
        arr = mem.insert(arr, false, 5);

        TestStruct memory ts = TestStruct(false,true);

        
        assertEq(arr.length, 6);

        assertEq(arr[0], true);
        assertEq(arr[1], true);
        assertEq(arr[2], false);
        assertEq(arr[3], true);
        assertEq(arr[4], false);
        assertEq(arr[5], false);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], false);
        assertEq(_arr2[1], false);
        assertEq(_arr2[2], false);

        assertEq(ts.var1, false);
        assertEq(ts.var2, true);

        assertEq(arr3[0], true);
        assertEq(arr3.length, 1);

   }


    function testRemove() public {

        bool[] memory arr = new bool[](4);
        arr[0] = true;
        arr[1] = false;
        arr[2] = true;
        arr[3] = false;

        


        bool[] memory _arr2 = arr2;

        bool[] memory arr3 = new bool[](1);

        arr3[0] = true;

        arr = mem.remove(arr, 0);
        arr = mem.remove(arr, 1);

        TestStruct memory ts = TestStruct(false,true);

        
        assertEq(arr.length, 2);

        assertEq(arr[1], false);
        assertEq(arr[0], false);
       

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], false);
        assertEq(_arr2[1], false);
        assertEq(_arr2[2], false);

        assertEq(ts.var1, false);
        assertEq(ts.var2, true);

        assertEq(arr3[0], true);
        assertEq(arr3.length, 1);

    }

        
}
