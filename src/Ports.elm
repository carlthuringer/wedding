port module Ports exposing (hostClock)

port hostClock : (Int -> msg) -> Sub msg
