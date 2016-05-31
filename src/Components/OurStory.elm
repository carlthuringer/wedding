module Components.OurStory exposing (view)

import Html exposing (..)
import Messages exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Our Story" ]
        , p [] [ text "It all began with a wink. An electronic wink, that is. Thanks to match.com, Carl and Nicole found each other’s online profiles and winked at each other. They soon began messaging back and forth through the website, texting, and eventually had their first date at the Starbucks at the Chicago and Franklin Brown Line stop in Chicago, IL on May 11, 2012." ]
        , p [] [ text "After going on many dates exploring Chicago together, Nicole moved in with Carl in April 2013 and have been happily cohabitating ever since. In January 2014, Carl and Nicole found an apartment together in the Lincoln Square/Ravenswood neighborhood of Chicago, where they’ve begun to build their lives together." ]
        , p [] [ text "On November 1, 2015, a few blocks away from their Artesian Avenue apartment, Carl asked Nicole to marry him. It was a beautiful day without a cloud in the sky, and as the church bells rang at 11 a.m. that Sunday morning, Nicole ecstatically said “yes” to his proposal. Their adventure as a couple now continues as they embark on the wedding planning process, and they couldn’t be happier." ]
        ]
