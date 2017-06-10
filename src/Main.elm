module Main exposing (..)

import Html
import Ports exposing (path)
import View exposing (view)
import Update exposing (Flags, update, init)
import Messages exposing (Msg(PathChanged, WindowResize))
import Window


main : Program Flags Update.Model Msg
main =
    Html.programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions =
            \_ ->
                Sub.batch
                    [ path PathChanged
                    , Window.resizes WindowResize
                    ]
        }
