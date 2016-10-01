module Components.EventDetails exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Event Details" ]
        , table []
            [ tr [] [ td [] [ strong [] [ text "Saturday, June 3, 2017 @ 5 p.m." ] ] ]
            , tr [] [ td [] [ strong [] [ text "Center for Visual and Performing Arts" ] ] ]
            , tr [] [ td [] [ text "1040 Ridge Road" ] ]
            , tr [] [ td [] [ text "Munster, IN 46321" ] ]
            , tr [] [ td [] [ text "219-835-1930" ] ]
            ]
        , p [] [ text "Ceremony starts at 5 p.m." ]
        , p [] [ text "Cocktail hour and reception to follow" ]
        , p [] [ text "Attire: Semi-formal (suit and tie for the gentlemen; cocktail dress, skirt or dress pants and nice top for the ladies)" ]
        , p [] [ text "For your convenience, the ceremony, cocktail hour and reception will all be held at the Center for Visual and Performing Arts." ]
        , p [] [ text "Special requests for dietary restrictions will be happily accommodated." ]
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
