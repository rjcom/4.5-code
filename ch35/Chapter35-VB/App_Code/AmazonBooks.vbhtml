@Helper TextAndImage(isbn As String)
    Dim src = "http://rcm.amazon.com/e/cm?lt1=_blank&bc1=000000&" & _ 
        "IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&o=1&p=8&l=as4&" & _ 
        "m=amazon&f=ifr&ref=ss_til&asins=" & isbn

@<iframe src="@src" style="width:120px;height:240px;" scrolling="no" 
    marginwidth="0" marginheight="0" frameborder="0"></iframe>
End Helper


@Helper TextOnly(isbn As String, title As String)
    Dim src = "http://www.amazon.com/gp/product/" & isbn & "/" & _
        "ref=as_li_ss_tl?ie=UTF8&linkCode=as2&camp=1789&" & _
        "creative=390957&creativeASIN=" & isbn
    Dim img = "http://www.assoc-amazon.com/e/ir?l=as2&o=1&a=" & isbn

@<a href="@src">@title</a>@<img src="@img" width="1" height="1" 
     border="0" alt="" style="border:none !important; margin:0px !important;" />
End Helper


@Helper ImageOnly(isbn As String)
    Dim src = "http://www.amazon.com/gp/product/" & isbn & "/" & _
        "ref=as_li_ss_il?ie=UTF8&linkCode=as2&camp=1789&" & _
        "creative=390957&creativeASIN=" & isbn
    Dim img = "http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&" & _ 
        "Format=_SL110_&ASIN=" & isbn & "&MarketPlace=US&" & _
        "ID=AsinImage&WS=1&ServiceVersion=20070822"

@<a href="@src"><img border="0" src="@img"></a>@<img 
    src="http://www.assoc-amazon.com/e/ir?l=as2&o=1&a=@isbn" width="1" 
    height="1" border="0" alt="" 
    style="border:none !important; margin:0px !important;" />
End Helper