// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/mem.sol";

contract MemTest is Test {
   

    int32[] arr2 = [int32(9), int32(8), int32(7)];
    

    struct TestStruct {
        int32 var1;
        int32 var2;
    }



   
   function testPush() public {

        int32[] memory arr = new int32[](4);
        arr[0] = 0;
        arr[1] = 1;
        arr[2] = 2;
        arr[3] = 3;

        arr = mem.push(arr, 4);
        arr = mem.push(arr, 5);


        int32[] memory _arr2 = arr2;

        int32[] memory arr3 = new int32[](1);

        arr3[0] = 11;


        TestStruct memory ts = TestStruct(1,2);

        
        assertEq(arr.length, 6);

        assertEq(arr[0], 0);
        assertEq(arr[1], 1);
        assertEq(arr[2], 2);
        assertEq(arr[3], 3);
        assertEq(arr[4], 4);
        assertEq(arr[5], 5);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 9);
        assertEq(_arr2[1], 8);
        assertEq(_arr2[2], 7);

        assertEq(ts.var1, 1);
        assertEq(ts.var2, 2);

        assertEq(arr3[0], 11);
        assertEq(arr3.length, 1);


    }


    function testPop() public {

        int32[] memory arr = new int32[](4);
        arr[0] = 0;
        arr[1] = 1;
        arr[2] = 2;
        arr[3] = 3;

        arr = mem.pop(arr);
        arr = mem.pop(arr);


        int32[] memory _arr2 = arr2;

        int32[] memory arr3 = new int32[](1);

        arr3[0] = 11;


        TestStruct memory ts = TestStruct(1,2);

        
        assertEq(arr.length, 2);

        assertEq(arr[0], 0);
        assertEq(arr[1], 1);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 9);
        assertEq(_arr2[1], 8);
        assertEq(_arr2[2], 7);

        assertEq(ts.var1, 1);
        assertEq(ts.var2, 2);

        assertEq(arr3[0], 11);
        assertEq(arr3.length, 1);

    }

   


   function testInsert() public {

        int32[] memory arr = new int32[](4);
        arr[0] = 0;
        arr[1] = 1;
        arr[2] = 2;
        arr[3] = 3;

        arr = mem.insert(arr, 4, 1);
        arr = mem.insert(arr, 5, 5);


        int32[] memory _arr2 = arr2;

        int32[] memory arr3 = new int32[](1);

        arr3[0] = 11;


        TestStruct memory ts = TestStruct(1,2);

        
        assertEq(arr.length, 6);

        assertEq(arr[0], 0);
        assertEq(arr[1], 4);
        assertEq(arr[2], 1);
        assertEq(arr[3], 2);
        assertEq(arr[4], 3);
        assertEq(arr[5], 5);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 9);
        assertEq(_arr2[1], 8);
        assertEq(_arr2[2], 7);

        assertEq(ts.var1, 1);
        assertEq(ts.var2, 2);

        assertEq(arr3[0], 11);
        assertEq(arr3.length, 1);

   }


    function testRemove() public {

        int32[] memory arr = new int32[](4);
        arr[0] = 0;
        arr[1] = 1;
        arr[2] = 2;
        arr[3] = 3;

        arr = mem.remove(arr, 0);
        arr = mem.remove(arr, 1);


        int32[] memory _arr2 = arr2;

        int32[] memory arr3 = new int32[](1);

        arr3[0] = 11;


        TestStruct memory ts = TestStruct(1,2);

        
        assertEq(arr.length, 2);

        assertEq(arr[0], 1);
        assertEq(arr[1], 3);

        assertEq(_arr2.length, 3);
        assertEq(_arr2[0], 9);
        assertEq(_arr2[1], 8);
        assertEq(_arr2[2], 7);

        assertEq(ts.var1, 1);
        assertEq(ts.var2, 2);

        assertEq(arr3[0], 11);
        assertEq(arr3.length, 1);

    }

        
}