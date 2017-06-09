port module Ports exposing (pushPath, path)


port pushPath : String -> Cmd msg


port path : (String -> msg) -> Sub msg
