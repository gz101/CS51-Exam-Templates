type node = string ;;
type edge = node * node * int ;;

let edges = [
  ("a", "b", 5); ("a", "c", 3); ("a", "d", 7);
  ("b", "e", 1); ("c", "f", 4); ("d", "e", 2);
  ("e", "f", 3); ("e", "g", 6)
] ;;

(* ---- Reachable components. ---- *)
let rec neighbors (target : node) (edges : edge list) : node list = 
  let matching (src, _dst, _value) = src = target in 
  List.map (fun (_src, dst, _value) -> dst) 
           (List.filter matching edges) ;; 

(* dfs -- Using a stack. *)
let rec dfs (edges : edge list) 
            (visited : node list) 
            (frontier : node list) 
          : node list = 
  match frontier with 
  | [] -> List.rev visited 
  | hd :: tl -> 
      if List.mem hd visited then 
        dfs edges visited tl 
      else 
        dfs edges (hd :: visited) ((neighbors hd edges) @ tl) ;;

(* bfs -- Using a queue. *)
let rec bfs (edges : edge list) 
            (visited : node list) 
            (frontier : node list) 
          : node list = 
  match frontier with 
  | [] -> List.rev visited 
  | hd :: tl -> 
      if List.mem hd visited then 
        dfs edges visited tl 
      else 
        dfs edges (hd :: visited) (tl @ (neighbors hd edges)) ;;

(* ---- Path cost ---- *)
let rec neighbors (target, cost : node * int) 
                  (edges : edge list) 
                : (node * int) list = 
  let matching (src, _dst, _value) = src = target in 
  List.map (fun (_src, dst, value) -> dst, value + cost) 
           (List.filter matching edges) ;; 

(* dfs -- Using a stack. *)
let rec dfs (edges : edge list) 
            (visited : node list) 
            (frontier : (node * int) list) 
            (target : node)
          : int = 
  match frontier with 
  | [] -> raise Not_found
  | (dst, weight) as hd :: tl -> 
      if target = dst then weight
      else if List.mem dst visited then 
        dfs edges visited tl target
      else 
        dfs edges (dst :: visited) ((neighbors hd edges) @ tl) target ;;

(* bfs -- Using a stack. *)
let rec bfs (edges : edge list) 
            (visited : node list) 
            (frontier : (node * int) list) 
            (target : node)
          : int = 
  match frontier with 
  | [] -> raise Not_found
  | (dst, weight) as hd :: tl -> 
      if target = dst then weight
      else if List.mem dst visited then 
        dfs edges visited tl target
      else 
        dfs edges (dst :: visited) (tl @ (neighbors hd edges)) target ;;
