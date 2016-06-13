module View exposing (view)

import Html exposing (Html, div, text)
import Routes exposing (Sitemap(..))
import Update exposing (Model)
import Messages exposing (Msg)
import Components.Home as Home
import Components.Party as Party
import Components.Venue as Venue
import Components.Gallery as Gallery
import Components.Contact as Contact
import Components.RSVP as RSVP
import Components.EventDetails as EventDetails
import Components.OurStory as OurStory
import Navigation exposing (view)


view : Model -> Html Msg
view model =
    case model.route of
        HomeR () ->
            div []
                [ Home.view model
                , Navigation.view
                ]

        PartyR () ->
            div []
                [ Navigation.view
                , Party.view
                ]

        VenueR () ->
            div []
                [ Navigation.view
                , Venue.view
                ]

        GalleryR () ->
            div []
                [ Navigation.view
                , Gallery.view
                ]

        ContactR () ->
            div []
                [ Navigation.view
                , Contact.view
                ]

        RSVPR () ->
            div []
                [ Navigation.view
                , RSVP.view
                ]

        EventDetailsR () ->
            div []
                [ Navigation.view
                , EventDetails.view
                ]

        OurStoryR () ->
            div []
                [ Navigation.view
                , OurStory.view
                ]

        NotFoundR ->
            text "Not Found"
