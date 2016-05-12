module Components.Container.Menu exposing (view)

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (class, classList, attribute)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)
import Components.Display.Button as Button

view : List (Attribute msg) -> List (Html msg) -> Html msg
view attrs children = 
  let 
    attributes =
      mergeAttributes 
        [ classList [ ("button", True) ]
        , attribute "aria-role" "button" ]
        attrs
  in 
    a attributes children