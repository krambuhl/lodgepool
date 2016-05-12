module Main exposing (main) -- -- where

import Html exposing (Html, text)
import Html.Attributes exposing (classList)
import Html.Lazy exposing (lazy)
import Html.App as Html

import Components.Container.Menu as Menu


main : Html msg
main = 
  Menu.view 
    [ classList [("--mything", True)] ] 
    [ text "Wahooy" ]

