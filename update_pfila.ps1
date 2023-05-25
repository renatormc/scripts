$destFolder = $args[0]
$sourceFolder = "\\10.147.20.22\storage\renato\fotos"
$robocopyArgs = "/mir /z /fft /r:3 /w:5"
robocopy $sourceFolder $destinationFolder $robocopyArgs
