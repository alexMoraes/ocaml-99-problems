open Exercises

let removeAt index l =
  let rec aux current acc = function
    | [] -> acc
    | h :: t ->
        let next = current - 1 in
        if current = index then
          aux next acc t
        else
          aux next (h :: acc) t
  in
  aux (List.length l - 1) [] (List.rev l)

let solution_to_string = String.concat ", "

let () =
  let r = removeAt 1 ["a"; "b"; "c"; "d"] in
  Output.print solution_to_string r
