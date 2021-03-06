-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module WeatherTwo.Enum.TemperatureUnit exposing (TemperatureUnit(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Fahrenheit -
  - Celsius -

-}
type TemperatureUnit
    = Fahrenheit
    | Celsius


list : List TemperatureUnit
list =
    [ Fahrenheit, Celsius ]


decoder : Decoder TemperatureUnit
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "Fahrenheit" ->
                        Decode.succeed Fahrenheit

                    "Celsius" ->
                        Decode.succeed Celsius

                    _ ->
                        Decode.fail ("Invalid TemperatureUnit type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TemperatureUnit -> String
toString enum =
    case enum of
        Fahrenheit ->
            "Fahrenheit"

        Celsius ->
            "Celsius"
