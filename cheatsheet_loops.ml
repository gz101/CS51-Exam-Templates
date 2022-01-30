(* 
 * Loops cheatsheet
 *)

(* Driver. *)
let _ = 
  (* For loop inclusive of 0 and 10. *)
  for i = 0 to 10 do 
    print_endline ((string_of_int i) ^ ": hello")
  done;

  (* While loop inclusive of 0 and 10. *)
  let i = ref 0 in 
  while !i <= 10 do 
    print_endline ((string_of_int !i) ^ ": hello");
    i := !i + 1
  done ;;