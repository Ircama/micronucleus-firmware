@echo Upgrade Digispark Bootloader with micronucleus upload
set FILENAME=upgrade-t167_entry_on_powerOn_activePullup_fastExit.hex
@if exist %FILENAME% (
  %UserProfile%\AppData\Local\Arduino15\packages\digistump\tools\micronucleus\2.0a4\launcher -cdigispark -Uflash:w:%FILENAME%:i
  goto end
)
@rem Try another path
%UserProfile%\AppData\Local\Arduino15\packages\digistump\tools\micronucleus\2.0a4\launcher -cdigispark -Uflash:w:..\firmware\upgrades\%FILENAME%:i
:end
pause
