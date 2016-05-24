port module Ports exposing (hostClock, pushPath, path)

port hostClock : (Int -> msg) -> Sub msg

port pushPath : String -> Cmd msg

port path : (String -> msg) -> Sub msg
