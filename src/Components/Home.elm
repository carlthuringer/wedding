module Components.Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)
import Update exposing (Model)
import Messages exposing (Msg)


view : Model -> Html Msg
view model =
    div [ class "flex column" ]
        [ h1 [ class "center-auto" ] [ text "Carl & Nicole" ]
        , div [ class "wedding-colors center-auto" ]
            [ div [ class "rose-gold" ] []
            , div [ class "peach" ] []
            , div [ class "serenity-blue" ] []
            , div [ class "medium-grey" ] []
            ]
        , p [ class "center-auto" ]
            [ CountDown.view model.countDown
            , text " Until they get married!"
            ]
        ]
