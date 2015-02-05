@javascript_array = [
{
  question: "What will '(function() { var a = b = 5;})();
  console.log(b);' print to the console?",
  answer: "The code prints 5",
  difficulty: 1
},
{
  question: "Define a repeatify function on the String object.
  The function accepts an integer that specifies how many times the string has to be repeated.
  The function returns the string repeated the number of times specified.
  'console.log('hello'.repeatify(3));'' should print 'hellohellohello'",
  answer: "String.prototype.repeatify = String.prototype.repeatify || function(times) {
   var str = '';
   for (var i = 0; i < times; i++) {
      str += this;
   }
   return str;
};",
  difficulty: 2
}
]

@ruby_array = [
]

