module Components.Display.Button exposing (view)

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (class, classList, attribute)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

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
