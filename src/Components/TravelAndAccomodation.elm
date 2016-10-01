module Components.TravelAndAccomodation exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg)
import Update exposing (Model)


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Travel and Accomodation" ]
        , h2 [] [ text "Travel Info" ]
        , p [] [ text "Parking is available for free onsite at the Center for Visual and Performing Arts." ]
        , h3 [] [ text "Center for Visual and Performing Arts" ]
        , iframe
            [ src "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2985.4279945435705!2d-87.50520228392293!3d41.55998077924856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8811e0638984d1c5%3A0xc75da4bbc1bab9a1!2sCenter+For+Visual+%26+Performing+Arts!5e0!3m2!1sen!2sus!4v1463348007804"
            , width (max 300 (model.window.width - 40))
            , height (floor (max 200 (toFloat model.window.height / 2)))
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
        , h4 [] [ text "Travelers from Chicago:" ]
        , p [] [ text "Take I-90 E/I-94 E Express and I-94 E to Calumet Avenue in Hammond, IN. Take exit 1 from I-94 E. Continue on Calumet Avenue toward Ridge Road. Turn left on Ridge Road. In a quarter of a mile, destination will be on the right." ]
        , h4 [] [ text "Travelers from Indiana:" ]
        , p [] [ text "Take the Calumet Avenue exit from I-94. Turn on Ridge Road heading east. Destination will be on the right." ]
        , h4 [] [ text "Travelers from Michigan:" ]
        , p [] [ text "Take I-75 S to exit 53B to merge onto I-94 W toward Chicago. Take exit 1 for Calumet Avenue toward US-41 N. Merge onto Calumet Avenue. Turn left on to Ridge Road. Destination will be on the right in a quarter of a mile." ]
        , h4 [] [ text "Where to Stay" ]
        , p []
            [ text "The following hotels have blocks of rooms reserved. Shuttle service from the hotels to the venue will be arranged."
            , ul []
                [ li []
                    [ a [ href "http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=Cammarata/Thuringer%20Wedding%5Echifh%60ctwctwd%7Cctwctwk%60109.99%60USD%60false%604%606/2/17%606/4/17%605/5/17&app=resvlink&stop_mobi=yes" ] [ text "Fairfield Inn & Suites Hammond" ]
                    , text " - $109.99 per night or call 219-845-6950"
                    ]
                , li []
                    [ a [ href "http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=Cammarata/Thuringer%20Wedding%5Echich%60ctwctwd%7Cctwctwk%60119.99%60USD%60false%605%606/2/17%606/4/17%605/5/17&app=resvlink&stop_mobi=yes" ] [ text "Courtyard by Marriot Hammond" ]
                    , text " - $119.99 per night or call 219-845-6350"
                    ]
                , li []
                    [ a [ href "http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=Cammarata/Thuringer%20Wedding%5Echiin%60ctwctwo%60129.99%60USD%60false%605%606/2/17%606/4/17%605/5/17&app=resvlink&stop_mobi=yes" ] [ text "Residence Inn Hammond" ]
                    , text " - $129.99 per night or call 219-844-8440"
                    ]
                ]
            ]
        ]
