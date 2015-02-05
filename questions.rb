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
  difficulty: 3
},
{
  question: "What is the result of the following code? 'function printing() {
   console.log(1);
   setTimeout(function() { console.log(2); }, 1000);
   setTimeout(function() { console.log(3); }, 0);
   console.log(4);
}
printing();' Explain your answer.",
  answer: "Output: 1 4 3 2. ",
  difficulty: 1
},
{
  question: "Write an isPrime() function that returns true if a number is prime and false otherwise.",
  answer: "function isPrime(number) {
   // If your browser doesn't support the method Number.isInteger of ECMAScript 6,
   // you can implement your own pretty easily
   if (typeof number !== 'number' || !Number.isInteger(number)) {
      // Alternatively you can throw an error.
      return false;
   }

   if (number < 2) {
      return false;
   }

   if (number === 2) {
      return true;
   } else if (number % 2 === 0) {
      return false;
   }

   var squareRoot = Math.sqrt(number);
   for(var i = 3; i <= squareRoot; i += 2) {
      if (number % i === 0) {
         return false;
      }
   }

   return true;
}",
  difficulty: 3
},
{
  question: "Define a spacify function which takes a string as an argument, and returns the same string but with each character separated by a space. EX: spacify('hello world') // => 'h e l l o  w o r l d'",
  answer: "function spacify(str) {
  return str.split('').join(' ');
}",
  difficulty: 2
},
{
  question: "Define a spacify function which takes a string as an argument, and returns the same string but with each character separated by a space. EX: spacify('hello world') // => 'h e l l o  w o r l d'",
  answer: "function spacify(str) {
  return str.split('').join(' ');
}",
  difficulty: 2
},
{
  question: "Create a for loop that iterates up to 100 while outputting 'fizz' at multiples of 3, 'buzz' at multiples of 5 and 'fizzbuzz' at multiples of 3 and 5",
  answer: "console.log(
Array.apply(0, Array(100)).map(function (x, y) {
    var nb = y+1;
    var isFizz = ((nb % 3) == 0);
    var isBuzz = ((nb % 5) == 0);
    var isFizzBuzz = (isFizz && isBuzz);

    if (isFizzBuzz) return 'fizzbuzz';
    if (isFizz) return 'fizz';
    if (isBuzz) return 'buzz';
    return(nb);

}).join('\n'));",
  difficulty: 2
},
{
  question: "What is the difference between == and ===",
  answer: "‘==’ evaluates equality of the value, while ‘===’ evaluates  equality of type and value.",
  difficulty: 1
},
{
  question: "What is the  difference between window.onload and the jQuery $(document).ready() method?",
  answer: "The window.onload method occurs after all the page elements have loaded(HTML, CSS, images), which can result in a delay. The $(document).ready() method begins to run code as soon as the Document Object Model (DOM) is loaded, which should be faster and less prone to loading errors across different browsers.",
  difficulty: 1
},
{
  question: "Explain the meaning of  the keyword ‘this’ in JavaScript functions",
  answer: "The keyword ‘this’ in JavaScript refers to the object that a function is a method of. If it’s not specified, it will default to the global object, the window.",
  difficulty: 1
},
{
  question: "What does a timer do and how would you implement one?",
  answer: "Setting timers allows you to execute your code at predefined times or intervals.This can be achieved through two main methods: setInterval(); and setTimeout(); This can be achieved through two main methods: setInterval(); and setTimeout(); setTimeout() also accepts a function, followed by milliseconds. setTimeout() will only execute the function once after the specified amount of time, and will not reoccur in intervals.",
  difficulty: 2
},
{
  question: "Explain the HTML DOM and its relevance to JavaScript",
  answer: "The Document Object Model allows JavaScript to obtain information about a page and manipulate it by adding or removing HTML elements, or by altering their attributes.  The DOM can be viewed as a programming interface for HTML, whereby you can access and alter its structure, attributes, styles, and events. According to Mozilla Developer Network (MDN), “The DOM provides a representation of the document as a structured group of nodes and objects that have properties and methods. Essentially, it connects web pages to scripts or programming languages.”",
  difficulty: 1
},
{
  question: "What is the result of “20” + 20;",
  answer: "2020",
  difficulty: 1
},
{
  question: "How do you install/use jQuery in a project. What is the minimum setup needed to start using jQuery.",
  answer: "script tag, linked to a jquery CDN or locally hosted file.",
  difficulty: 1
},
{
  question: "What is method chaining in jQuery? Provide an example. What advantages does it offer?",
  answer: "Method chaining is a feature of jQuery that allows several methods to be executed on a jQuery selection in sequence in a single code statement. With chaining, the button only needs to be selected one time, whereas without chaining, jQuery must search the whole DOM and find the button before each method is applied. Thus, in addition to yielding more concise code, method chaining in jQuery offers a potentially powerful performance advantage.",
  difficulty: 2
},
{
  question: "What is the difference between jQuery.get() and jQuery.ajax()?",
  answer: "jQuery.ajax() is the all-encompassing Ajax request method provided by jQuery. It allows for the creation of highly-customized Ajax requests, with options for how long to wait for a response, how to handle a failure, whether the request is blocking (synchronous) or non-blocking (asynchronous), what format to request for the response, and many more options. jQuery.get() is a shortcut method that uses jQuery.ajax() under the hood, to create an Ajax request that is typical for simple retrieval of information. Other pre-built Ajax requests are provided by jQuery, such as jQuery.post(), jQuery.getScript(), and jQuery.getJSON().",
  difficulty: 2
},
{
  question: "Explain what the following code does: $( 'div' ).css( 'width', '300px' ).add( 'p' ).css( 'background-color', 'blue' );",
  answer: "This code uses method chaining to accomplish a couple of things. First, it selects all the <div> elements and changes their CSS width to 300px. Then, it adds all the <p> elements to the current selection, so it can finally change the CSS background color for both the <div> and <p> elements to blue.",
  difficulty: 1
},
{
  question: "What’s the deal with the $ in jQuery? What is it and what does it mean? Also, how can jQuery be used in conjunction with another JavaScript library that also uses $ for naming? ",
  answer: "Since $ has no special meaning in JavaScript, it is free to be used in object naming. In jQuery, it is simply used as an alias for the jQuery object and jQuery() function. However, jQuery has no monopoly on use of $, so you may encounter situations where you want to use it in conjunction with another JS library that also uses $, which would therefore result in a naming conflict. jQuery provides the jQuery.noConflict() method for just this reason. Calling this method makes it necessary to use the underlying name jQuery instead in subequent references to jQuery and its functions.",
  difficulty: 2
},
{
  question: "Explain and contrast the usage of event.preventDefault() and event.stopPropagation(). Provide an example.",
  answer: "event.stopPropagation() stops an event from bubbling up the event chain, whereas event.preventDefault() only precludes the browser’s default action on that event from occurring, but the event still propogates up the event chain. Due to the call to stopPropagation() in the button’s click handler, the event never propogates to the div so its click handler never fires. It effectively stops parent elements from knowing about an event on their children. In contrast, if you replaced the above call to stopPropagation() with a call to preventDefault(), only the browser’s default action would be precluded, but the div’s click handler would still fire. (Note: Although the stopPropagation() and preventDefault() methods are mostly used in jQuery event handling implementations, they apply to plain JavaScript as well.)",
  difficulty: 2
}
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },

]

