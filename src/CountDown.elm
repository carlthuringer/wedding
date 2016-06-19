module CountDown exposing (Model, init, view, update)

import Html exposing (..)
import Date exposing (..)
import Time exposing (..)
import Messages exposing (Msg)
import String


type alias Model =
    { date : Date
    }


init : Model
init =
    { date = Date.fromTime (0) }


update : Int -> Model -> Model
update time model =
    { model | date = Date.fromTime (toFloat time) }


monthNumber : Date.Month -> Int
monthNumber month =
    case month of
        Jan ->
            1

        Feb ->
            2

        Mar ->
            3

        Apr ->
            4

        May ->
            5

        Jun ->
            6

        Jul ->
            7

        Aug ->
            8

        Sep ->
            9

        Oct ->
            10

        Nov ->
            11

        Dec ->
            12


daysInMonth : Date.Month -> Float
daysInMonth month =
    case month of
        Jan ->
            31.0

        Feb ->
            28.0

        Mar ->
            31.0

        Apr ->
            30.0

        May ->
            31.0

        Jun ->
            30.0

        Jul ->
            31.0

        Aug ->
            31.0

        Sep ->
            30.0

        Oct ->
            10.0

        Nov ->
            30.0

        Dec ->
            31.0


weddingTime : Date
weddingTime =
    Date.fromString "2017-06-03"
        |> Result.withDefault (Date.fromTime 0)


toUnixSeconds : Date -> Float
toUnixSeconds date =
    date
        |> Date.toTime
        |> Time.inSeconds


view : Model -> Html Msg
view state =
    let
        weddingSecs =
            toUnixSeconds weddingTime

        nowSecs =
            toUnixSeconds state.date

        yearDifference =
            (weddingSecs - nowSecs) / 365 / 24 / 60 / 60

        monthDifference =
            (yearDifference - (toFloat (floor yearDifference))) * 12

        dayDifference =
            (monthDifference - (toFloat (floor monthDifference))) * (daysInMonth (Date.month state.date))

        hourDifference =
            (dayDifference - (toFloat (floor dayDifference))) * 24

        minuteDifference =
            (hourDifference - (toFloat (floor hourDifference))) * 60

        secondDifference =
            (minuteDifference - (toFloat (floor minuteDifference))) * 60

        sections =
            [ "seconds", "minutes", "hours", "days", "months", "years" ]

        counts =
            [ secondDifference, minuteDifference, hourDifference, dayDifference, monthDifference, yearDifference ]
        zip =
            List.map2 (,)
    in
        counts
        |> List.map floor
        |> List.filter (\x -> x > 0)
        |> List.map toString
        |> zip sections
        |> List.reverse
        |> List.concatMap (\(a, b) -> [b, a])
        |> String.join " "
        |> text
