git add . -A

if {%1}=={} goto setVal
rem "pull push, using [pp | branch ] as the first parameter, no need to use quotation marks"
rem "nopush | pull | push"
rem "nps 不提交到远程"
rem "pp 先从远程获取更新"
if {%1}=={pull} goto pull
if {%1}=={push} goto push
if {%1}=={pp} goto pp

set comment="%*"
git commit -m %comment%
goto push

:setVal
set comment="mm"
git commit -m %comment%
goto push
goto commit

:pull
set comment="pull"
git commit -m %comment%
git pull origin %2
goto push

:pp
set comment="%*"
git commit -m %comment%
git pull
goto push

:commit
git commit -m %comment%
if {%1}=={nopush} goto finish

:push
git push origin

:finish
