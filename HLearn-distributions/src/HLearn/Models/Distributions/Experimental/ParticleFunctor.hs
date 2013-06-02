{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FunctionalDependencies #-}

{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module HLearn.Models.Distributions.ParticleFunctor
    where
          
import Control.Monad.Random
import qualified Data.Vector as V
import GHC.TypeLits

import HLearn.Algebra
import HLearn.Models.Distributions.Common

-------------------------------------------------------------------------------
-- data types

newtype ParticleFunctor (seed::Nat) (n::Nat) dp = ParticleFunctor
    { datapoints :: V.Vector dp
    }
    deriving (Read,Show,Eq,Ord,Functor)

mkFunctor :: 

-------------------------------------------------------------------------------
-- algebra