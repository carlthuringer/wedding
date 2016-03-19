module CountDown (init, update, view, Model, Action (ClockTick)) where

import Html exposing (..)
import Date exposing (..)
import Time exposing (..)

type alias Model = {
  date : Date
}

type Action = ClockTick Time

init : Model
init = { date = Date.fromTime(0) }

update : Action -> Model -> Model
update action model =
  case action of
    ClockTick time -> { model | date = Date.fromTime(time) }


monthNumber : Date.Month -> Int
monthNumber month =
  case month of
    Jan -> 1
    Feb -> 2
    Mar -> 3
    Apr -> 4
    May -> 5
    Jun -> 6
    Jul -> 7
    Aug -> 8
    Sep -> 9
    Oct -> 10
    Nov -> 11
    Dec -> 12

daysInMonth : Date.Month -> Float
daysInMonth month =
  case month of
    Jan -> 31.0
    Feb -> 28.0
    Mar -> 31.0
    Apr -> 30.0
    May -> 31.0
    Jun -> 30.0
    Jul -> 31.0
    Aug -> 31.0
    Sep -> 30.0
    Oct -> 10.0
    Nov -> 30.0
    Dec -> 31.0

weddingTime : Date
weddingTime = Date.fromString "2017-06-03 21:00:00"
  |> Result.withDefault (Date.fromTime 0)

toUnixSeconds : Date -> Float
toUnixSeconds date =
  date
  |> Date.toTime
  |> Time.inSeconds

view : Model -> Html
view state =
  let
    weddingSecs = toUnixSeconds weddingTime
    nowSecs = toUnixSeconds state.date
    yearDifference = (weddingSecs - nowSecs) / 365 / 24 / 60 / 60
    monthDifference = (yearDifference - (toFloat (floor yearDifference))) * 12
    dayDifference = (monthDifference - (toFloat (floor monthDifference))) * (daysInMonth(Date.month state.date))
    hourDifference = (dayDifference - (toFloat (floor dayDifference))) * 24
    minuteDifference = (hourDifference - (toFloat (floor hourDifference))) * 60
    secondDifference = (minuteDifference - (toFloat (floor minuteDifference))) * 60
  in
    text
    (  (toString (floor yearDifference))
    ++ " year "
    ++ (toString (floor monthDifference))
    ++ " months "
    ++ (toString (floor dayDifference))
    ++ " days "
    ++ (toString (floor hourDifference))
    ++ " hours "
    ++ (toString (floor minuteDifference))
    ++ " minutes and "
    ++ (toString (floor secondDifference))
    ++ " seconds"
    )
