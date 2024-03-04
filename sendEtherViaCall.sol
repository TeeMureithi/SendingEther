// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract receiveEther{
    receive() external payable { }

    function getBalance () public view returns(uint) {
       return address(this).balance;
    }
}

contract sendEther{

    function sendViaCall (address payable _to ,uint amount ) public payable {

       (bool sent, bytes memory data) =  _to.call{value:amount}("");
    }

    //the empty argument triggers the fallback function of the receiving address
    //one can also send a fixed amount of gas to execute the function

    
}