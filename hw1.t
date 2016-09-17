#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x9b6f20 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x9ca9c0_0 .var "A", 0 0;
v0x9caa90_0 .var "B", 0 0;
v0x9cab40_0 .net "nA", 0 0, L_0x9cad80; 1 drivers
v0x9cabf0_0 .net "nAandnB", 0 0, L_0x9caf80; 1 drivers
v0x9cacd0_0 .net "nB", 0 0, L_0x9cae80; 1 drivers
S_0x9b7010 .scope module, "dut" "demorgan" 2 9, 3 1, S_0x9b6f20;
 .timescale 0 0;
L_0x9cad80 .functor NOT 1, v0x9ca9c0_0, C4<0>, C4<0>, C4<0>;
L_0x9cae80 .functor NOT 1, v0x9caa90_0, C4<0>, C4<0>, C4<0>;
L_0x9caf80 .functor AND 1, L_0x9cad80, L_0x9cae80, C4<1>, C4<1>;
v0x9b7100_0 .net "A", 0 0, v0x9ca9c0_0; 1 drivers
v0x9ca730_0 .net "B", 0 0, v0x9caa90_0; 1 drivers
v0x9ca7d0_0 .alias "nA", 0 0, v0x9cab40_0;
v0x9ca870_0 .alias "nAandnB", 0 0, v0x9cabf0_0;
v0x9ca920_0 .alias "nB", 0 0, v0x9cacd0_0;
    .scope S_0x9b6f20;
T_0 ;
    %vpi_call 2 14 "$display", "A B | ~A ~B | ~A~B ";
    %set/v v0x9ca9c0_0, 0, 1;
    %set/v v0x9caa90_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  %b |    %b  ", v0x9ca9c0_0, v0x9caa90_0, v0x9cab40_0, v0x9cacd0_0, v0x9cabf0_0;
    %set/v v0x9ca9c0_0, 0, 1;
    %set/v v0x9caa90_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  %b |    %b  ", v0x9ca9c0_0, v0x9caa90_0, v0x9cab40_0, v0x9cacd0_0, v0x9cabf0_0;
    %set/v v0x9ca9c0_0, 1, 1;
    %set/v v0x9caa90_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  %b |    %b  ", v0x9ca9c0_0, v0x9caa90_0, v0x9cab40_0, v0x9cacd0_0, v0x9cabf0_0;
    %set/v v0x9ca9c0_0, 1, 1;
    %set/v v0x9caa90_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  %b |    %b  ", v0x9ca9c0_0, v0x9caa90_0, v0x9cab40_0, v0x9cacd0_0, v0x9cabf0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
