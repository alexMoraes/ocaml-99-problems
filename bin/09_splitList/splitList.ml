open Exercises

let split l n =
  let rec aux left right count = function
    | [] -> (left, right)
    | h :: t ->
        if count <= 0 then
          aux (h :: left) right 0 t
        else
          aux left (h :: right) (count - 1) t
  in
  aux [] [] (List.length l - n) (List.rev l)

let solution_to_string (left, right) =
  "(" ^ String.concat ", " left ^ "; " ^ String.concat ", " right ^ ")"

let () =
  let r = split ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3 in
  Output.print solution_to_string r
