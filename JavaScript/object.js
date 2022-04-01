// Objects
// one of the JavaScript's data types.
// a collection of related data and/or functionality.
// Nearly all objects in JavaScript are instances of Objects.
// object = {key : value};
const obj1 = {}; // 'object literal' syntax
const obj2 = new Object(); // 'object constructor' syntax

// 1. Literals and properties
const name = 'sungil';
const age = 4; 
print(name, age);
function print(person) {
    console.log(person.name);
    console.log(person.age);
}

const sungil = {name: 'sungil', age : 29};
print(sungil);

// with JavaScript magic (dynamically typed language)
// can add properties later

sungil.hasJob = true;
console.log(sungil.hasJob);

delete sungil.hasJob;
console.log(sungil.hasJob);

// 2. Computed properties
// key should be always string
console.log(sungil.name);
console.log(sungil['name']);
sungil['hasJob'] = true;
console.log(sungil.hasJob);

function printValue(obj, key) {
    console.log(obj[key]);
}
printValue(sungil, 'name');
printValue(sungil, 'age');

// 3. Property value shorthand
const person1 = {name: 'bob', age : 20};
const person2 = {name: 'steve', age : 30};
const person3 = {name: 'dave', age : 25};
const person4 = Person('sungil', 30);


// 4. Constructor function
function Person(name, age) {
    // this = {};
    this.name = name;
    this.age = age;
    // return this;
}

console.log(person4)

// 5. in operator : property existence check (key in obj)
console.log('name' in sungil);
console.log('age' in sungil);
console.log('random' in sungil);
console.log(sungil.random);

// 6. for..in vs for..of
// for (key in obj)
console.clear();
for(key in sungil){
    console.log(key);
}

// for (value of iterable)
const array = [1,2,3,4,5];
for(let i = 0; i < array.length; i++){
    console.log(array[i]);
}
for(value of array) {
    console.log(value);
}

// 7. Fun cloning
// Object.assign(dest, [obj1, obj2, obj3 ...])

const user = {name : 'sungil', age : '30'};
const user2 = user;
user2.name = 'coder';
console.log(user);

// old way
const user3 = {};
for (key in user) {
    user3[key] = user[key];
}
console.clear();
console.log(user3);

const user4 = Object.assign({}, user);
console.log(user4);

// another example
const fruit1 = { color : 'red'};
const fruit2 = { color : 'blue', size : 'big'};
const mixed = Object.assign({}, fruit1, fruit2);
console.log(mixed.color);
console.log(mixed.size);