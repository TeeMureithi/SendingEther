// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEther{

    receive() external payable { }

    //this is executed when a contract receives ether along with a call to function that does not exist in the contract or if no data is supplied with the transcation.

    function getBalance() public view returns (uint) {
        return address(this).balance;

        //the this value is used to define the contract itself
    }

}

contract sendEther{
    receive() external payable { }

    function sendViaTransfer( address payable _to, uint amount) public payable {
            //everytime time you have the type address and money is involved, one must make it payable
            _to.transfer(amount);
            //_to refers to where the money is being sent
            //transfer is a method used to send ether
            //amount allows the user to input the amount of etehr they want to send
            //msg.value sends all the money in the account
    
    }

}