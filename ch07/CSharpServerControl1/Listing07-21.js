function ValidateText(ctl)
{
    if (ctl.value=='') {
        alert('Please enter a value.');
        ctl.focus();
    }
}