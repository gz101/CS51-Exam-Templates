(* 
 * Set cheatsheet
 * Immutable set, tree based.
 *)

(* Create a set. *)
module MySet = 
  Set.Make (
      struct
        type t = int * string
        let compare (i, _) (j, _) = 
          Int.compare i j 
      end
  ) ;;

let s = MySet.empty ;;

(* Check if empty. *)
let is_empty = MySet.is_empty s ;;

(* Set membership. *)
let is_member elt = MySet.mem elt s ;;

(* Add elt to set. *)
let s = MySet.add (1, "hello") s ;;
let s = MySet.add (99, "there") s ;;

(* Create singleton set. *)
let s' = MySet.singleton (2, "hi") ;;

(* Remove elt from set. *)
let s = MySet.remove (1, "hello") s ;;

(* Set union. *)
let s_comb = MySet.union s s' ;;

(* Set intersection. *)
let s_inter = MySet.inter s_comb s ;;

(* Test if sets are disjoint. *)
let is_disjoint = MySet.disjoint s_comb s ;;

(* Elements in s and not in s'. *)
let d = MySet.diff s s' ;;

(* Set equality. *)
let is_equal = MySet.equal s s' ;;

(* Is s a subset of s'? *)
let is_subset = MySet.subset s s' ;;

(* Count of set. *)
let n = MySet.cardinal s ;;

(* Convert to elt list. *)
let elist = MySet.elements s ;;

(* Map over elements in set. *)
let smapped = MySet.map (fun (i, s) -> (i + 1, s)) s ;;

(* Fold (right) over elements in set. *)
let sfold = MySet.fold (fun (i, _s) acc -> acc + i) s 0 ;;

(* Iterate over all elts in set. *)
MySet.iter (fun (i, s) -> Printf.printf "%d: %s\n" i s) s ;;

(* Check if elt exists in s. *)
let is_preset = MySet.exists (fun (i, s) -> i > 0 && String.length s > 2) s ;;

(* Filter by predicate. *)
let sfiltered = MySet.filter (fun (i, _s) -> i < 5) s ;;

(* Find elt in set. *)
let eltopt = MySet.find_opt (1, "hello") s ;; 

(* Set searching -- for_all, min_elt_opt, 
   max_elt_opt *)
