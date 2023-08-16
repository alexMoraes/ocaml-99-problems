open Lib

let rec last l =
  match l with
    | [] -> None
    | h :: [] -> Some h
    | _ :: t -> last t

let () =
  let a = last [ "a"; "b"; "c"; "d" ] in
  Output.print_option (fun a -> a) a
