#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1074fc0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x1087c10_0 .var "A", 0 0;
v0x1087ce0_0 .net "AorB", 0 0, L_0x1087f20; 1 drivers
v0x1087d90_0 .var "B", 0 0;
v0x1087e40_0 .net "n_AorB", 0 0, L_0x1088070; 1 drivers
S_0x10750b0 .scope module, "dut" "demorgan" 2 9, 3 1, S_0x1074fc0;
 .timescale 0 0;
L_0x1087f20 .functor OR 1, v0x1087c10_0, v0x1087d90_0, C4<0>, C4<0>;
L_0x1088070 .functor NOT 1, L_0x1087f20, C4<0>, C4<0>, C4<0>;
v0x1075dd0_0 .net "A", 0 0, v0x1087c10_0; 1 drivers
v0x1087a20_0 .alias "AorB", 0 0, v0x1087ce0_0;
v0x1087ac0_0 .net "B", 0 0, v0x1087d90_0; 1 drivers
v0x1087b60_0 .alias "n_AorB", 0 0, v0x1087e40_0;
    .scope S_0x1074fc0;
T_0 ;
    %vpi_call 2 14 "$display", "A B | A+B | ~(A+B) ";
    %set/v v0x1087c10_0, 0, 1;
    %set/v v0x1087d90_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  |    %b  ", v0x1087c10_0, v0x1087d90_0, v0x1087ce0_0, v0x1087e40_0;
    %set/v v0x1087c10_0, 0, 1;
    %set/v v0x1087d90_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  |    %b  ", v0x1087c10_0, v0x1087d90_0, v0x1087ce0_0, v0x1087e40_0;
    %set/v v0x1087c10_0, 1, 1;
    %set/v v0x1087d90_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  |    %b  ", v0x1087c10_0, v0x1087d90_0, v0x1087ce0_0, v0x1087e40_0;
    %set/v v0x1087c10_0, 1, 1;
    %set/v v0x1087d90_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  |    %b  ", v0x1087c10_0, v0x1087d90_0, v0x1087ce0_0, v0x1087e40_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1_2.t.v";
    "./hw1_2.v";
