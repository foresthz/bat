git add . -A
if {%1}=={} goto setVal
rem "pull push, using [pp | branch ] as the first parameter, no need to use quotation marks"
rem "nopush | pull | push"
rem "nps 不提交到远程"
rem "pp 先从远程获取更新"
if {%1}=={pull} goto pull
if {%1}=={push} goto push

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
if {%1}=={nopush} goto finish

:push
git push origin

:finish
