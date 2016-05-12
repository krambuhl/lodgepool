module Components.Display.Button exposing (view)

import Html exposing (Html, Attribute, button, text)
import Html.Attributes exposing (attribute, class, classList,href)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

view : List (Attribute msg) -> List (Html msg) -> Html msg
view attrs children = 
  let defAttrs = 
    [ classList [ ("button", True) ]
    , attribute "aria-role" "button"
    , href "#" ]

  in 
    button 
      (mergeAttributes defAttrs attrs)
      children
