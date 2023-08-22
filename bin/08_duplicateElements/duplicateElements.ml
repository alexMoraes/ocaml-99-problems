open Exercises

let duplicate l =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: h :: acc) t
  in
  aux [] (List.rev l)

let solution_to_string = String.concat ", "

let () =
  let r = duplicate ["a"; "b"; "c"; "c"; "d"] in
  Output.print solution_to_string r
