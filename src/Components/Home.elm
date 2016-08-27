module Components.Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)
import Update exposing (Model)
import Messages exposing (Msg)
import Photos exposing (toImg, engagement)

view : Model -> Html Msg
view model =
    div [ class "flex column" ]
        [ h1 [ class "center-auto pacifico" ] [ text "Carl & Nicole" ]
        , div [ class "wedding-main center-auto" ]
            [ toImg engagement.cn19 ]
        , p [ class "center-auto" ]
            [ CountDown.view model.countDown
            , text " Until they get married!"
            ]
        ]
