module Routes exposing (..)

import Route exposing (..)


type Sitemap
    = HomeR ()
    | PartyR ()
    | NotFoundR
    | VenueR ()
    | GalleryR ()
    | ContactR ()
    | RSVPR ()
    | EventDetailsR ()
    | OurStoryR ()


homeR =
    HomeR := static ""


partyR =
    PartyR := static "party"


venueR =
    VenueR := static "venue"

galleryR =
    GalleryR := static "gallery"

contactR =
    ContactR := static "contact"

rsvpR =
    RSVPR := static "rsvp"

eventDetailsR =
    EventDetailsR := static "eventdetails"

ourStoryR =
  OurStoryR := static "ourstory"

sitemap =
    router [ homeR, partyR, venueR, galleryR, contactR, rsvpR, eventDetailsR, ourStoryR ]


match : String -> Sitemap
match =
    Route.match sitemap
        >> Maybe.withDefault NotFoundR


doRoute : Sitemap -> String
doRoute r =
    case r of
        HomeR () ->
            reverse homeR []

        PartyR () ->
            reverse partyR []

        VenueR () ->
            reverse venueR []

        GalleryR () ->
            reverse galleryR []

        ContactR () ->
            reverse contactR []

        RSVPR () ->
            reverse rsvpR []

        EventDetailsR () ->
            reverse eventDetailsR []

        OurStoryR () ->
            reverse ourStoryR []

        NotFoundR ->
            Debug.crash "Cannot route to Not Found"
