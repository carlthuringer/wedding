module Components.Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)
import Update exposing (Model)
import Messages exposing (Msg)
import Photos exposing (toImg, engagement)
import Markdown exposing (toHtml)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))


view : Model -> Html Msg
view model =
    div [ class "flex column" ]
        [ h1 [ class "center-auto pacifico" ] [ text "Nicole & Carl" ]
        , div [ class "wedding-main center-auto" ]
            [ toImg engagement.cn19 ]
        , p [ class "center-auto" ]
            [ CountDown.view model.countDown
            , text " Until they get married!"
            ]
        , p [ class "center-auto" ]
            [ text "Please "
            , link model.route RSVPR "RSVP"
            , text " by May 5th. The last day to "
            , link model.route TravelAndAccomodationR "book your hotel room"
            , text " is Friday, May 5th."
            ]
        ]
