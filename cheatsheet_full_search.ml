module Graph = 
  struct
    type node = string 
    type edge = node * node ;;

    module NodeSet = 
      Set.Make (
        struct 
          type t = node 
          let compare = String.compare
        end
      ) ;;

    module EdgeSet = 
      Set.Make (
        struct
          type t = edge
          let compare (x1, y1) (x2, y2) = 
            if x1 = x2 && y1 = y2 then 0
            else (Hashtbl.hash (x1, y1)) + (Hashtbl.hash (y1, y2))
        end 
      ) ;;

    type graph = {nodes : NodeSet.t; edges : EdgeSet.t} ;;

    let frontier = Queue.create () ;; (* for BFS *)
    (* let frontier = Stack.create () ;; (* for DFS *) *)

    let create_graph (elist : edge list) : graph = 
      let update_graph (nset, eset) ((src, dst) as edge) = 
        (NodeSet.add src (NodeSet.add dst nset)), (EdgeSet.add edge eset) in
      let nodes, edges = 
        List.fold_left (update_graph) (NodeSet.empty, EdgeSet.empty) 
                       elist in 
      {nodes; edges} ;;
    
    let neighbors (edges : EdgeSet.t) 
                  (n : node) 
                  (visited : NodeSet.t)
                : unit = 
      let add_node (src, dst) = 
        if src = n && not (NodeSet.mem dst visited) then 
          Queue.add dst frontier
        else () in 
      EdgeSet.iter add_node edges ;;

    let solve (start : node) 
              (target : node) 
              ({nodes; edges} : graph) 
            : node list = 
      failwith "not implemented yet" ;;

    let print_graph_as_list ({nodes; edges} : graph) : unit = 
      let print_nodes () = 
        NodeSet.iter (Printf.printf "%s ") nodes in 
      let print_edges () = 
        EdgeSet.iter (fun (src, dst) -> Printf.printf "%s-%s " src dst) 
                     edges in 
      Printf.printf "Nodes: \n";
      print_nodes ();
      Printf.printf "\nEdges: \n";
      print_edges ();
      Printf.printf "\n" ;;
  end ;;

let _ = 
  let edge_list = [
    ("a", "b"); ("a", "c"); ("a", "d"); ("b", "e");
    ("c", "f"); ("d", "e"); ("e", "f"); ("e", "g")
  ] in 
  Graph.create_graph edge_list 
  |> Graph.print_graph_as_list ;;
