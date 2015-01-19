git add . -A

if {%1}=={} goto setVal
rem "pull push, using [pp | branch ] as the first parameter, no need to use quotation marks"
if {%1}=={pp} goto pull
set comment="%*"
git commit -m %comment%
goto push

:setVal
set comment="mm"
git commit -m %comment%
goto push

:pull
set comment="pull"
git commit -m %comment%
git pull origin %2
goto push

:push
git push origin
