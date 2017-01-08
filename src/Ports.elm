port module Ports exposing (hostClock, pushPath, path, rsvpResizer)


port hostClock : (Int -> msg) -> Sub msg


port pushPath : String -> Cmd msg


port path : (String -> msg) -> Sub msg


port rsvpResizer : String -> Cmd msg
