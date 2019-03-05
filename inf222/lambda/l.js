let log = (...v) => console.log(...v);

let und = n => undefined;

let fact = f => (n => n == 0 ? 1 : n*f(n-1));

log(und(3));
log(fact(und)(3));
log(fact(fact(und))(3));
log(fact(fact(fact(und)))(3));
log(fact(fact(fact(fact(fact(und)))))(3));


let Y0 = f => f(Y0(f));
let Y1 = f => f(x => Y1(f)(x));
let Y2 = f => (x => f(x(x))) (x => f(x(x)));
let Y = f => (x => f(v => x(x)(v))) (x => f(v => x(x)(x)));
//let factorial = Y0(fact);
let factorial = Y2(fact);

log(factorial(3));

let fibo = Y(f => (n => (n <= 1) ? 1 : f(n-1) + f(n-2) ));

log([1,2,3,4,5,6,7,8].map(fibo));
