module Main exposing (..)

import Html.App as App
import Ports exposing (hostClock, path)
import View exposing (view)
import Update exposing (Flags, update, init)
import Messages exposing (Msg(PathChanged, TimeUpdate, WindowResize))
import Window


main : Program Flags
main =
    App.programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions =
            \_ ->
                Sub.batch
                    [ path PathChanged
                    , hostClock TimeUpdate
                    , Window.resizes WindowResize
                    ]
        }
