class EmberApp.Exercise extends DS.Model
  #github_user_id: DS.attr('number')
  name: DS.attr('string')
  kata_details: DS.attr('string')

EmberApp.Exercise.FIXTURES = [
  {
    id: 1000
    name: "Fizz Buzz"
    kata_details: """Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”

Details:
   http://c2.com/cgi/wiki?FizzBuzzTest"""
  },{
    id: 1001
    name: "Roman Numerals"
    kata_details: "http://codingdojo.org/cgi-bin/wiki.pl?KataRomanNumerals"
  }
]
