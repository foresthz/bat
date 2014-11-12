git add . -A
if {%1}=={} goto setVal
set comment="%*"
goto commit
:setVal
set comment="mm"
:commit
git commit -m %comment%
git push origin
