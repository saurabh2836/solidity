

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;



contract Counter{

       uint public count ;  //uint is unsigned postive number

        // constructor() public {
        //     count = 0;
        // }

    //    function getCount() public view returns(uint) {
    //         return count;
    //    }

       function incrementCount() public  {
              count++;
       }

}