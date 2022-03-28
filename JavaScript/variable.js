// JavaScript is very flexible
// flexible === dangerous
// added ECMAScript 5
// Modern Coding Vanila Coding
'use strict';
console.log(age);
// 2. Variable, rw(read/write)
// let (added in ES6)
let globalName = 'global name';
{
    let name = 'jerricho';
    console.log(name);
    name = "hello";
    console.log(name);
    console.log(globalName);
}
console.log(name);
console.log(globalName);

// var (don't ever use this)
// var hoisting (move declration from bottom to up)
{
    age = 4;
    var age;
}
console.log(age);

// 3. Constant, r(read only!)
// use const whenever possible.
// only use let if variable needs to change


const daysInWeek = 7;
const maxNumber = 5;

// NOTE!
// Immutable data types : primitive types, frozen objects (i.e. object.freeze())
// Mutable data types : all objects by default are mutable in JS

// favor immutable data type always for a few reasons:
// - security
// - thread safety
// - reduce human mistakes



// 4. Variable types
// primitive, single item : number, string, boolean, null, undefiedn, symbol
// object, box container
// function, first-class function

const count = 17; //integer
const size = 17.1; //decimal number
console.log(`value: ${count}, type: ${typeof count}`)
console.log(`value: ${size}, type: ${typeof size}`)

// number - special numeric values: infinity, -infinity, NaN
const infinity = 1/0;
const negativeInfinity = -1/0;
const nAn = 'not a number' / 2;
console.log(infinity);
console.log(negativeInfinity);
console.log(nAn);

// bigInt (fairly new, don't use it yet)
const bigInt = 12328473284723847328473284782394723894732;
console.log(`value : ${bigInt}, type : ${typeof bigInt}`);

// string
const char = 'c';
const brendan = 'brendan';
const greeting = 'hello' + brendan;
console.log(`value : ${greeting}, type : ${typeof greeting}`);
const helloBob = `hi ${brendan}!`; //template literals(string)
console.log(`value : ${helloBob}, type : ${typeof helloBob}`);
console.log('value : ' + helloBob + 'type: '+ typeof helloBob);

// boolean
// false : 0, null, undefined, NaN, ''
// true : any other value
const canRead = true;
const test = 3 < 1; // false
console.log(`value : ${canRead}, type: ${typeof canRead}`);
console.log(`value : ${test}, type : ${typeof test}`);

// null
let nothing = null;
console.log(`value : ${nothing}, type : ${nothing}`);

// undefined
let x;
console.log(`value : ${x}, type : ${typeof x}`);

// symbol, create unique identifiers for objects
const symbol1 = Symbol('id');
const symbol2 = Symbol('id');
console.log(symbol1 === symbol2);
const gSymbol1 = Symbol.for('id');
const gSymbol2 = Symbol.for('id');
console.log(gSymbol1 === gSymbol2); //true
console.log(`value : ${symbol1.description}, type : ${typeof symbol1.description}`)

// object, real-life object, data structure
const sungil = {name : 'sungil', age : 30};
sungil.age = 20;

// 5. Dynamic Typing : dynamically typed language
let text = 'Hello';
console.log(text.charAt(0));
console.log(`value : ${text}, type : ${typeof text}`);
text = 1;
console.log(`value : ${text}, type : ${typeof text}`);
text = '7' + 5;
console.log(`value : ${text}, type : ${typeof text}`);
text = '8' / '4';
console.log(`value : ${text}, type : ${typeof text}`);




