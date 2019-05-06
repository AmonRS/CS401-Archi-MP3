@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.2.1 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Mon May 06 10:10:33 -0700 2019
REM SW Build 2288692 on Thu Jul 26 18:24:02 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
echo "xvhdl --incr --relax -prj processor_testbench_vhdl.prj"
call xvhdl  --incr --relax -prj processor_testbench_vhdl.prj -log xvhdl.log
call type xvhdl.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
