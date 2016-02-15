We were only just about to complete the singly linked list.
 - I time boxed an extra 20 mins to finish this up on the train home :)

list
====
  - @head
    - this could either be a nil on init or a node when intial node was added.

node
====
 - @pointer:Array(Integer)
   - This actually turned out to be implicitly done for us, since
     ruby is pass by reference the pointers would just become adrress
     references tot he next node
     i.e  - {data: "first", pointer: {data: "second", pointer: node+1}}
 - @data


Things we learn't:
==================

- How awesome vim is!
- BDD and unit testing aids in applying the devide and conquer principle.
- Pairing with people from different technical backgrounds was more
  enightenning that it was actually scary!
- Start simple and build your tests from there.


NB - Refactoring was not kept in mind.
     Might be a challenge to do this with another language
     and adhere to the  - Think, Test, Red, Green, REFACTOR basics.

To run tests:
Please install Ruby(2.x.x) and RSpec(3.x.x) and then cd to the root of this folder and run:

`rspec --color --format=documentation`
