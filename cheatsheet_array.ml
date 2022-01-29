(* 
 * Array cheatsheet
 * Mutable, 0-indexed arrays.
 *)

(* Create new array with 5 elts initialized to `a`. *)
let arr = Array.make 5 "a" ;;

(* No. elts in array. *)
let n = Array.length arr ;;

(* Array indexing. *)
let entry = Array.get arr 0 ;;

(* Array index update. *)
Array.set arr 0 "b" ;;

(* Initialize array with values from function. *)
let arr' = Array.init 5 (string_of_int) ;;

(* Append 2 arrays (cannot be more than max arr length in system). *)
let arr_combined = Array.append arr arr' ;;

(* Append list of arrays. *)
let list_of_arr = Array.concat [arr; arr'] ;;

(* Sub-array from pos to pos + len - 1. *)
let sub = Array.sub arr 0 3 ;;

(* Convert between list and arrays. *)
let lst = Array.to_list arr ;;
let converted_arr = Array.of_list lst ;;

(* ITERATORS -- work the same as List module. *)
(* SEARCHING -- work the same as List module. *)
(* SORTING -- work the same as List module. *)