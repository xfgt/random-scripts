::This is random number generator written as a batch script.
::You can choose the range by setting the min and max values.

@echo off
set min=1 :: this
set max=10 :: this
set count=max

:target
set /a count=%count%-1
set /a result=(%random%*max/32768)+min
echo %result%
timeout 1 > NUL 
if %count% NEQ 0 goto target :: NEQ means "not equal"

