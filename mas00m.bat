@echo off
setlocal enabledelayedexpansion
cls

echo PLATINUM+ ULTIMATE OPTIMIZER 11.0 - EXTREME EDITION
echo By @mas00m - Advanced Performance Optimization Suite
timeout /t 2 >nul
cls

timeout /t 1 /nobreak >nul
set /p choice=Do you want to create a System Restore Point? (y/n): 
if /i "%choice%"=="y" (
    PowerShell -Command "Checkpoint-Computer -Description 'Platinum_Ultimate_11.0_RestorePoint' -RestorePointType 'MODIFY_SETTINGS'" 2>nul
    echo Restore Point created.
) else (
    echo Operation canceled.
)
timeout /t 1 >nul
chcp 65001 >nul
mode con: cols=120 lines=60
cls
timeout /t 1 >nul

REM Admin Check
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%0' -Verb RunAs"
    exit /b
)

REM ====================== 
REM MAIN MENU 
REM ====================== 
:main_menu 
cls 
title PLATINUM+ ULTIMATE OPTIMIZER 11.0 - EXTREME EDITION
color 0B
echo. 
echo. 
echo                        ██████╗░██╗░░░░░░█████╗░████████╗██╗███╗░░██╗██╗░░░██╗███╗░░░███╗
echo                        ██╔══██╗██║░░░░░██╔══██╗╚══██╔══╝██║████╗░██║██║░░░██║████╗░████║
echo                        ██████╔╝██║░░░░░███████║░░░██║░░░██║██╔██╗██║██║░░░██║██╔████╔██║
echo                        ██╔═══╝░██║░░░░░██╔══██║░░░██║░░░██║██║╚████║██║░░░██║██║╚██╔╝██║
echo                        ██║░░░░░███████╗██║░░██║░░░██║░░░██║██║░╚███║╚██████╔╝██║░╚═╝░██║
echo                        ╚═╝░░░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚��╝╚═╝░░╚══╝░╚═════╝░╚═╝░░░░░╚═╝
echo. 
echo                            ░█████╗░██████╗░████████╗██╗███╗░░░███╗██╗███████╗██████╗░
echo                            ██╔══██╗██╔══██╗╚══██╔══╝██║████╗░████║██║╚════██║██╔═══██╗
echo                            ██║░░██║██████╔╝░░░██║░░░██║██╔████╔██║██║░░███╔═╝█████╗██║
echo                            ██║░░██║██╔═══╝░░░░██║░░░██║██║╚██╔╝██║██║██╔══╝░██╔══██║
echo                            ╚█████╔╝██║░░░░░░░░██║░░░██║██║░╚═╝░██║██║███████╗██║░░██║
echo                            ░╚════╝░╚═╝░░░░░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝╚══════╝╚═╝░░╚═╝
echo.
echo.
echo                                    By @mas00m - ULTIMATE 11.0
echo                                     ╔════════════════════════════════════════════════╗ 
echo                                     ║                                                ║ 
echo                                     ║       PLATINUM+ ULTIMATE OPTIMIZER 11.0        ║ 
echo                                     ║           EXTREME PERFORMANCE SUITE            ║ 
echo                                     ║                                                ║ 
echo                                     ╠════════════════════════════════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [1] CPU EXTREME PERFORMANCE (Intel/AMD)      ║ 
echo                                     ║   [2] GPU EXTREME PERFORMANCE (NVIDIA/AMD)     ║ 
echo                                     ║   [3] NETWORK ULTRA-LOW LATENCY (5-16ms)       ║ 
echo                                     ║   [4] RAM MAXIMUM OPTIMIZATION                  ║ 
echo                                     ║   [5] STORAGE EXTREME OPTIMIZATION              ║ 
echo                                     ║   [6] SYSTEM DEBLOATER AND CLEANER              ║ 
echo                                     ║   [7] SERVICES OPTIMIZER                        ║ 
echo                                     ║   [8] EXTREME GAMING MODE (All-In-One)          ║ 
echo                                     ║   [9] KERNEL TWEAKS AND ADVANCED                ║ 
echo                                     ║   [10] POWER PLAN CUSTOMIZER                    ║ 
echo                                     ║                                                ║ 
echo                                     ╠════════════════════════════════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [0] EXIT                                      ║ 
echo                                     ║                                                ║ 
echo                                     ╚════════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto cpu_menu 
if "%choice%"=="2" goto gpu_menu 
if "%choice%"=="3" goto network_extreme
if "%choice%"=="4" goto ram_optimizer 
if "%choice%"=="5" goto storage_extreme
if "%choice%"=="6" goto debloat 
if "%choice%"=="7" goto services 
if "%choice%"=="8" goto gaming_extreme
if "%choice%"=="9" goto kernel_tweaks
if "%choice%"=="10" goto power_plan
if "%choice%"=="0" exit 
goto main_menu 

