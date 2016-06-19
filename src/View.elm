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
                , Navigation.view model
                ]

        PartyR () ->
            div []
                [ Navigation.view model
                , Party.view
                ]

        VenueR () ->
            div []
                [ Navigation.view model
                , Venue.view
                ]

        GalleryR () ->
            div []
                [ Navigation.view model
                , Gallery.view
                ]

        ContactR () ->
            div []
                [ Navigation.view model
                , Contact.view
                ]

        RSVPR () ->
            div []
                [ Navigation.view model
                , RSVP.view
                ]

        EventDetailsR () ->
            div []
                [ Navigation.view model
                , EventDetails.view
                ]

        OurStoryR () ->
            div []
                [ Navigation.view model
                , OurStory.view
                ]

        NotFoundR ->
            text "Not Found"
