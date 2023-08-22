open Exercises

let rec insertAt index e = function
  | [] -> []
  | h :: t ->
      if index = 0 then
        e :: h :: t
      else
        h :: insertAt (index - 1) e t

let solution_to_string = String.concat ", "

let () =
  let r = insertAt 1 "alpha" ["a"; "b"; "c"; "d"] in
  Output.print solution_to_string r
