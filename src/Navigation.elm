module Navigation exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))
import Messages exposing (Msg)
import Update exposing (Model)


view : Model -> Html Msg
view model =
    nav []
        [ ul [ class "flex wrap" ]
            [ li [ class "pacifico" ] [ link model.route (HomeR ()) "N&C" ]
            , li [] [ link model.route (PartyR ()) "Party" ]
            , li [] [ link model.route (TravelAndAccomodationR ()) "Travel and Accomodation" ]
            , li [] [ link model.route (GalleryR ()) "Photo Gallery" ]
            , li [] [ link model.route (ContactR ()) "Contact Us" ]
            , li [] [ link model.route (RSVPR ()) "RSVP" ]
            , li [] [ link model.route (EventDetailsR ()) "Event Details" ]
            , li [] [ link model.route (OurStoryR ()) "Our Story" ]
            ]
        ]