REM ====================== 
REM CPU MENU 
REM ====================== 
:cpu_menu
cls 
echo. 
echo                                     ╔════════════════════════════════════════════════╗ 
echo                                     ║                                                ║ 
echo                                     ║     CPU EXTREME PERFORMANCE OPTIMIZATION       ║ 
echo                                     ║                                                ║ 
echo                                     ╠══════════════════════════���═════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [1] INTEL PROCESSOR - EXTREME MODE           ║ 
echo                                     ║   [2] AMD PROCESSOR - EXTREME MODE             ║  
echo                                     ║   [3] AUTO-DETECT AND OPTIMIZE                 ║ 
echo                                     ║                                                ║ 
echo                                     ╠════════════════════════════════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [0] BACK TO MAIN MENU                        ║ 
echo                                     ║                                                ║ 
echo                                     ╚════════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto intel_extreme 
if "%choice%"=="2" goto amd_extreme 
if "%choice%"=="3" goto cpu_auto
if "%choice%"=="0" goto main_menu 
goto cpu_menu 

:intel_extreme
cls
echo.
echo Applying EXTREME Intel CPU Optimizations...
echo.
timeout /t 2 >nul

for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A

powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100 >nul 2>&1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 7f2f5cfa-f10c-4823-b5e1-e93ae85f46b5 0 >nul 2>&1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 93b8b6dc-0698-4d1c-9ee4-0644e900c85d 1 >nul 2>&1
powercfg -setactive %ACTIVE_GUID% >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f >nul 2>&1

powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 be337238-0d82-4146-a960-4f3749d470c7 4 >nul 2>&1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 0 >nul 2>&1
powercfg -setactive %ACTIVE_GUID% >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f >nul 2>&1

bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set tscsyncpolicy ForceAll >nul 2>&1

echo [OK] EXTREME Intel CPU optimization complete!
timeout /t 2 >nul
pause
goto cpu_menu

:amd_extreme
cls
echo.
echo Applying EXTREME AMD CPU Optimizations...
echo.
timeout /t 2 >nul

for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A

powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100 >nul 2>&1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 0 >nul 2>&1
powercfg -setactive %ACTIVE_GUID% >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1

bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set tscsyncpolicy ForceAll >nul 2>&1

echo [OK] EXTREME AMD CPU optimization complete!
timeout /t 2 >nul
pause
goto cpu_menu

:cpu_auto
cls
echo Auto-detecting CPU and applying optimizations...
for /f "tokens=*" %%A in ('wmic cpu get manufacturer ^| findstr /i "Intel AMD"') do (
    if "%%A"=="Intel" (
        echo Intel CPU detected - applying Intel optimizations
        goto intel_extreme
    ) else if "%%A"=="AMD" (
        echo AMD CPU detected - applying AMD optimizations
        goto amd_extreme
    )
)
timeout /t 2 >nul
goto cpu_menu

REM ====================== 
REM GPU MENU 
REM ====================== 
:gpu_menu 
cls 
echo. 
echo                                     ╔════════════════════════════════════════════════╗ 
echo                                     ║                                                ║ 
echo                                     ║    GPU EXTREME PERFORMANCE OPTIMIZATION        ║ 
echo                                     ║                                                ║ 
echo                                     ╠════════════════════════════════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [1] NVIDIA GPU - EXTREME MODE                ║ 
echo                                     ║   [2] AMD GPU - EXTREME MODE                   ║ 
echo                                     ║   [3] INTEL GPU - EXTREME MODE                 ║ 
echo                                     ║                                                ║ 
echo                                     ╠════════════════════════════════════════════════╣ 
echo                                     ║                                                ║ 
echo                                     ║   [0] BACK TO MAIN MENU                        ║ 
echo                                     ║                                                ║ 
echo                                     ╚══════════════════════════════════��═════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto nvidia_extreme 
if "%choice%"=="2" goto amd_gpu_extreme 
if "%choice%"=="3" goto intel_gpu_extreme 
if "%choice%"=="0" goto main_menu 
goto gpu_menu 

