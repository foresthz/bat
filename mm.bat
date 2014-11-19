git add . -A
if {%1}=={} goto setVal
rem "pull push, using [pp | branch ] as the first parameter, no need to use quotation marks"
if {%1}=={pp} goto pull
set comment="%*"
goto commit

:setVal
set comment="mm"
goto commit
:pull
set comment="pull"
git pull origin %2
goto commit

:commit
git commit -m %comment%
git push origin
