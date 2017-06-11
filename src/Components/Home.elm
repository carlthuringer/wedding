module Components.Home exposing (view)

import Html exposing (..)
import Update exposing (Model)
import Messages exposing (Msg)
import Photos exposing (toImg, engagement)
import Stylesheets.Main exposing (CssIds(..), CssClasses(..), cssHelpers)


{ id, class, classList } =
    cssHelpers


view : Model -> Html Msg
view model =
    div [ class [ Flex, Column ] ]
        [ h1 [ class [ Pacifico, CenterAuto ] ] [ text "Nicole & Carl" ]
        , div
            [ id [ HeadlineImage ]
            , class [ CenterAuto ]
            ]
            [ toImg engagement.cn19 ]
        , p [ class [ CenterAuto ] ]
            [ text "Were Married June 3, 2017 at 5:09pm!" ]
        ]
