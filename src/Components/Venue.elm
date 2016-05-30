module Components.Venue exposing (view)

import Html exposing (..)
import Html.Attributes exposing (style, width, height, attribute, src)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Center for Visual and Performing Arts" ]
        , h2 [] [ text "Travel Info" ]
        , p [] [ text "Parking is available for free onsite at the Center for Visual and Performing Arts. Click on the link in the map below for specific directions to the venue." ]
        , iframe
            [ src "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2985.4279945435705!2d-87.50520228392293!3d41.55998077924856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8811e0638984d1c5%3A0xc75da4bbc1bab9a1!2sCenter+For+Visual+%26+Performing+Arts!5e0!3m2!1sen!2sus!4v1463348007804"
            , width 600
            , height 450
            , attribute "frameborder" "0"
            , attribute "allowfullscreen" "true"
            , style [ ( "border", "0" ) ]
            ]
            []
        , table []
            [ tr [] [ td [] [ text "1040 Ridge Rd" ] ]
            , tr [] [ td [] [ text "Munster, IN 46321" ] ]
            , tr [] [ td [] [ text "(219) 836-1930" ] ]
            ]
        , h2 [] [ text "Travelers from Chicago:" ]
        , p [] [ text "Take I-90 E/I-94 E Express and I-94 E to Calumet Avenue in Hammond, IN. Take exit 1 from I-94 E. Continue on Calumet Avenue toward Ridge Road. Turn left on Ridge Road. In a quarter of a mile, destination will be on the right." ]
        , h2 [] [ text "Travelers from Indiana:" ]
        , p [] [ text "Take the Calumet Avenue exit from I-94. Turn on Ridge Road heading east. Destination will be on the right." ]
        , h2 [] [ text "Travelers from Michigan:" ]
        , p [] [ text "Take I-75 S to exit 53B to merge onto I-94 W toward Chicago. Take exit 1 for Calumet Avenue toward US-41 N. Merge onto Calumet Avenue. Turn left on to Ridge Road. Destination will be on the right in a quarter of a mile." ]
        , h2 [] [ text "Where to Stay" ]
        , p [] [ text "A block of hotel rooms will be made close to the Center for Visual and Performing Arts. There will be more details to come once available." ]
        ]
