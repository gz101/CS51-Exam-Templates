(*
                             CS51 Exam Template
                     Mid-Terms Spring 2021 -- Testing
*)

open Exam ;;

open CS51Utils ;;
open Absbook ;;

(*=============================================================================
Author: Gabriel Chiong

Templates
---------

1. unit_test

   -- If function returns value:

      unit_test (questionX _ = _) "question X test 1";

   -- If function returns bool:

      unit_test (questionX _) "question X test 1";

   -- If function returns exception:

      unit_test (try let _ = questionX _ in 
                   false
                 with 
                 | Exception1 _ -> true
                 | _ -> false) "question X test 1";
   

2. unit_test_within
   
   -- If function returns float:
      
      unit_test_within 0.001 (questionX _) correct_ans "question X test 1";

   -- If function returns float option:

      unit_test_within 0.001 
                       (match questionX _ with
                        | Some v -> v
                        | _ -> min_float) 
                       (correct_ans)
                       "question X test 1";

.............................................................................*)

let question1_test () = 

  (* Test run -- delete for exam *)
  unit_test (true) "testing 1";
  unit_test (try let _ = question1 () in 
               false
             with 
             | Failure _ -> true
             | _ -> false) "testing 2";
  (* End of test run *)

  (* My tests here: *)
  

  () ;;

let question2_test () = 
  
  () ;;

let question3_test () = 
  
  () ;;

let question4_test () = 
  
  () ;;

let question5_test () = 
  
  () ;;

let question6_test () = 
  
  () ;;

let question7_test () = 
  
  () ;;

let question8_test () = 
  
  () ;;

let question9_test () = 
  
  () ;;

let question10_test () = 
  
  () ;;

let question11_test () = 
  
  () ;;

let question12_test () = 
  
  () ;;

let question13_test () = 
  
  () ;;

let question14_test () = 
  
  () ;;

let question15_test () = 
  
  () ;;

let question16_test () = 
  
  () ;;

let question17_test () = 
  
  () ;;

let question18_test () = 
  
  () ;;

let question19_test () = 
  
  () ;;

let question20_test () = 
  
  () ;;

let test_all () = 
  question1_test ();
  question2_test ();
  question3_test ();
  question4_test ();
  question5_test ();
  question6_test ();
  question7_test ();
  question8_test ();
  question9_test ();
  question10_test ();
  question11_test ();
  question12_test ();
  question13_test ();
  question14_test ();
  question15_test ();
  question16_test ();
  question17_test ();
  question18_test ();
  question19_test ();
  question20_test ();

  () ;;

let _ = test_all () ;;