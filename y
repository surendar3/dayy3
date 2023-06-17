//2.)
  let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
                one.map((a)=>console.log(a.flag))

            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
//3.//
  let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
                one.map(({name:{official},region,subregion,population})=>console.log(`name: ${official},region:${region},subregion:${subregion},population:${population}`))

            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
///1.

let obj1={name:"person1",age:5};
let obj2={age:5,name:"person1"}

var isequal=(o,b)=>{
    let key1=Object.keys(o);
    let key2=Object.keys(b);
    return key1.length === key2.length && Object.keys(o).every(key=>o[key]==b[key]);
}
console.log(isequal(obj1,obj2))
