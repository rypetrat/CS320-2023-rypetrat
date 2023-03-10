(* ****** ****** *)
(*
Assign01: Onward!
*)
(* ****** ****** *)
use "./assign01-lib.sml";
(* ****** ****** *)

datatype 'a xlist =
xlist_nil
|
xlist_cons of ('a * 'a xlist)
|
xlist_snoc of ('a xlist * 'a)
|
xlist_append of ('a xlist * 'a xlist)
|
xlist_reverse of ('a xlist)

(* ****** ****** *)

fun
list_of_xlist(xs: 'a xlist): 'a list =
(
case xs of
xlist_nil => []
|
xlist_cons(x1, xs) => x1 :: list_of_xlist(xs)
|
xlist_snoc(xs, x1) => list_of_xlist(xs) @ [x1]
|
xlist_append(xs, ys) => list_of_xlist(xs) @ list_of_xlist(ys)
|
xlist_reverse(xs) => list_reverse(list_of_xlist(xs))
)

(* ****** ****** *)

(*
//
Assign01-01: 10 points
//
Please implement a function
that computes the length of an xlist DIRECTLY:
//
fun xlist_len(xs: 'a xlist): int
//
That is, you should NOT convert xlist into list
and then compute the length of the converted list
//
*)

(* ****** ****** *)

(*
//
Assign01-02: 10 points
//
Please implement a function
that does subscripting on xlist DIRECTLY:
//
fun xlist_sub(xs: 'a xlist, i0: int): 'a
//
If 'i0' is an illegal index, then xlist_sub
should raise the Subscript exception.
//
You should NOT convert xlist into list
and then compute the length of the converted list
//
*)

(* ****** ****** *)

(*
//
Assign01-03: 10 points
//
Please implement a function that converts a given
xlist 'xs' into another xlist 'ys' by removing the
constructor 'mylist_reverse':
//
fun xlist_remove_reverse(xs: 'a xlist): 'a xlist
//
In particular, your implementation should guarantee:
1. 'xs' and 'ys' represent the same list
2. 'ys' does NOT make any use of 'mylist_reverse'
3. 'xs' and 'ys' use the same number of 'mylist_append'
//
*)
  
(* ****** ****** *)

(*
//
Assign01-04: 20 points
//
Please implement a function that checks DIRECTLY
if a given int xlist is sorted/ordered ascendingly:
//
fun xlist_sortedq(xs: int xlist): bool
//
You should NOT convert xlist into list
and then check whether the converted list is sorted.
//
*)
  
(* ****** ****** *)

(*
//
Assign01-05: 20 points
//
// The permutations of 0,1,2 can be ordered
// according to the lexicographic ordering as follows:
//
// (0,1,2) < (0,2,1) < (1,0,2) < (1,2,0) < (2,0,1) < (2,1,0)
//
// This ordering can be readily generalized to the permutations
// of n numbers, which n is positive. Given a permutation xs of
// the first n natural numbers, next_permuation(xs) returns the next
// permutation following xs if it exists, and None0() otherwise.
//
// examples:
//
// permute_next_exn( [1,0,2] ) = [1,2,0]
// permute_next_exn( [2,1,0] ) = raise(LastPermExn)
// permute_next_exn( [2,10,3,8,4,1,0,6,9,7,5] ) = [2,10,3,8,4,1,0,7,5,6,9]
//
// permute_next_opt( [1,0,2] ) = Some0( [1,2,0] )
// permute_next_opt( [2,1,0] ) = None0()
// permute_next_opt( [2,10,3,8,4,1,0,6,9,7,5] ) = Some0( [2,10,3,8,4,1,0,7,5,6,9] )
//
*)
(*
//
exception LastPermExn
//
fun
permute_next_exn(xs: int list): int list
//
fun
permute_next_opt(xs: int list): (int list) optn
//
*)

(* ****** ****** *)

(* end of [CS320-2023-Spring-assign01.sml] *)
