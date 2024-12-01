This is a combination of exploring math and exploring lisp
programming, with an emphasis on exploration. What an amazing language
for working with math! The interactivity is killer.

I take wrong turns, and crazily explore a lot. While exploring, I
wrote a function for finding all the triples of primes that add to an
integer n. I wanted to use applicatives. The algorithm:

1. Use a prime sieve to find the prime candidates.

2. Combine these primes using a three-way cartesian product. To get
'((2 3 5) (2 3 7) ...)

3. Remove duplicates using set-equal. (2 3 5) is set-equal to (5 3 2).

4. Remove the sets that don't sum to n, as well as removing any sets
where all of the elements of the sets weren't unique.

It WORKED! It was so great thinking this high level, absolutely
intuitive. Built the functions that were needed for this prime triplet
finding mega machine. (I didn't optimize any of the functions that it
used for performance, I don't care about performance at the moment -
Well I do, but quick is quick enough).

It produced the correct result for n = 21 very quickly. Yay! Go me!!
n = 100 in about 1 second. n = 1000, well I gave up after about 5
minutes of execution. I have no idea how long it would have taken. The
cartesian product exploded with combinations.

I went back to the drawing board. Did the same thing with nested do
loops. Calculated the prime triples for n = 1000 in a fraction of a
second. Embrace the multiple paradigms.

But this is science, this is math, this is exploration, this is
algorithms, this is learning, this is hacking, this is lisp, this is
fun.

Have some of your own fun with lisp.

PS: This guy is crazy.
