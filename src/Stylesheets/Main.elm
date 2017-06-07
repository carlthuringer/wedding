module Stylesheets.Main exposing (css)

import Css exposing (..)
import Css.Elements exposing (body)
import Css.Namespace


roseGold : Color
roseGold =
    rgb 245 189 259


peach : Color
peach =
    rgb 253 198 178


serenityBlue : Color
serenityBlue =
    rgb 145 168 210


mediumGrey : Color
mediumGrey =
    rgb 152 150 164


ivory : Color
ivory =
    rgb 229 225 223


nearlyWhite : Color
nearlyWhite =
    rgb 250 250 250


darkCharcoal : Color
darkCharcoal =
    rgb 57 57 57


pinkyCoralSomething : Color
pinkyCoralSomething =
    rgb 255 168 148


css : Stylesheet
css =
    (stylesheet << Css.Namespace.namespace "ncwedding")
        [ body
            [ color darkCharcoal
            , fontFamilies [ "Open Sans", "sans-serif" ]
            , fontSize (pt 12)
            , margin2 (px 0) (px 20)
            ]
        ]



-- body {
--     color: $darkCharcoal;
--     font-family: 'Open Sans', sans-serif;
--     font-size: 12pt;
--     margin: 0 20px;
-- }
-- h1, h2, h3 {
--     margin-bottom: .3em;
-- }
-- .pacifico {
--     font-family: 'Pacifico', serif;
--     line-height: 1em;
-- }
-- h2, h3, h4, h5, h6 {
--     margin: .3rem 0;
--     padding-bottom: .3em;
--     border-bottom: 0.5px solid $darkCharcoal;
-- }
-- .wedding-colors {
--     $size: 128px;
--     display: flex;
--     flex-flow: row wrap;
--     width: $size * 2;
--     height: auto;
--     div {
--         width: $size;
--         height: $size;
--         margin: auto;
--     }
-- }
-- .wedding-main img {
--     width: 30vw;
-- }
-- .rose-gold { background-color: $rose_gold }
-- .peach { background-color: $peach }
-- .serenity-blue { background-color: $serenity_blue }
-- .medium-grey { background-color: $medium_grey }
-- article {
--     margin: 0 .5rem 1rem .5rem;
--     img {
--         float: right;
--         width: 17rem;
--     }
--     ::after {
--         visibility: hidden;
--         display: block;
--         font-size: 0;
--         content: " ";
--         clear: both;
--         height: 0;
--     }
-- }
-- .flex {
--     &.wrap { flex-wrap: wrap; }
--     display: flex;
--     flex: 1 0 auto;
--     .three-columns {
--         max-width: 29rem;
--     }
--     justify-content: space-around;
-- }
-- .center {
--     text-align: center;
--     content-justify: center;
-- }
-- nav {
--     ul { padding: 0; }
--     li {
--         list-style: none;
--         margin: 0 .1em .3em .1em;
--         a { padding: 0 .5em; }
--     }
--     text-transform: uppercase;
--     font-family: "Open Sans Condensed", sans-serif;
--     li > .active
--     {
--         transition: 2s all;
--         background-color: $pinkyCoralSomething;
--         color: $nearlyWhite;
--     }
-- }
-- .full {
--     width: 100%;
-- }
-- .column {
--     flex-direction: column;
-- }
-- .center-auto {
--     text-align: center;
--     margin-left: auto;
--     margin-right: auto;
-- }
-- h1 {
--     margin: 1em auto;
-- }
-- a {
--     color: $pinkyCoralSomething;
--     font-weight: 800;
--     text-decoration: none;
--     &:hover {
--         text-decoration: underline;
--         transition: 1s all;
--         color: $pinkyCoralSomething;
--     }
-- }
-- .contact-form {
--     font-size: 16pt;
--     width: 100%;
--     padding: 10px;
--     margin-bottom: 2em;
--     border: 3px solid $darkCharcoal;
--     box-sizing: border-box;
-- }
-- .contact-button {
--     margin: .5em 0;
--     padding: .5em;
--     background-color: $pinkyCoralSomething;
--     color: $nearlyWhite;
--     border-radius: 8px;
-- }
-- .gallery {
--     display: flex;
--     flex-direction: row;
--     flex-wrap: wrap;
--     width: 100%;
--     font-size: 0;
--     justify-content: center;
-- }
-- .gallery img {
--     height: 80vh;
--     margin: 5px 8px;
-- }
-- /* Portrait */
-- @media only screen
--   and (max-width: 480px) {
--     .gallery img {
--         height: auto;
--         width: 80vh;
--     }
--     article img {
--         float: initial;
--         width: 100%;
--     }
--     body {
--         margin: 0 8px;
--     }
-- }
