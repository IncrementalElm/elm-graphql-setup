-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Enum.ProjectCardArchivedState exposing (ProjectCardArchivedState(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible archived states of a project card.

  - Archived - A project card that is archived
  - NotArchived - A project card that is not archived

-}
type ProjectCardArchivedState
    = Archived
    | NotArchived


list : List ProjectCardArchivedState
list =
    [ Archived, NotArchived ]


decoder : Decoder ProjectCardArchivedState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ARCHIVED" ->
                        Decode.succeed Archived

                    "NOT_ARCHIVED" ->
                        Decode.succeed NotArchived

                    _ ->
                        Decode.fail ("Invalid ProjectCardArchivedState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectCardArchivedState -> String
toString enum =
    case enum of
        Archived ->
            "ARCHIVED"

        NotArchived ->
            "NOT_ARCHIVED"
