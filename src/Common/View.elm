module Common.View exposing (..)

import Html exposing (Html, a, text)
import Html.Attributes exposing (href)
import Html.Events exposing (onWithOptions)
import Json.Decode as Json
import Routes exposing (Sitemap)
import Messages exposing (Msg(RouteTo))


link : Sitemap -> String -> Html Msg
link route label =
    let
        opts =
            { preventDefault = True
            , stopPropagation = False
            }
    in
        a
            [ href (Routes.doRoute route)
            , onWithOptions "click" opts (Json.succeed <| RouteTo route)
            ]
            [ text label ]
