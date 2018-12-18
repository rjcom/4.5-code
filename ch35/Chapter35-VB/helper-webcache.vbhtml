@Code
    Dim toCache = WebCache.Get("cacheTimestamp")

    If (toCache = Nothing) Then
        toCache = DateTime.Now
        WebCache.Set("cacheTimestamp",toCache,1,False)
    End If
End Code

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        @toCache
    </body>
</html>
