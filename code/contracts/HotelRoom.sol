



//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;


contract HotelRoom {

        //Ether payments
        //Modifiers
        //Visibility
        //events
        enum Statuses {
            Vacant, 
            Occupied 
            }
        Statuses public currentStatus;
        event Occupy (address _occupant,uint _value);
        address payable public owner;
        
        constructor(){
            owner = payable (msg.sender);
            currentStatus = Statuses.Vacant;    
        }

        modifier onlyWhileVacant {
            require(currentStatus == Statuses.Vacant ,"Currently occupied.");
             _;
        }

         modifier costs(uint _amount) {
            require(msg.value >= _amount ,"Not enough ether provided.");
            _;

        }

        function bookroom() public payable onlyWhileVacant costs  (2 ether)  {
            currentStatus = Statuses.Occupied;    

            owner.transfer(msg.value);
            (bool sent,bytes memory data) = owner.call{value:msg.value}("");
            emit Occupy(msg.sender, msg.value);
        }





}