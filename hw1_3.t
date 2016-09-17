#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xf57fc0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0xf6b9e0_0 .var "A", 0 0;
v0xf6bab0_0 .var "B", 0 0;
v0xf6bb60_0 .net "nA", 0 0, L_0xf6bda0; 1 drivers
v0xf6bc10_0 .net "nAornB", 0 0, L_0xf6bfa0; 1 drivers
v0xf6bcf0_0 .net "nB", 0 0, L_0xf6bea0; 1 drivers
S_0xf580b0 .scope module, "dut" "demorgan" 2 9, 3 1, S_0xf57fc0;
 .timescale 0 0;
L_0xf6bda0 .functor NOT 1, v0xf6b9e0_0, C4<0>, C4<0>, C4<0>;
L_0xf6bea0 .functor NOT 1, v0xf6bab0_0, C4<0>, C4<0>, C4<0>;
L_0xf6bfa0 .functor OR 1, L_0xf6bda0, L_0xf6bea0, C4<0>, C4<0>;
v0xf37e40_0 .net "A", 0 0, v0xf6b9e0_0; 1 drivers
v0xf6b750_0 .net "B", 0 0, v0xf6bab0_0; 1 drivers
v0xf6b7f0_0 .alias "nA", 0 0, v0xf6bb60_0;
v0xf6b890_0 .alias "nAornB", 0 0, v0xf6bc10_0;
v0xf6b940_0 .alias "nB", 0 0, v0xf6bcf0_0;
    .scope S_0xf57fc0;
T_0 ;
    %vpi_call 2 14 "$display", "A B | ~A ~B | ~A+~B ";
    %set/v v0xf6b9e0_0, 0, 1;
    %set/v v0xf6bab0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  %b |    %b  ", v0xf6b9e0_0, v0xf6bab0_0, v0xf6bb60_0, v0xf6bcf0_0, v0xf6bc10_0;
    %set/v v0xf6b9e0_0, 0, 1;
    %set/v v0xf6bab0_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  %b |    %b  ", v0xf6b9e0_0, v0xf6bab0_0, v0xf6bb60_0, v0xf6bcf0_0, v0xf6bc10_0;
    %set/v v0xf6b9e0_0, 1, 1;
    %set/v v0xf6bab0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  %b |    %b  ", v0xf6b9e0_0, v0xf6bab0_0, v0xf6bb60_0, v0xf6bcf0_0, v0xf6bc10_0;
    %set/v v0xf6b9e0_0, 1, 1;
    %set/v v0xf6bab0_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  %b |    %b  ", v0xf6b9e0_0, v0xf6bab0_0, v0xf6bb60_0, v0xf6bcf0_0, v0xf6bc10_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1_3.t.v";
    "./hw1_3.v";
