module Main where

import Oak
  ( createApp
  , HTML
  , App
  , div
  , text
  )

type Model =
  { message :: String
  }

data Msg
  = None

view :: Model -> HTML Msg
view model = div [ text model.message ]

update :: Msg -> Model -> Model
update _ model = model

init :: Model
init = { message: "hello from oak"
       }

main :: App Model Msg
main =
  createApp
    { init: init
    , view: view
    , update: update
    }
