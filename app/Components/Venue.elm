module Components.Venue (..) where

import Html exposing (..)
import Html.Attributes exposing (style, width, height, attribute, src)
import Models exposing (Model)


-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2985.4279945435705!2d-87.50520228392293!3d41.55998077924856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8811e0638984d1c5%3A0xc75da4bbc1bab9a1!2sCenter+For+Visual+%26+Performing+Arts!5e0!3m2!1sen!2sus!4v1463348007804" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>


view : Model -> Html
view model =
  div
    []
    [ h1 [] [ text "Munster Center for Visual and Performing Arts" ]
    , iframe
        [ src "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2985.4279945435705!2d-87.50520228392293!3d41.55998077924856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8811e0638984d1c5%3A0xc75da4bbc1bab9a1!2sCenter+For+Visual+%26+Performing+Arts!5e0!3m2!1sen!2sus!4v1463348007804"
        , width 600
        , height 450
        , attribute "frameborder" "0"
        , attribute "allowfullscreen" "true"
        , style [ ( "border", "0" ) ]
        ]
        []
    , table
        []
        [ tr [] [ td [] [ text "1040 Ridge Rd" ] ]
        , tr [] [ td [] [ text "Munster, IN 46321" ] ]
        , tr [] [ td [] [ text "(219) 836-1930" ] ]
        ]
    ]
