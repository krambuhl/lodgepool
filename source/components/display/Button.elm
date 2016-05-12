module Components.Display.Button exposing (view)

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (class, classList, attribute)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

view : Options msg -> Html msg
view opts = 
  let 
    attributes =
      mergeAttributes 
        [ classList [ ("button", True) ]
        , attribute "aria-role" "button" ]
        (withDefault [] opts.attributes)
    children = 
      withDefault [] opts.children
  in 
    a attributes children
