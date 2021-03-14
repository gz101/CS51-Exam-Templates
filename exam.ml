(*
                             CS51 Exam Template
                           Mid-Terms Spring 2021
*)

(*=============================================================================
Author: Gabriel Chiong

Templates
---------

1. Module - COMPARABLE

   module type COMPARABLE = 
     sig
       type t
       val compare : t -> t -> int 
     end ;;
  
   module CInt : COMPARABLE with type t = int = 
     struct 
       type t = int 
       let compare = Stdlib.compare 
     end ;;

2. Module - ArrayList

   module type SORTED_ALIST = 
     sig 
       exception EmptyList
       exception NotFound
       type elt
       type arraylist
       val empty : arraylist
       val add : elt -> arraylist -> arraylist
       val remove : elt -> arraylist -> arraylist
       val smallest : arraylist -> elt
     end ;; 
  
   module MakeAList (Elt : COMPARABLE) : (SORTED_ALIST with type elt = Elt.t) =
     struct
       exception EmptyList
       exception NotFound
       
       type elt = Elt.t
       type arraylist = elt list
       
       let empty = []
       let rec add e l = 
         match l with 
         | [] -> [e]
         | hd :: tl -> 
             let comp = Elt.compare e hd in 
             if comp < 0 then e :: l
             else hd :: add e tl
       let rec remove e l = 
         match l with 
         | [] -> raise EmptyList
         | hd :: tl -> 
             let comp = Elt.compare e hd in 
             if comp < 0 then raise NotFound
             else if comp = 0 then tl
             else hd :: remove e tl
       let smallest l = 
         match l with 
         | [] -> raise EmptyList
         | hd :: _ -> hd
     end ;; 
  
   module IntAList = MakeAList (CInt) ;;

...............................................................................
Question 1 - Description
.............................................................................*)

let question1 _ =
  failwith "not yet implemented" ;;

(*.............................................................................
Question 2 - Description
.............................................................................*)

let question2 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 3 - Description
.............................................................................*)

let question3 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 4 - Description
.............................................................................*)

let question4 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 5 - Description
.............................................................................*)

let question5 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 6 - Description
.............................................................................*)

let question6 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 7 - Description
.............................................................................*)

let question7 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 8 - Description
.............................................................................*)

let question8 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 9 - Description
.............................................................................*)

let question9 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 10 - Description
.............................................................................*)

let question10 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 11 - Description
.............................................................................*)

let question11 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 12 - Description
.............................................................................*)

let question12 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 13 - Description
.............................................................................*)

let question13 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 14 - Description
.............................................................................*)

let question14 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 15 - Description
.............................................................................*)

let question15 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 16 - Description
.............................................................................*)

let question16 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 17 - Description
.............................................................................*)

let question17 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 18 - Description
.............................................................................*)

let question18 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 19 - Description
.............................................................................*)

let question19 _ = 
  failwith "not yet implemented" ;;

(*.............................................................................
Question 20 - Description
.............................................................................*)

let question20 _ = 
  failwith "not yet implemented" ;;
