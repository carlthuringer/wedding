module Common.View exposing (..)

import Html exposing (Html, a, text)
import Html.Attributes as HtmlA
import Html.Events exposing (onWithOptions)
import Json.Decode as Json
import Routes exposing (Sitemap)
import Messages exposing (Msg(RouteTo))
import Stylesheets.Main exposing (CssClasses(..), cssHelpers)


{ id, class, classList } =
    cssHelpers


link : Sitemap -> Sitemap -> String -> Html Msg
link currentRoute toRoute label =
    let
        opts =
            { preventDefault = True
            , stopPropagation = False
            }
    in
        a
            [ HtmlA.href (Routes.doRoute toRoute)
            , onWithOptions "click" opts (Json.succeed <| RouteTo toRoute)
            , classList [ ( Active, currentRoute == toRoute ) ]
            ]
            [ text label ]
