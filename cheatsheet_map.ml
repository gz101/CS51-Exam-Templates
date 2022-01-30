(* 
 * Map cheatsheet
 * Immutable map, tree based.
 *)

(* Create a map with K : int. *)
module MyMap = Map.Make (Int) ;;

let m = MyMap.empty ;;

(* Check if map empty. *)
let is_empty = MyMap.is_empty m ;;

(* Add mapping to map. *)
let m = MyMap.add 1 "hello" m ;;
let m = MyMap.add 2 "world" m ;;

(* Map membership. *)
let is_member = MyMap.mem 1 m ;;

(* Update mapping for K in m. *)
let m = 
  let f x = 
    match x with 
    | None -> None 
    | Some v -> Some (v ^ "!") in 
  MyMap.update 2 f m ;;

(* Create singleton map. *)
let m' = MyMap.singleton 3 "there" ;;

(* Remove mapping from map. *)
let m = MyMap.remove 2 m ;;

(* Compare maps. *)
let is_equal = MyMap.equal (fun x y -> x = y) m m' ;;

(* Iterate over bindings. *)
MyMap.iter (fun k v -> Printf.printf "%d: %s" k v) m ;;

(* Fold over map. *)
let v = MyMap.fold (fun _k _v acc -> acc) m 0. ;;

(* Check if k, v mapping exists. *)
let is_present = MyMap.exists (fun k _v -> k > 0) m ;;

(* Filter out elements. *)
let fmap = MyMap.filter (fun k _v -> k > 0) m ;;

(* Number of elts in map. *)
let n = MyMap.cardinal m ;;

(* Map over elements in map. *)
let mmapped = MyMap.map (fun v -> v ^ "!") m ;;

(* Map searching -- find_opt (by k), for_all *)
