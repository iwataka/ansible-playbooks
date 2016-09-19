$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
$p1 = "C:\Program Files\Git"
$p2 = "C:\Program Files\Git\usr\bin"
if ($path.Contains($p1)) { $path += ";" + $p1 }
if ($path.Contains($p2)) { $path += ";" + $p2 }
[Environment]::SetEnvironmentVariable("PATH", $path, "Machine")
