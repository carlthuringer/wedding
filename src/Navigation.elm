module Navigation exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))
import Messages exposing (Msg)


view : Html Msg
view =
    nav []
        [ ul [ class "flex wrap" ]
            [ li [] [ link (HomeR ()) "Home" ]
            , li [] [ link (PartyR ()) "Party" ]
            , li [] [ link (VenueR ()) "Travel and Accomodation" ]
            , li [] [ link (GalleryR ()) "Photo Gallery" ]
            , li [] [ link (ContactR ()) "Contact Us" ]
            , li [] [ link (RSVPR ()) "RSVP" ]
            , li [] [ link (EventDetailsR ()) "Event Details" ]
            , li [] [ link (OurStoryR ()) "Our Story" ]
            ]
        ]
