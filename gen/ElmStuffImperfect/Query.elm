-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmStuffImperfect.Query exposing (FindPackageRequiredArguments, PackagesByAuthorRequiredArguments, allPackages, elmOrganization, favoritePackages, findPackage, packagesByAuthor, randomQuote)

import ElmStuffImperfect.InputObject
import ElmStuffImperfect.Interface
import ElmStuffImperfect.Object
import ElmStuffImperfect.Scalar
import ElmStuffImperfect.ScalarCodecs
import ElmStuffImperfect.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| -}
allPackages : SelectionSet decodesTo ElmStuffImperfect.Object.Package -> SelectionSet (Maybe (List (Maybe decodesTo))) RootQuery
allPackages object_ =
    Object.selectionForCompositeField "allPackages" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias PackagesByAuthorRequiredArguments =
    { author : String }


{-|

  - author -

-}
packagesByAuthor : PackagesByAuthorRequiredArguments -> SelectionSet decodesTo ElmStuffImperfect.Object.Package -> SelectionSet (Maybe (List (Maybe decodesTo))) RootQuery
packagesByAuthor requiredArgs object_ =
    Object.selectionForCompositeField "packagesByAuthor" [ Argument.required "author" requiredArgs.author Encode.string ] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias FindPackageRequiredArguments =
    { author : String
    , name : String
    }


{-|

  - author -
  - name -

-}
findPackage : FindPackageRequiredArguments -> SelectionSet decodesTo ElmStuffImperfect.Object.Package -> SelectionSet (Maybe decodesTo) RootQuery
findPackage requiredArgs object_ =
    Object.selectionForCompositeField "findPackage" [ Argument.required "author" requiredArgs.author Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| -}
randomQuote : SelectionSet (Maybe String) RootQuery
randomQuote =
    Object.selectionForField "(Maybe String)" "randomQuote" [] (Decode.string |> Decode.nullable)


{-| -}
elmOrganization : SelectionSet decodesTo ElmStuffImperfect.Object.Author -> SelectionSet (Maybe decodesTo) RootQuery
elmOrganization object_ =
    Object.selectionForCompositeField "elmOrganization" [] object_ (identity >> Decode.nullable)


{-| -}
favoritePackages : SelectionSet decodesTo ElmStuffImperfect.Object.Package -> SelectionSet (Maybe (List (Maybe decodesTo))) RootQuery
favoritePackages object_ =
    Object.selectionForCompositeField "favoritePackages" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)