@ruby_array = [
{
  question: "Give 2 different ways to do the following: Create a for loop that iterates up to 100 while outputting 'fizz' at multiples of 3, 'buzz' at multiples of 5 and 'fizzbuzz' at multiples of 3 and 5",
  answer: "WAY 1: (1..100).each do |number|
  fizz = number % 3 == 0
  buzz = number % 5 == 0
  print 'Fizz' if fizz
  print 'Buzz' if buzz
  print number if !fizz && !buzz
  print '\n'
end  &
WAY 2: def fizzbuzz(number)
    divisibleBy3 = (number % 3 == 0)
    divisibleBy5 = (number % 5 == 0)

    case
        when divisibleBy3 && divisibleBy5
            puts 'FizzBuzz'
        when divisibleBy3
            puts 'Fizz'
        when divisibleBy5
            puts 'Buzz'
        else
            puts number
    end
end

(1..100).each {|n| fizzbuzz n}",
  difficulty: 2
},
{
  question: "Explain how (almost) everything is an object in Ruby",
  answer: "This is a simple question based on complex concept. Here’s your chance to show off your theoretical knowledge and demonstrate that you can have an in depth conversation on class hierarchies, inheritance, methods, encapsulation, polymorphism, and more. Explaining this could take an hour or a few minutes – there’s no single correct answer here, save from being able to demonstrate your familiarity with OOP concepts.",
  difficulty: 1
},
{
  question: "What is the difference between a class and a module?",
  answer: " A module cannot be subclassed or instantiated, and modules can implement mixins. Be prepared to discuss what this actually means in real life, and when you would use a module vs. a class and why.",
  difficulty: 1
},
{
  question: "How and when would you declare a Global Variable",
  answer: "Global variables are declared with the ‘$’ symbol and can be declared and used anywhere within your program. You should use them sparingly to never.",
  difficulty: 1
},
{
  question: "How would you create getter and setter methods in Ruby",
  answer: "Setter and getter methods in Ruby are generated with the attr_accessor method. attr_accessor is used to generate instance variables for data that’s not stored in your database column. They can also be created manually through methods.",
  difficulty: 1
},
{
  question: "Describe the difference between class and instance variables",
  answer: "Class variables are created with the prefix ‘@@’ and are shared by all objects in a class. Instance variables are created with the prefix ‘@’ and belong to a single object within a class. describe an example of a class and how you would use class and instance variables within it, and how they relate to issues of class inheritance.",
  difficulty: 1
},
{
  question: "Inheritance versus composition: Which one should you choose?",
  answer: "Make sure inheritance models the is-a relationship My main guiding philosophy is that inheritance should be used only when a subclass is-a superclass. In the example above, an Apple likely is-a Fruit, so I would be inclined to use inheritance.
  An important question to ask yourself when you think you have an is-a relationship is whether that is-a relationship will be constant throughout the lifetime of the application and, with luck, the lifecycle of the code. For example, you might think that an Employee is-a Person, when really Employee represents a role that a Person plays part of the time. What if the person becomes unemployed? What if the person is both an Employee and a Supervisor? Such impermanent is-a relationships should usually be modelled with composition.
  Don't use inheritance just to get code reuse If all you really want is to reuse code and there is no is-a relationship in sight, use composition.
  Don't use inheritance just to get at polymorphism If all you really want is polymorphism, but there is no natural is-a relationship, use composition with interfaces.",
  difficulty: 3
},
{
  question: "Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:
  { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
  should result in: ['abc', '4567', 'another_key']",
  answer: "The most straightforward answer would be of the form:
  hsh.keys.map(&:to_s).sort_by(&:length)
  or:
  hsh.keys.collect(&:to_s).sort_by { |key| key.length }",
  difficulty: 3
},
{
  question: "What is the difference between calling super and calling super()?",
  answer: "A call to super invokes the parent method with the same arguments that were passed to the child method. An error will therefore occur if the arguments passed to the child method don’t match what the parent is expecting.
  A call to super() invokes the parent method without any arguments, as presumably expected. As always, being explicit in your code is a good thing.",
  difficulty: 2
},
{
  question: "What is CSRF? How does Rails protect against it?",
  answer: "CSRF stands for Cross-Site Request Forgery. This is a form of an attack where the attacker submits a form on your behalf to a different website, potentially causing damage or revealing sensitive information. Since browsers will automatically include cookies for a domain on a request, if you were recently logged in to the target site, the attacker’s request will appear to come from you as a logged-in user (as your session cookie will be sent with the POST request).
  In order to protect against CSRF attacks, you can add protect_from_forgery to your ApplicationController. This will then cause Rails to require a CSRF token to be present before accepting any POST, PUT, or DELETE requests. The CSRF token is included as a hidden field in every form created using Rails’ form builders. It is also included as a header in GET requests so that other, non-form-based mechanisms for sending a POST can use it as well. Attackers are prevented from stealing the CSRF token by browsers’ “same origin” policy.",
  difficulty: 2
},
{
  question: "What is unit testing (in classical terms)? What is the primary technique when writing a test?",
  answer: "Unit testing, simply put, is testing methods -- the smallest unit in object-oriented programming. Strong candidates will argue that it allows a developer to flesh out their API before it's consumed by other systems in the application. The primary way to achieve this is to assert that the actual result of the method matches an expected result.",
  difficulty: 2
}
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },

]

