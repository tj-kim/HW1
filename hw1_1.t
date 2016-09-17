#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x991fc0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x9a4bf0_0 .var "A", 0 0;
v0x9a4cc0_0 .net "AandB", 0 0, L_0x9a4f00; 1 drivers
v0x9a4d70_0 .var "B", 0 0;
v0x9a4e20_0 .net "n_AandB", 0 0, L_0x9a5050; 1 drivers
S_0x9920b0 .scope module, "dut" "demorgan" 2 9, 3 1, S_0x991fc0;
 .timescale 0 0;
L_0x9a4f00 .functor AND 1, v0x9a4bf0_0, v0x9a4d70_0, C4<1>, C4<1>;
L_0x9a5050 .functor NOT 1, L_0x9a4f00, C4<0>, C4<0>, C4<0>;
v0x992dd0_0 .net "A", 0 0, v0x9a4bf0_0; 1 drivers
v0x9a4a00_0 .alias "AandB", 0 0, v0x9a4cc0_0;
v0x9a4aa0_0 .net "B", 0 0, v0x9a4d70_0; 1 drivers
v0x9a4b40_0 .alias "n_AandB", 0 0, v0x9a4e20_0;
    .scope S_0x991fc0;
T_0 ;
    %vpi_call 2 14 "$display", "A B |  AB | ~(AB) ";
    %set/v v0x9a4bf0_0, 0, 1;
    %set/v v0x9a4d70_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  |    %b  ", v0x9a4bf0_0, v0x9a4d70_0, v0x9a4cc0_0, v0x9a4e20_0;
    %set/v v0x9a4bf0_0, 0, 1;
    %set/v v0x9a4d70_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  |    %b  ", v0x9a4bf0_0, v0x9a4d70_0, v0x9a4cc0_0, v0x9a4e20_0;
    %set/v v0x9a4bf0_0, 1, 1;
    %set/v v0x9a4d70_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  |    %b  ", v0x9a4bf0_0, v0x9a4d70_0, v0x9a4cc0_0, v0x9a4e20_0;
    %set/v v0x9a4bf0_0, 1, 1;
    %set/v v0x9a4d70_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b  |    %b  ", v0x9a4bf0_0, v0x9a4d70_0, v0x9a4cc0_0, v0x9a4e20_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1_1.t.v";
    "./hw1_1.v";
