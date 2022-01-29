(* 
 * Hashtbl cheatsheet
 * Hashed association tables (mutable)
 *)

(* They automatically resize so init size not important. *)
let ht = Hashtbl.create 1 ;;

(* Make a copy ht. *)
let ht2 = Hashtbl.copy ht ;;

(* Add entry to Hashtbl. Args: ht -> K -> V *)
Hashtbl.add ht 222 "hello" ;;
Hashtbl.add ht 333 "there" ;;
Hashtbl.add ht2 111 "world" ;;

(* Search ht for single K and return Some V or None. *)
let v = Hashtbl.find_opt ht 222 ;;
let v' = Hashtbl.find_opt ht 1 ;;

(* Search ht for all K's and return list of hits. *)
let vlst = Hashtbl.find_all ht 222 ;;

(* Check if K exists and return bool. *)
let is_present k = Hashtbl.mem ht k ;;

(* Remove K, V from ht. *)
Hashtbl.remove ht2 111 ;;

(* Replace K, V in ht. *)
Hashtbl.replace ht 222 "hi" ;;

(* Iterate over ht. UB if ht is modified. *)
Hashtbl.iter (fun _k _v -> ()) ht ;;

(* Map over ht. Replaces V with new value, but if None then 
   discarded. *)
Hashtbl.filter_map_inplace (fun _k _v -> Some "h") ht ;;

(* Fold (right) over ht. *)
Hashtbl.fold (fun _k _v acc -> acc) ht true ;;

(* Items in ht. *)
Hashtbl.length ht ;;

(* Clear (and resize) ht. *)
Hashtbl.clear ht2 ;;
Hashtbl.reset ht2 ;;
