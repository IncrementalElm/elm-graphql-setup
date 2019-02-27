-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.ReactionGroup exposing (UsersOptionalArguments, content, createdAt, subject, users, viewerHasReacted)

import ElmGithub.Enum.ReactionContent
import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the emoji reaction.
-}
content : SelectionSet ElmGithub.Enum.ReactionContent.ReactionContent ElmGithub.Object.ReactionGroup
content =
    Object.selectionForField "Enum.ReactionContent.ReactionContent" "content" [] ElmGithub.Enum.ReactionContent.decoder


{-| Identifies when the reaction was created.
-}
createdAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.ReactionGroup
createdAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The subject that was reacted to.
-}
subject : SelectionSet decodesTo ElmGithub.Interface.Reactable -> SelectionSet decodesTo ElmGithub.Object.ReactionGroup
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity


type alias UsersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Users who have reacted to the reaction subject with the emotion represented by this reaction group

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
users : (UsersOptionalArguments -> UsersOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.ReactingUserConnection -> SelectionSet decodesTo ElmGithub.Object.ReactionGroup
users fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "users" optionalArgs object_ identity


{-| Whether or not the authenticated user has left a reaction on the subject.
-}
viewerHasReacted : SelectionSet Bool ElmGithub.Object.ReactionGroup
viewerHasReacted =
    Object.selectionForField "Bool" "viewerHasReacted" [] Decode.bool
