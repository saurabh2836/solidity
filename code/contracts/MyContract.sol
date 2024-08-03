

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;


contract MyContract {
              //State Variables  
        //     int  public myUint = 1;
        //     uint256 public myUint256  =1;
        //     uint public myUnit8 =1;

        //     string public myString = " Hello, world !";
        //     bytes32 public myBytes32 ="Hello , world !";

        //   //  address public myAddress = 0xC02AAsddsASDSDSDSDSDSDSD;

        //     struct MyStruct {

        //         uint256 myUint256;
        //         string myString;
        //     }



        //     MyStruct public mystruct = MyStruct(1,"Hello, world");

        //     function getValue() public pure returns(uint)  {

        //         uint value =1;

        //         return value;
        //     }

        //     // Arrays
        //     uint[] public uintArray = [1,2,3];  
        //     string[] public stringArray = ["apple","banana","carrot"];
        //     string[] public value1;
        //     uint256[][] public array2dD =[[1 ,2 ,3],[4, 5, 6]];


        //     function addValue(string memory _value) public {
        //         value1.push(_value);
        //     }


        //     function valueCount() public view returns(uint) {
        //         return value1.length;
        //     }



            // mapping(uint => string) public myMapping;


            // mapping(uint => Book) public books;   

            // mapping(address => mapping(uint =>Book)) public myBooks;

            //     struct Book {
            //         string title;
            //         string author;
            //     }

            // constructor () {
            //     myMapping[0] ="Saurabh";
            //     myMapping[1] ="Bhagwan";
            //     myMapping[2] ="Kamble";
            // }


            // function addBooks(uint _id,
            //                 string memory _title,
            //                 string memory _author) 
            // public {

            //     books[_id] =Book(_title,_author);


            // }

            // function addMyBook(uint _id,
            //                 string memory _title,
            //                 string memory _author) 
            // public {

            //     myBooks[msg.sender][_id] =Book(_title,_author);

            // }


            //conditionals
            //Loops


                uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
                address public owner;

                constructor(){
                    owner = msg.sender;
                }

                function countEvenNumbers() public view returns (uint){

                     uint count = 0;

                     for(uint i =0 ; i < numbers.length;i++){
                        if(isEvenNumber(numbers[i])){
                            count++;
                        }
                     }   
                    return count;
                }

                function isEvenNumber(uint _number) public view returns(bool){
                    if(_number %2 == 0){
                            return true;    
                    }else{
                            return false;
                    }       
                }

                function isOwner() public view returns(bool){
                    return(msg.sender == owner);
                }


}