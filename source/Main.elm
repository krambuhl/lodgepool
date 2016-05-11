module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.Lazy exposing (lazy)
import Signal exposing (Signal, Address, send)

type Action
  = NoOp


type alias AppState = 
  { events: List Int
  , total: Int }


update : Action -> AppState -> AppState
update action model = 
  case action of
    NoOp -> model

view : Address Action -> AppState -> Html
view address model =
  div 
    [ class "app" ]  
    [ div 
      [ classList 
        [ ("button", True) 
        , ("button--friend", True) ] ]
      [ h1 
        [ onClick address NoOp ]
        [ text "Click for a story" ] ]
    , ul 
      [ ] 
      (List.map (\num -> li [] [ text (toString num) ]) model.events) ]


emptyModel : AppState
emptyModel =
  { events = [6,4,1,2,3]
  , total = 0 }
     

model : Signal AppState
model =
  Signal.foldp update emptyModel actions.signal


main : Signal Html
main = 
    Signal.map (view actions.address) model


actions : Signal.Mailbox Action
actions =
  Signal.mailbox NoOp