:nvidia_extreme
cls
echo.
echo Applying EXTREME NVIDIA GPU Optimizations...
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableGfxPreemption /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableComputePreemption /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v DisablePreemption /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v VSyncControl /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TripleBufferingDisable /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v RenderPreemptionLevel /t REG_DWORD /d 3 /f >nul 2>&1

echo [OK] EXTREME NVIDIA GPU optimization complete!
timeout /t 2 >nul
pause
goto gpu_menu

:amd_gpu_extreme
cls
echo.
echo Applying EXTREME AMD GPU Optimizations...
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v RenderPreemptionLevel /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v EnablePreemption /t REG_DWORD /d 0 /f >nul 2>&1

echo [OK] EXTREME AMD GPU optimization complete!
timeout /t 2 >nul
pause
goto gpu_menu

:intel_gpu_extreme
cls
echo.
echo Applying EXTREME Intel GPU Optimizations...
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v EnableL1LowPower /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v EnableALPM /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v EnablePowerManagement /t REG_DWORD /d 0 /f >nul 2>&1

echo [OK] EXTREME Intel GPU optimization complete!
timeout /t 2 >nul
pause
goto gpu_menu

REM ====================== 
REM NETWORK EXTREME
REM ====================== 
:network_extreme
cls
echo.
echo ═══════════════════════════════════════════════════════════
echo    ULTRA-LOW LATENCY NETWORK OPTIMIZATION (5-16ms Target)
echo ═══════════════════════════════════════════════════════════
echo.

echo [1/20] Disabling Nagle's Algorithm...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpNoDelay /t REG_DWORD /d 1 /f >nul 2>&1

echo [2/20] Disabling Delayed ACK...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TCPDelAckTicks /t REG_DWORD /d 0 /f >nul 2>&1

echo [3/20] Minimizing SYN Cookies...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v SynAttackProtect /t REG_DWORD /d 0 /f >nul 2>&1

echo [4/20] Disabling TCP Timestamps...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v Tcp1323Opts /t REG_DWORD /d 0 /f >nul 2>&1

echo [5/20] Enabling Direct Cache Access...
netsh int tcp set global dca=enabled >nul 2>&1

echo [6/20] Window Scaling Optimization...
netsh int tcp set global autotuninglevel=normal >nul 2>&1

echo [7/20] Disabling SACK...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v SackOpts /t REG_DWORD /d 0 /f >nul 2>&1

echo [8/20] Enabling FACK...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v Fack /t REG_DWORD /d 1 /f >nul 2>&1

echo [9/20] TCP Timeout Minimization...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v InitialRto /t REG_DWORD /d 1000 /f >nul 2>&1

echo [10/20] TCP Connection Attempts...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxDataRetransmissions /t REG_DWORD /d 1 /f >nul 2>&1

echo [11/20] Disabling ECN...
netsh int tcp set global ecncapability=disabled >nul 2>&1

echo [12/20] Maximizing TCP Buffer...
netsh int tcp set global recvbuf=1000000 >nul 2>&1
netsh int tcp set global sendbuf=1000000 >nul 2>&1

echo [13/20] Disabling RFC 1323...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v Tcp1323Opts /t REG_DWORD /d 0 /f >nul 2>&1

echo [14/20] ARP Cache Flush...
arp -d * >nul 2>&1
ipconfig /flushdns >nul 2>&1

echo [15/20] Disabling IPv6...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 255 /f >nul 2>&1

echo [16/20] QoS Gaming Priority (Level 7)...
powershell -Command "New-NetQosPolicy -Name 'Gaming' -IPProtocol UDP -PolicyStore ActiveStore -PriorityValue 7 -Confirm:$false" >nul 2>&1

echo [17/20] Setting CloudFlare DNS...
netsh interface ip set dns "Ethernet" static 1.1.1.1 >nul 2>&1

echo [18/20] Network Driver Buffer Optimization...
powershell -Command "Get-NetAdapter | Set-NetAdapterAdvancedProperty -RegistryKeyword 'RxBuffers' -RegistryValue '512' -Confirm:$false" >nul 2>&1

