module Components.Party where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown exposing (toHtml)

view model = div [ id "party" ]
  [ h2 [] [ text "Wedding Party" ]
  , h3 [] [ text "Bride's" ]
  , partyMember "Jill Cammarata" "placeholder" jill
  , partyMember "Paul Cammarata" "placeholder" paul
  , partyMember "Joanna Nichols" "placeholder" joanna
  , partyMember "Kate Slingerland" "placeholder" kate
  , partyMember "Carolyn Radville" "placeholder" carolyn
  , h3 [] [ text "Groom's" ]
  , partyMember "Brian Thuringer" "placeholder" brian
  , partyMember "Scott McAnally" "placeholder" scott
  , partyMember "Dustin Mitchell" "placeholder" dustin
  , partyMember "David Abdemoulie" "placeholder" david
  , partyMember "Sarah Killian" "placeholder" sarah
  ]

partyMember name image content =
  article []
    [ h4 [] [ text name ]
    , p []
      [ img [ src "http://www.fillmurray.com/g/200/240" ] []
      , content
      ]
    ]

jill = toHtml """
Some nice words about Jill go here. How's that for you?
## What if we write a list?
  * Listing
  * Listing more
"""

paul = toHtml """
Words about Paul
"""

joanna = toHtml """
joanna
"""

kate = toHtml """
kate
"""

carolyn = toHtml """
carolyn
"""

brian = toHtml """
brian
"""

scott = toHtml """
scott
"""

dustin = toHtml """
dustin
"""

david = toHtml """
david
"""

sarah = toHtml """
sarah
"""
