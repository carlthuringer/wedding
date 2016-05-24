module Routing exposing (..)

import Html exposing (Html, a, text)
import Html.Attributes exposing (href)
import Html.Events exposing (onWithOptions)
import Json.Decode as Json
import Route exposing (..)
import Routes exposing (Sitemap(..), homeR)
import Messages exposing (Msg(..))

link : Sitemap -> String -> Html Msg
link route label =
    let
        opts =
            { preventDefault = True
            , stopPropagation = False
            }
    in
        a
            [ href (doRoute route)
            , onWithOptions "click" opts (Json.succeed <| RouteTo route)
            ]
            [ text label ]


doRoute : Sitemap -> String
doRoute r =
  case r of
    HomeR () ->
      reverse homeR []

