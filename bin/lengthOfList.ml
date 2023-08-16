open Lib

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t

let () =
  let l = length [ "a"; "b"; "c" ] in
  Output.print string_of_int l
