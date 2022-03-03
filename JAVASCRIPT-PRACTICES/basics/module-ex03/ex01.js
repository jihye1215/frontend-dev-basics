var math = require("./math");

console.log(math.PI);
console.log(math.max(10, 20));
console.log(math.min(10, 20));

/**
 * require에서는 exports를 사용 O
 * module.exports 사용 X
 * 
 * 예) 
 * require = function(module) {
 *    module.exports = {};           O
 *    exports = module.exports;       X
 * }
 */