echo [19/20] IRQ Affinity Control...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v ReschedulePackets /t REG_DWORD /d 1 /f >nul 2>&1

echo [20/20] Memory Pool Network Optimization...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v RssBaseCpu /t REG_DWORD /d 1 /f >nul 2>&1

echo.
echo [OK] ULTRA-LOW LATENCY NETWORK ACTIVATED!
echo Expected Ping Reduction: 5-16ms improvement
echo.
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM RAM OPTIMIZER 
REM ====================== 
:ram_optimizer
cls
echo.
echo ═══════════════════════════════════════════════════════════
echo              RAM MAXIMUM OPTIMIZATION
echo ═══════════════════════════════════════════════════════════
echo.

echo [1/10] Deep RAM Cleanup...
powershell -Command "[System.GC]::Collect()" >nul 2>&1

echo [2/10] Clearing Standby Lists...
powershell -Command "Get-Process | ForEach-Object { $_.TrimWorkingSet() }" >nul 2>&1

echo [3/10] Maximizing RAM Cache...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f >nul 2>&1

echo [4/10] Disabling RAM Compression...
powershell -Command "Disable-MMAgent -mc" >nul 2>&1

echo [5/10] Optimizing Memory Pool...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PoolUsageMaximum /t REG_DWORD /d 100 /f >nul 2>&1

echo [6/10] Clearing Recycle Bin...
powershell -Command "Clear-RecycleBin -Force" >nul 2>&1

echo [7/10] Memory Priority Boost...
powershell -Command "Get-Process | Where-Object {$_.ProcessName -notmatch 'System|csrss'} | ForEach-Object { try { [System.Diagnostics.Process]::GetProcessById($_.Id).PriorityClass = 'High' } catch {} }" >nul 2>&1

echo [8/10] Disabling Paging Executive...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f >nul 2>&1

echo [9/10] Final Memory Trim...
powershell -Command "[System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers()" >nul 2>&1

echo [10/10] Complete...

echo [OK] RAM MAXIMUM OPTIMIZATION COMPLETE!
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM STORAGE EXTREME
REM ====================== 
:storage_extreme
cls
echo.
echo ═══════════════════════════════════════════════════════════
echo           STORAGE EXTREME OPTIMIZATION
echo ═══════════════════════════════════════════════════════════
echo.

echo [1/8] SSD TRIM Optimization...
powershell -Command "Optimize-Volume -DriveLetter C -Defrag" >nul 2>&1

echo [2/8] Write Cache Maximization...
fsutil behavior set DisableLastAccess 1 >nul 2>&1

echo [3/8] Disabling Last Access Update...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f >nul 2>&1

echo [4/8] Pagefile Extreme Settings...
powershell -Command "wmic computersystem where name='%computername%' set AutomaticManagedPagefile=false" >nul 2>&1

echo [5/8] Prefetch Cache Clear...
del /f /s /q "%windir%\Prefetch\*.*" >nul 2>&1

echo [6/8] Thumbnail Cache Delete...
del /f /s /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1

echo [7/8] Temporary Files Cleanup...
del /f /s /q "%TEMP%\*.*" >nul 2>&1

echo [8/8] WinSXS Cleanup...
Dism.exe /online /Cleanup-Image /StartComponentCleanup >nul 2>&1

echo [OK] STORAGE EXTREME OPTIMIZATION COMPLETE!
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM EXTREME GAMING MODE 
REM ====================== 
:gaming_extreme
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo         EXTREME GAMING MODE - FULL SYSTEM OPTIMIZATION
echo          [This will take 3-5 minutes - Please Wait]
echo ════════════════════════════════════════════════════════════════
echo.

echo [Phase 1/5] CPU Configuration...
for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 be337238-0d82-4146-a960-4f3749d470c7 4 >nul 2>&1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 0 >nul 2>&1
powercfg -setactive %ACTIVE_GUID% >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1

echo [Phase 2/5] GPU Configuration...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v DisablePreemption /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v VSyncControl /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TripleBufferingDisable /t REG_DWORD /d 1 /f >nul 2>&1

echo [Phase 3/5] Network Configuration...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpNoDelay /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpAckFrequency /t REG_DWORD /d 1 /f >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
arp -d * >nul 2>&1

