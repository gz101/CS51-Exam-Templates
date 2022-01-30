type node = string ;;
type edge = node * node * int ;;

let edges = [
  ("a", "b", 5); ("a", "c", 3); ("a", "d", 7);
  ("b", "e", 1); ("c", "f", 4); ("d", "e", 2);
  ("e", "f", 3); ("e", "g", 8)
] ;;

let rec neighbors (target : node) (edges : edge list) : node list = 
  let matching (src, dst, _value) = src = target in 
  List.map (fun (_src, dst, _value) -> dst) 
           (List.filter matching edges) ;; 

let rec dfs (edges : edge list) 
            (visited : node list) 
            (frontier : node list) 
            (target : node)
          : node list = 
  match frontier with 
  | [] -> List.rev visited 
  | hd :: tl -> 
      if hd = target then 
        List.rev (hd :: visited)
      else if List.mem hd visited then 
        dfs edges visited tl target
      else 
        dfs edges (hd :: visited) ((neighbors hd edges) @ tl) target ;;

