module Component.Display.Button (view) where 

import Html exposing (Html, a)
import Html.Attributes exposing (Attribute, class, attribute)
import Html.Events exposing (onClick)
import Maybe exposing ( Maybe( Just, Nothing ) )


type alias Options = 
  { className: Maybe String
  , attributes: Maybe List Attribute 
  , children: Maybe List Html }

view : Options -> Html
view opts = 
  let 
    className = 
      case opts.className of
        Nothing -> ""
        Just cls -> " " ++ cls

    attributes =
      case opts.attributes of
        Nothing -> []
        Just attrs -> attrs

    children = 
      case opts.children of
        Nothing -> []
        Just chldrn -> chldrn 
  in 
    a 
      (List.append 
        attributes
        [ classList 
          [ ("button", True) ]
        , attribute "aria-role" "button" ])
      children