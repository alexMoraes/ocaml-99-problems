open Exercises

let rec range fromInt toInt =
  if fromInt = toInt then
    [fromInt]
  else
    fromInt :: range (fromInt + 1) toInt

let solution_to_string l = String.concat ", " (List.map Int.to_string l)

let () =
  let r = range 4 9 in
  Output.print solution_to_string r
