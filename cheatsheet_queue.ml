(* 
 * Queue cheatsheet
 * Mutable queue. Use for BFS.
 * Exn `Empty` and not thread safe.
 *)

(* Create a queue. *)
let q = Queue.create () ;;

(* Add (or push) elt into queue. *)
Queue.push 1 q ;;

(* Take with opt (or can use take/pop). *)
let elt = Queue.take_opt q ;;

(* Peek first elt (or can use peek/top). *)
let elt = Queue.peek_opt q ;;

(* Make new copy of queue. *)
let q2 = Queue.copy q ;;

(* Check if queue is empty. *)
let is_empty = Queue.is_empty q ;;

(* Number of elts in queue. *)
let n = Queue.length q ;;

(* Iterate over elts in queue. *)
Queue.iter (fun _elt -> ()) q ;;

(* Fold (left) over queue. *)
let v = Queue.fold (fun acc _elt -> acc) 0 q ;;

(* Transfer elts from q1 to end of q2. *)
Queue.transfer q q2 ;;

(* Clear contents. *)
Queue.clear q ;;