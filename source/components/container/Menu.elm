module Components.Container.Menu exposing (view) -- -- where 

import Html exposing (Html, Attribute, nav, text)
import Html.Attributes exposing (class, classList, attribute)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)
import Components.Display.Button as Button

view : List (Attribute msg) -> List (Html msg) -> Html msg
view attrs children =
  let defAttrs =
    [ classList [ ("menu", True) ]
    , attribute "aria-role" "nav" ]
    
  in 
    nav 
      (mergeAttributes defAttrs attrs) 
      [ Button.view [ ] children
      , Button.view [ ] children ]