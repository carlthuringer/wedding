module Main exposing (..)

import Html exposing (Html, div)
import Html.App
import Html.Attributes exposing (class)
import CountDown
import Navigation
-- import Routing exposing (router)
-- import Hop.Types
-- import StartApp exposing (App, start)
-- import Cmd exposing (Cmd)

import Components exposing (views)
-- import Task exposing (Task)
import Messages exposing (Msg(TimeUpdate, NoOp))
import Models exposing (Model, Flags)



init : Flags -> ( Model, Cmd Msg )
init flags =
  ( { countDown = CountDown.init
    -- , routing = Routing.init
    }
  , Cmd.none
  )


view : Model -> Html Msg
view model =
  let views = Components.views
  in
    div
      []
        [ Navigation.view
        , div [ class "container" ] [ views.home model ]
    ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    TimeUpdate timeInt ->
      let
        setCountdown =
          { model | countDown = CountDown.update timeInt model.countDown }
      in
        ( setCountdown, Cmd.none )

    NoOp -> ( model, Cmd.none )

    -- ApplyRoute ( route, location ) ->
    --   let
    --     routing =
    --       model.routing

    --     updateRouting =
    --       { routing | route = route, location = location }
    --   in
    --     ( { model | routing = updateRouting }, Cmd.none )

-- port hostClock : (Int) -> Sub msg
-- port routeRunTask : Task () ()
-- port routeRunTask =
--   router.run


-- routerSignal : Msg Cmd
-- routerSignal =
--   Signal.map ApplyRoute router.signal


-- timeSignal : Signal Action
-- timeSignal =
--   Signal.map TimeUpdate hostClock


main : Program Flags
main =
  Html.App.programWithFlags
      { init = init
      , update = update
      , view = view
      , subscriptions = \_ -> Sub.none
      }
