var args;
var ctx;
          
function ValidateText(ctl)
{
    if (ctl.value='') {
        alert('Please enter a value.');
        ctl.focus();
    }
}
          
function CallbackHandler(args,ctx)
{
    alert("The data is valid");
}
          
function ErrorHandler(args,ctx)
{
    alert("Please enter a number");
}