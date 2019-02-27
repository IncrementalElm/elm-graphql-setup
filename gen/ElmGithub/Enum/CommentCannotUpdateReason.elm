-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Enum.CommentCannotUpdateReason exposing (CommentCannotUpdateReason(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible errors that will prevent a user from updating a comment.

  - InsufficientAccess - You must be the author or have write access to this repository to update this comment.
  - Locked - Unable to create comment because issue is locked.
  - LoginRequired - You must be logged in to update this comment.
  - Maintenance - Repository is under maintenance.
  - VerifiedEmailRequired - At least one email address must be verified to update this comment.
  - Denied - You cannot update this comment

-}
type CommentCannotUpdateReason
    = InsufficientAccess
    | Locked
    | LoginRequired
    | Maintenance
    | VerifiedEmailRequired
    | Denied


list : List CommentCannotUpdateReason
list =
    [ InsufficientAccess, Locked, LoginRequired, Maintenance, VerifiedEmailRequired, Denied ]


decoder : Decoder CommentCannotUpdateReason
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "INSUFFICIENT_ACCESS" ->
                        Decode.succeed InsufficientAccess

                    "LOCKED" ->
                        Decode.succeed Locked

                    "LOGIN_REQUIRED" ->
                        Decode.succeed LoginRequired

                    "MAINTENANCE" ->
                        Decode.succeed Maintenance

                    "VERIFIED_EMAIL_REQUIRED" ->
                        Decode.succeed VerifiedEmailRequired

                    "DENIED" ->
                        Decode.succeed Denied

                    _ ->
                        Decode.fail ("Invalid CommentCannotUpdateReason type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : CommentCannotUpdateReason -> String
toString enum =
    case enum of
        InsufficientAccess ->
            "INSUFFICIENT_ACCESS"

        Locked ->
            "LOCKED"

        LoginRequired ->
            "LOGIN_REQUIRED"

        Maintenance ->
            "MAINTENANCE"

        VerifiedEmailRequired ->
            "VERIFIED_EMAIL_REQUIRED"

        Denied ->
            "DENIED"
