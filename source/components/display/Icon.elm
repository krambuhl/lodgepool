module Components.Display.Icon exposing (view) -- -- where

import Html exposing (Html, Attribute, a, text)
import Html.Attributes exposing (attribute, class, classList,href)
import Html.Events exposing (onClick)
import Maybe exposing (Maybe(Just, Nothing), withDefault)

import Components.Utils exposing (Options, mergeAttributes)

view : List (Attribute msg) -> Html msg
view attrs = 
  let defAttrs = 
    [ classList [ ("icon", True) ] ]

  in 
    i (mergeAttributes defAttrs attrs) []
