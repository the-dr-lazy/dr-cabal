{- |
Module                  : DrCabal
Copyright               : (c) 2022 Dmitrii Kovanikov
SPDX-License-Identifier : MPL-2.0
Maintainer              : Dmitrii Kovanikov <kovanikov@gmail.com>
Stability               : Experimental
Portability             : Portable

See README for more info.
-}

module DrCabal
    ( main
    ) where

import DrCabal.Cli (Command (..), readCommand)
import DrCabal.Profile (runProfile)
import DrCabal.Watch (runWatch)


main :: IO ()
main = readCommand >>= runDrCabal

runDrCabal :: Command -> IO ()
runDrCabal = \case
    Watch args   -> runWatch args
    Profile args -> runProfile args
