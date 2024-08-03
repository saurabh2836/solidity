

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;


contract MyContract {
              //State Variables  
            int  public myUint = 1;
            uint256 public myUint256  =1;
            uint public myUnit8 =1;

            string public myString = " Hello, world !";
            bytes32 public myBytes32 ="Hello , world !";

          //  address public myAddress = 0xC02AAsddsASDSDSDSDSDSDSD;

            struct MyStruct {

                uint256 myUint256;
                string myString;
            }



            MyStruct public mystruct = MyStruct(1,"Hello, world");

            function getValue() public pure returns(uint)  {

                uint value =1;

                return value;
            }

}