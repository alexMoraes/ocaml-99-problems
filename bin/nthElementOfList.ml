open Lib

let rec nth n = function
  | [] -> None
  | h :: t -> if n <= 0 then Some h else nth (n - 1) t

let () =
  let n = nth 2 [ "a"; "b"; "c"; "d"; "e" ] in
  Output.print_option (fun a -> a) n