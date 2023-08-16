open Exercises

let palindrome l = List.rev l = l

let () =
  let r = palindrome [ "x"; "a"; "m"; "a"; "x" ] in
  Output.print Bool.to_string r
