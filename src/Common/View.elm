module Common.View exposing (..)

import Html exposing (Html, a, text)
import Html.Attributes exposing (href, classList)
import Html.Events exposing (onWithOptions)
import Json.Decode as Json
import Routes exposing (Sitemap)
import Messages exposing (Msg(RouteTo))


link : Sitemap -> Sitemap -> String -> Html Msg
link currentRoute toRoute label =
    let
        opts =
            { preventDefault = True
            , stopPropagation = False
            }
    in
        a
            [ href (Routes.doRoute toRoute)
            , onWithOptions "click" opts (Json.succeed <| RouteTo toRoute)
            , classList [("active", currentRoute == toRoute)]
            ]
            [ text label ]
