let rec loop () =
  let _ = String.make 256 '\000' in
  let _ = Gc.full_major () in
  Unix.sleepf 0.1;
  print_endline "Work!";
  flush_all ();
  loop ()

let () = loop ()
