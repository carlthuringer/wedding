-- Main file


module Main (..) where

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import CountDown
import Navigation
import Routing exposing (router)
import Hop.Types
import StartApp exposing (App, start)
import Effects exposing (Effects)

import Components
import Task exposing (Task)

type Action
  = TimeUpdate Int
  | ApplyRoute ( Routing.Route, Hop.Types.Location )


type alias Model =
  { countDown : CountDown.Model
  , routing : Routing.Model
  }


init : ( Model, Effects Action )
init =
  ( { countDown = CountDown.init
    , routing = Routing.init
    }
  , Effects.none
  )


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ Navigation.view
    , div [ class "container" ] [ (Routing.view model.routing Components.views) model ]
    ]


update : Action -> Model -> ( Model, Effects Action )
update action model =
  case action of
    TimeUpdate timeInt ->
      let
        setCountdown =
          { model | countDown = CountDown.update timeInt model.countDown }
      in
        ( setCountdown, Effects.none )

    ApplyRoute ( route, location ) ->
      let
        routing =
          model.routing

        updateRouting =
          { routing | route = route, location = location }
      in
        ( { model | routing = updateRouting }, Effects.none )

port hostClock : Signal Int
port routeRunTask : Task () ()
port routeRunTask =
  router.run


routerSignal : Signal Action
routerSignal =
  Signal.map ApplyRoute router.signal


timeSignal : Signal Action
timeSignal =
  Signal.map TimeUpdate hostClock


app : App Model
app =
  start
    { init = init
    , update = update
    , view = view
    , inputs = [ routerSignal, timeSignal ]
    }


main : Signal Html
main =
  app.html
