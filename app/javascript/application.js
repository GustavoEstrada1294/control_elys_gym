import "jquery";
import "jquery-ui-dist";
import "jqtree";

console.log(window.$);   // jQuery is already global
console.log($.ui);       // jquery-ui initialized on import
console.log($().tree);   // jqtree also initialized