@other_array = [
{
  question: "Explain the purpose of each of the HTTP request types when used with a RESTful web service.",
  answer: "The purpose of each of the HTTP request types when used with a RESTful web service is as follows:

GET: Retrieves data from the server (should only retrieve data and should have no other effect).
POST: Sends data to the server for a new entity. It is often used when uploading a file or submitting a completed web form.
PUT: Similar to POST, but used to update an existing entity.
DELETE: Removes data from the server.
TRACE: Provides a means to test what a machine along the network path receives when a request is made. As such, it simply returns what was sent.
OPTIONS: Allows a client to request information about the request methods supported by a service. The relevant response header is Allow and it simply lists the supported methods. (It can also be used to request information about the request methods supported for the server where the service resides by using a * wildcard in the URI.)
HEAD: Same as the GET method for a resource, but returns only the response headers (i.e., with no entity-body).
CONNECT: Primarily used to establish a network connection to a resource (usually via some proxy that can be requested to forward an HTTP request as TCP and maintain the connection). Once established, the response sends a 200 status code and a “Connection Established” message.",
  difficulty: 2
},
{
  question: "What are three ways to reduce page load time?",
  answer: "Reduce image sizes, remove unnecessary widgets, HTTP compression, put CSS at the top and script references at the bottom or in external files, reduce lookups, minimize redirects, caching, etc",
  difficulty: 2
},
{
  question: "What is “Semantic HTML?",
  answer: "Semantic HTML is a coding style where the tags embody what the text is meant to convey. In Semantic HTML, tags like <b></b> for bold, and <i></i> for italic should not be used, reason being they just represent formatting, and provide no indication of meaning or structure. The semantically correct thing to do is use <strong></strong> and <em></em>. These tags will have the same bold and italic effects, while demonstrating meaning and structure (emphasis in this case)",
  difficulty: 1
},
{
  question: "What does HTML stand for and what is it?",
  answer: "HTML stands for HyperText Markup Language. It is the dominant markup language for creating websites and anything that can be viewed in a web browser. If you want to get some extra bonus points, you can learn the history of HTML and throw in some obscure facts",
  difficulty: 1
},
{
  question: "What does DOCTYPE mean?",
  answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
  difficulty: 1
},
{
  question: "Describe the difference between cookies, sessionStorage, and localStorage",
  answer: "Cookies are small text files that websites place in a browser for tracking or login purposes. Meanwhile, localStorage and sessionStorage are new objects, both of which are storage specifications but vary in scope and duration. Of the two, localStorage is permanent and website-specific whereas sessionStorage only lasts as long as the duration of the longest open tab.",
  difficulty: 1
},
{
  question: "Explain a polymorphic association in a database structure",
  answer: "Polymorphic associations allow a model to belong to more than one other model through a single association. IE. the class Picture belongs_to both Employee and Product, but does so through a single association rather than through multiple. In rails this would look like-- Picture belongs_to :imageable, polymorphic: true & Employee has_many :pictures, as: :imageables (Product would look the same as Employee)",
  difficulty: 3
},
{
  question: "What is a Proc?",
  answer: "Procs, short for procedures, act similar to blocks, but can be saved as variables and reused. Think of them as blocks you can call over and over again on multiple arrays.",
  difficulty: 2
}
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },
# {
#   question: "What does DOCTYPE mean?",
#   answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page. Failing to use DOCTYPE or using a wrong DOCTYPE may load your page in Quirks Mode",
#   difficulty: 1
# },

]
