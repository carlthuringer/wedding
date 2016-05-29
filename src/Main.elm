module Main exposing (..)

import Html exposing (Html, div, h1, text, p)
import Html.App as App
-- import CountDown
import Navigation
import Routes exposing (Sitemap(..))
import Ports exposing (pushPath, path)
import View exposing (view)
import Update exposing (Flags, Msg(PathChanged), update, init)



main : Program Flags
main =
    App.programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions =
            \_ -> Sub.batch [ path PathChanged ]
        }
