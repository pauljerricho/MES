// Function
// - fundmental building block in the program
// - subprogram can be used multiple times
// - performs a task or calculates a value

// 1. Function declaration
// function name(param1, param2) { body ... return; }
// one function == one thing
// naming : doSomething, command, verb
// e.g. createCardAndPoint -> createCard, createPoint
// function is object in JS
"use strict";
function printHello() {
    console.log('Hello');
}
printHello();

function log(message) {
    console.log(message);
}

log('Hello@');
log(1234);

//TypeScript

// 2. Parameters
// premitive parameters : passed by value
// object parameters : passed by reference
function changeName(obj) {
    obj.name = 'coder';
}
const sungil = { name: 'sungil' };
changeName(sungil);
console.log(sungil);

// 3. Default parameters (added in ES6)
function showMessages(message, from = 'unknown') {
    console.log(`${message} by ${from}`)
}
showMessages('Hi!');

// 4. Rest parameters (added in ES6)
function printAll(...args) {
    for(let i = 0; i < args.length; i++) {
        console.log(args[i]);
    }
    
printAll('dreams','come','true');
for(const arg of args) {
    console.log(arg);
}
args.array.forEach((arg) => console.log(arg));
}
// 5. Local scope
let globalMessage = 'global'; // global variable
function printMessage() {
    let message = 'hello';
    console.log(message); // local variable
    console.log(globalMessage);
    function printAnother() {
        console.log(message);
        let childMessage = 'hello';
    }
    //console.log(childMessage); 부모는 자식의 성질을 볼 수 없다.
}
printMessage();

// 6. Return a value
function sum(a, b) {
    return a + b;
}
const result = sum(1,2); // 3
console.log(`sum: ${sum(1,2)}`);

// 7. Early return, early exit
// bad
function upgradeUser(user){
    if(user.point > 10) {
        // long upgrade logic...
    } 
}

// good
function upgradeUser(user){
    if(user.point <= 10) {
        return;
    } 
}

//First-class function
//functions are treated like any other variable
//can be assigned as a value to variable
//can be passed as an argument to other functions.
//can be returned by another function

// 1. Function expression
// a function declaration can be called earlier than it is defined.(hoisted)
// a function expression is created when the execution reaches it.
const print = function(){
    //anonymous function
    console.log('print');
};
print();
const printAgain = print;
printAgain();
const sumAgain = sum;
console.log(sumAgain(1,2));

// 2. Callback function using function expression
function randomQuiz(answer, printYes, printNo) {
    if(answer === 'love you') {
        printYes();
    } else {
        printNo();
    }
}
const printYes = function() {
    console.log('yes!');
};

// named function
// better debugging in debugger's stack traces
// recursions

const printNo = function print() {
    console.log('no!');
}
randomQuiz('wrong',printYes,printNo);
randomQuiz('love you',printYes,printNo);

// Arrow function
// always anonymous

const simplePrint = () => console.log('simplePrint!');
const add = (a,b) => a + b;
const simpleMultiply = (a,b) => {
// do more something
   return a * b;
}

// IIFE : Immediately Invoked Function Expression
(function hello() {
    console.log('IIFE');
})();

// Fun quiz time
// function calculate(command, a, b)
// command: (add, substract, multiply, remainder)

function calculate(command, a, b) {
    switch(command){
        case 'add':
            return a + b;
        case 'substract':
                return a - b;
        case 'multiply':
            return a * b;
        case 'divide':
            return a % b;
        default :
            throw Error('Unknown Command');
    }
}
console.log(calculate('multiply',2,3));
console.log(calculate('divide',2,0));
