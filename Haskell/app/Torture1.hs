{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
import System.FilePath
import System.Directory
import qualified Data.ByteString as BS
import Data.Foldable (for_)
import Options.Generic

data Options = Options
  {
    outputDirectory :: FilePath,
    inputFilename :: FilePath,
    nFiles :: Int
  } deriving (Generic, Show, ParseRecord)

main :: IO ()
main = do
  Options{..} <- getRecord "Generates N copy of the input files"

  content <- BS.readFile inputFilename
  createDirectoryIfMissing False outputDirectory

  for_ [1 .. nFiles] $ \n -> do
    BS.writeFile (outputDirectory </> (show n) <.> "txt") content
