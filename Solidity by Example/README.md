# Soldidity by Example version 0.8.10
https://solidity-by-example.org/

## Hello World
pragma specifies the compiler version of Solidity.

[HelloWorld.sol](https://github.com/yilin0830/Solidity_Practice/blob/main/Solidity%20by%20Example/HelloWorld.sol)

## First Application
Here is a simple contract that you can get, increment and decrement the count store in this contract.

[Counter.sol](https://github.com/yilin0830/Solidity_Practice/blob/main/Solidity%20by%20Example/Counter.sol)

## Primitive Data Types
Here we introduce you to some primitive data types available in Solidity.

* boolean
* uint
* int
* address

[Primitives.sol](https://github.com/yilin0830/Solidity_Practice/blob/main/Solidity%20by%20Example/Primitives.sol)

## Variables
There are 3 types of variables in Solidity

* local
    * declared inside a function
    * Znot stored on the blockchain
* state
    * declared outside a function
    * stored on the blockchain
* global (provides information about the blockchain)

[Variables.sol]()

## Constants
Constants are variables that cannot be modified.

Their value is hard coded and using constants can save gas cost.

## Immutable
Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

[]()

## Reading and Writing to a State Variable
To write or update a state variable you need to send a transaction.

On the other hand, you can read state variables, for free, without any transaction fee.

[]()


## Ether and Wei
Transactions are paid with ether.

Similar to how one dollar is equal to 100 cent, one ether is equal to 10^18 wei.

[]()


## Gas
How much ether do you need to pay for a transaction?
You pay gas spent * gas price amount of ether, where

* gas is a unit of computation
* gas spent is the total amount of gas used in a transaction
* gas price is how much ether you are willing to pay per gas
Transactions with higher gas price have higher priority to be included in a block.

Unspent gas will be refunded.

Gas Limit
There are 2 upper bounds to the amount of gas you can spend

* gas limit (max amount of gas you're willing to use for your transaction, set by you)
* block gas limit (max amount of gas allowed in a block, set by the network)

[]()


## If / Else
Solidity supports conditional statements if, else if and else.

[]()


## For and While Loop
Solidity supports for, while, and do while loops.

Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.

For the reason above, while and do while loops are rarely used.

[]()

## Mapping
Maps are created with the syntax mapping(keyType => valueType).

keyType can be value types such as uint, address or bytes.

valueType can be any type including another mapping or an array.

Mappings are not iterable.

[]()

## Array
Array can have a compile-time fixed size or a dynamic size.

[]()

### Examples of removing array element
Remove array element by shifting elements from right to left

[]()

Remove array element by copying last element into to the place to remove

[]()

## Enum
Solidity supports enumerables and they are useful to model choice and keep track of state.

Enums can be declared outside of a contract.

[]()

### Declaring and importing Enum
File that the enum is declared in []()
File that imports the enum above []()

