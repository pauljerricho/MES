'use strict';

//Synchronous callback
function printImmediately(print){
    print();
}

//Asynchronous callback
function printWithDelay(print, timeout){
    setTimeout(print, timeout);
}
//JavaScript is synchronous.
//Excute the code block by orger after hoisiting.
//hoisting: var, function declaration.

console.log('1'); // ①
setTimeout(() => console.log('2'), 1000); // ② 비동기 빼놓고 -> 마지막 실행
console.log('3'); // ③
printImmediately(()=> console.log('hello')); // ④
printWithDelay(()=>console.log('async callback'), 2000); // ⑤

// Callback Hell example
class UserStorage {
    loginUser(id, password, onSuccess, onError){
        setTimeout(()=>{
            if(
                (id === 'sungil' && password === 'dream') ||
                (id === 'coder' && password === 'academy')
            ){
                onSuccess(id)
            } else {
                onError(new Error('NOT FOUND!'));
            }
        },2000);
    }

    getRoles(user, onSuccess, onError){
        setTimeout(()=>{
            if(user === 'sungil'){
                onSuccess({ name : 'sungil', role: 'admin'});
            } else {
                onError(new Error('no access'));
            }
        },1000);
    }
}

const userStorage = new UserStorage();
const id = prompt('enter your id');
const password = prompt('enter your password');
userStorage.loginUser(
    id, 
    password, 
    user => {
        userStorage.getRoles(
            user, 
            (userWithRole)=>{
                alert(`Hello ${userWithRole.name}, you have a ${userWithRole.role} role`)
            }, 
            (error)=>{
                console.log(error)
            }
        );

},
error => console.log(error)
);
//Shortage of Callback Chain
//Complexed Logic