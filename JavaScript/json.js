//Json
//simplest data interchanging format
//easy to read
//key - value pairs
//used for serialization and transmission of data between the network
//the network connection
//independent programming language and platform

//JavaScript Object Notation
//1. Object to JSON
//stringify(obj)
let json = JSON.stringify(true);
console.log(json);

json = JSON.stringify(['apple','banana']);
console.log(json);

const rabbit = {
    name : 'dori',
    color : 'white',
    size : null,
    birthDate : new Date(),
    jump : () => {console.log(`${name} can jump!`);
},
};
json = JSON.stringify(rabbit);
console.log(json);
json = JSON.stringify(rabbit, ["name",'color']); //Selected Property
console.log(json);
json = JSON.stringify(rabbit, (key,value) => {
    console.log(`key : ${key}, value: ${value}`);
    return key === 'name' ? 'sungil' : value; //Name is Sungil
});
console.log(json);

//2. JSON to Object
//parse(json)
console.clear();
json = JSON.stringify(rabbit);
const obj = JSON.parse(json, (key, value) => {
    console.log(`key : ${key}, value: ${value}`);
    return key === 'birthDate' ? new Date(value) : value;
});
console.log(obj);
rabbit.jump();
//obj.jump(); Error

console.log(rabbit.birthDate.getDate());
console.log(obj.birthDate.getDate()); 