-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReactionGroup exposing (UsersOptionalArguments, content, createdAt, subject, users, viewerHasReacted)

import Github.Enum.ReactionContent
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the emoji reaction.
-}
content : SelectionSet Github.Enum.ReactionContent.ReactionContent Github.Object.ReactionGroup
content =
    Object.selectionForField "Enum.ReactionContent.ReactionContent" "content" [] Github.Enum.ReactionContent.decoder


{-| Identifies when the reaction was created.
-}
createdAt : SelectionSet (Maybe Github.ScalarDecoders.DateTime) Github.Object.ReactionGroup
createdAt =
    Object.selectionForField "(Maybe ScalarDecoders.DateTime)" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime |> Decode.nullable)


{-| The subject that was reacted to.
-}
subject : SelectionSet decodesTo Github.Interface.Reactable -> SelectionSet decodesTo Github.Object.ReactionGroup
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity


type alias UsersOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| Users who have reacted to the reaction subject with the emotion represented by this reaction group

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
users : (UsersOptionalArguments -> UsersOptionalArguments) -> SelectionSet decodesTo Github.Object.ReactingUserConnection -> SelectionSet decodesTo Github.Object.ReactionGroup
users fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "users" optionalArgs object_ identity


{-| Whether or not the authenticated user has left a reaction on the subject.
-}
viewerHasReacted : SelectionSet Bool Github.Object.ReactionGroup
viewerHasReacted =
    Object.selectionForField "Bool" "viewerHasReacted" [] Decode.bool
