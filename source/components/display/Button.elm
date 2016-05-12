module Components.Display.Button exposing (view)

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (attribute, class, classList,href)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

view : List (Attribute msg) -> List (Html msg) -> Html msg
view attrs children = 
  a 
    (mergeAttributes 
      [ classList [ ("button", True) ]
      , attribute "aria-role" "button"
      , href "#" ]
      attrs)
    children
