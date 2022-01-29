(* 
 * Stack cheatsheet
 * Mutable stack. Use for DFS.
 * Exn `Empty`
 *)

(* Create stack. *)
let s = Stack.create () ;;

(* Push elt. *)
Stack.push 1 s ;;
Stack.push 2 s ;;
Stack.push 3 s ;;

(* Pop elt with option type (or can use pop). *)
let elt = Stack.pop_opt s ;;

(* Top elt with option type (or can use top). *)
let elt' = Stack.top_opt s ;;

(* Return copy of stack. *)
let s2 = Stack.copy s ;;

(* Check if empty. *)
let is_empty = Stack.is_empty s ;;

(* Number of elts in stack. *)
let n = Stack.length s ;;

(* Iterate over stack elts. *)
Stack.iter (fun _elt -> ()) s ;;

(* Fold (left) over stack. *)
let v = Stack.fold (fun acc _elt -> acc) 0 s ;;

(* Remove all elts from stack. *)
Stack.clear s ;;