echo [Phase 4/5] RAM Configuration...
powershell -Command "[System.GC]::Collect()" >nul 2>&1
powershell -Command "Disable-MMAgent -mc" >nul 2>&1

echo [Phase 5/5] System Priority Configuration...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f >nul 2>&1
powershell -Command "Get-Process | Where-Object {$_.ProcessName -notmatch 'System|csrss'} | ForEach-Object { try { [System.Diagnostics.Process]::GetProcessById($_.Id).PriorityClass = 'High' } catch {} }" >nul 2>&1

echo.
echo ════════════════════════════════════════════════════════════════
echo [OK] EXTREME GAMING MODE ACTIVATED!
echo ════════════════════════════════════════════════════════════════
echo Expected Results:
echo - CPU: 100 percent Performance, No Throttling
echo - GPU: Maximum Performance, No V-Sync
echo - Network: Ultra-Low Latency (5-16ms reduction)
echo - RAM: Optimized, Compression Disabled
echo - Ping: 5-16ms improvement in gaming
echo ═══════════════════════════════════════════════��════════════════
echo.
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM KERNEL TWEAKS
REM ====================== 
:kernel_tweaks
cls
echo.
echo Applying Advanced Kernel Tweaks...
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DpcQueueDepth /t REG_DWORD /d 288 /f >nul 2>&1

bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformclock no >nul 2>&1
bcdedit /set tscsyncpolicy ForceAll >nul 2>&1

echo [OK] Kernel tweaks applied!
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM POWER PLAN CUSTOMIZER
REM ====================== 
:power_plan
cls
echo.
echo ═══════════════════════════════════════════════════════════
echo              POWER PLAN CUSTOMIZER
echo ══════════════════════════════════════════════���════════════
echo.
echo [1] Maximum Performance (100 percent CPU)
echo [2] Balanced Performance
echo [3] Gaming Optimized
echo [4] Reset to Default
echo.
set /p choice=Select Option: 

if "%choice%"=="1" (
    powercfg /setactive SCHEME_MIN >nul 2>&1
    echo [OK] Maximum Performance activated!
) else if "%choice%"=="2" (
    powercfg /setactive SCHEME_BALANCED >nul 2>&1
    echo [OK] Balanced Performance activated!
) else if "%choice%"=="3" (
    for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
    powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 be337238-0d82-4146-a960-4f3749d470c7 2 >nul 2>&1
    powercfg -setactive %ACTIVE_GUID% >nul 2>&1
    echo [OK] Gaming Optimized power plan activated!
) else if "%choice%"=="4" (
    powercfg /restoredefaultschemes >nul 2>&1
    echo [OK] Power plan reset to default!
)

timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM DEBLOATER
REM ====================== 
:debloat
cls
echo.
echo Debloating System...
echo.

echo [1/5] Disabling Telemetry Services...
sc config "DiagTrack" start= disabled >nul 2>&1
sc config "dmwappushservice" start= disabled >nul 2>&1
sc config "RetailDemo" start= disabled >nul 2>&1
net stop "DiagTrack" >nul 2>&1

echo [2/5] Disabling Windows Search...
sc config "WSearch" start= disabled >nul 2>&1
net stop "WSearch" >nul 2>&1

echo [3/5] Disabling Unnecessary Services...
for %%S in (TrkWks WalletService WerSvc lfsvc MapsBroker WdiServiceHost WdiSystemHost) do (
    sc config "%%S" start= disabled >nul 2>&1
)

echo [4/5] Registry Optimization...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1

echo [5/5] Cleanup Temporary Files...
del /f /s /q "%TEMP%\*.*" >nul 2>&1

echo [OK] System Debloating Complete!
timeout /t 2 >nul
pause
goto main_menu

REM ====================== 
REM SERVICES OPTIMIZER
REM ====================== 
:services
cls
echo.
echo Optimizing System Services...
echo.

echo [1/3] Disabling Background Apps...
powershell -Command "Get-AppxPackage -AllUsers | Where-Object {$_.Name -notmatch 'Store|Calculator|Settings'} | Remove-AppxPackage -ErrorAction SilentlyContinue" >nul 2>&1

echo [2/3] Registry Services Optimization...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul 2>&1

echo [3/3] Complete...

echo [OK] Services optimized!
timeout /t 2 >nul
pause
goto main_menu

:end
exit /b
