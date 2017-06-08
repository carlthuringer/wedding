module Components.Home exposing (view)

import Html exposing (..)
import Html.Attributes as HtmlA
import CountDown exposing (view)
import Update exposing (Model)
import Messages exposing (Msg)
import Photos exposing (toImg, engagement)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))
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
            [ CountDown.view model.countDown ]
        , p [ class [ CenterAuto ] ]
            [ text "Please "
            , link model.route RSVPR "RSVP"
            , text " by May 5th. The last day to "
            , link model.route TravelAndAccomodationR "book your hotel room"
            , text " is Friday, May 5th."
            ]
        ]
