module Components.Gallery exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Messages exposing (Msg)
import Photos exposing (toImg, engagement)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Gallery" ]
        , div [ class "gallery" ]
            [ toImg engagement.cn49
            , toImg engagement.cn11
            , toImg engagement.cn37
            , toImg engagement.cn7
            , toImg engagement.cn4
            , toImg engagement.cn41
            , toImg engagement.cn
            , toImg engagement.cn72
            , toImg engagement.cn85
            ]
        ]
