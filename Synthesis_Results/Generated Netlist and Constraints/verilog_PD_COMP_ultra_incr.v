/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri Jun 20 12:53:11 2025
/////////////////////////////////////////////////////////////


module PD_COMP ( clk, rst, sig_ip, comp_ip, p_out, n_out );
  input clk, rst, sig_ip, comp_ip;
  output p_out, n_out;
  wire   sig_d, comp_d, N99, N100, N101, N102, N103, N125, N126, N127, n55,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116;
  wire   [3:0] state;

  dfcrq1 sig_d_reg ( .D(sig_ip), .CP(clk), .CDN(n55), .Q(sig_d) );
  dfcrq1 comp_d_reg ( .D(comp_ip), .CP(clk), .CDN(n55), .Q(comp_d) );
  lanhq2 \state_reg[0]  ( .E(N99), .D(N100), .Q(state[0]) );
  lanhq2 \state_reg[3]  ( .E(N99), .D(N103), .Q(state[3]) );
  lanhq2 \state_reg[2]  ( .E(N99), .D(N102), .Q(state[2]) );
  lanhq2 \state_reg[1]  ( .E(N99), .D(N101), .Q(state[1]) );
  lanhq1 p_out_reg ( .E(N125), .D(N126), .Q(p_out) );
  lanhq1 n_out_reg ( .E(N125), .D(N127), .Q(n_out) );
  aoi311d1 U70 ( .C1(n96), .C2(n77), .C3(n83), .A(n97), .B(n61), .ZN(N126) );
  inv0d1 U71 ( .I(state[3]), .ZN(n77) );
  inv0d1 U72 ( .I(state[0]), .ZN(n97) );
  nr03d0 U73 ( .A1(n84), .A2(n83), .A3(n82), .ZN(n94) );
  nr02d0 U74 ( .A1(n97), .A2(n80), .ZN(n91) );
  nd04d0 U75 ( .A1(n63), .A2(n71), .A3(n82), .A4(n116), .ZN(N99) );
  inv0d0 U76 ( .I(rst), .ZN(n55) );
  inv0d1 U77 ( .I(state[2]), .ZN(n96) );
  inv0d1 U78 ( .I(state[1]), .ZN(n83) );
  aoi21d1 U79 ( .B1(n83), .B2(n77), .A(n96), .ZN(n61) );
  aoi221d1 U80 ( .B1(state[2]), .B2(state[1]), .C1(n96), .C2(n83), .A(state[0]), .ZN(N127) );
  nr02d0 U81 ( .A1(state[3]), .A2(n83), .ZN(n62) );
  aoi31d1 U82 ( .B1(state[2]), .B2(n97), .B3(n83), .A(n62), .ZN(n63) );
  inv0d0 U83 ( .I(sig_ip), .ZN(n64) );
  nr02d0 U84 ( .A1(n64), .A2(sig_d), .ZN(n108) );
  inv0d0 U85 ( .I(n108), .ZN(n80) );
  inv0d0 U86 ( .I(comp_ip), .ZN(n69) );
  nr02d0 U87 ( .A1(n69), .A2(comp_d), .ZN(n98) );
  inv0d0 U88 ( .I(n98), .ZN(n78) );
  nr02d0 U89 ( .A1(n80), .A2(n78), .ZN(n84) );
  inv0d0 U90 ( .I(n84), .ZN(n71) );
  nr02d0 U91 ( .A1(n77), .A2(state[2]), .ZN(n66) );
  inv0d0 U92 ( .I(n66), .ZN(n82) );
  nd02d0 U93 ( .A1(n77), .A2(state[0]), .ZN(n116) );
  nr03d0 U94 ( .A1(state[3]), .A2(n83), .A3(n96), .ZN(n113) );
  aoi21d1 U95 ( .B1(n66), .B2(n83), .A(n113), .ZN(n68) );
  nd02d0 U96 ( .A1(sig_d), .A2(n64), .ZN(n103) );
  inv0d0 U97 ( .I(n116), .ZN(n107) );
  oai211d1 U98 ( .C1(n103), .C2(n83), .A(n98), .B(n96), .ZN(n65) );
  aoi21d1 U99 ( .B1(n107), .B2(n65), .A(n84), .ZN(n67) );
  nd02d0 U100 ( .A1(state[0]), .A2(n66), .ZN(n102) );
  oai211d1 U101 ( .C1(n68), .C2(n103), .A(n67), .B(n102), .ZN(N100) );
  nd02d0 U102 ( .A1(comp_d), .A2(n69), .ZN(n104) );
  inv0d0 U103 ( .I(n104), .ZN(n81) );
  aoi211d1 U104 ( .C1(state[1]), .C2(state[2]), .A(n84), .B(n77), .ZN(n70) );
  aon211d1 U105 ( .C1(n81), .C2(n113), .B(n70), .A(n103), .ZN(n76) );
  nr02d0 U106 ( .A1(state[1]), .A2(n84), .ZN(n105) );
  nd03d0 U107 ( .A1(n77), .A2(n71), .A3(state[1]), .ZN(n86) );
  aoi211d1 U108 ( .C1(state[0]), .C2(n86), .A(n80), .B(n96), .ZN(n74) );
  aon211d1 U109 ( .C1(n108), .C2(state[1]), .B(n104), .A(n71), .ZN(n72) );
  oan211d1 U110 ( .C1(state[1]), .C2(n103), .B(n72), .A(n102), .ZN(n73) );
  oan211d1 U111 ( .C1(state[0]), .C2(n105), .B(n74), .A(n73), .ZN(n75) );
  oai21d1 U112 ( .B1(state[0]), .B2(n76), .A(n75), .ZN(N103) );
  nd02d0 U113 ( .A1(n97), .A2(state[3]), .ZN(n115) );
  oai211d1 U114 ( .C1(state[0]), .C2(n78), .A(n77), .B(n80), .ZN(n79) );
  aon211d1 U115 ( .C1(n98), .C2(n103), .B(n115), .A(n79), .ZN(n90) );
  oai21d1 U116 ( .B1(state[0]), .B2(n103), .A(n81), .ZN(n93) );
  inv0d0 U117 ( .I(n93), .ZN(n85) );
  nr02d0 U118 ( .A1(n96), .A2(n86), .ZN(n95) );
  aoi22d1 U119 ( .A1(n85), .A2(n94), .B1(n95), .B2(n93), .ZN(n88) );
  aoi22d1 U120 ( .A1(state[0]), .A2(n103), .B1(n104), .B2(n97), .ZN(n112) );
  aoi221d1 U121 ( .B1(n98), .B2(state[0]), .C1(n108), .C2(n97), .A(n112), .ZN(
        n87) );
  nd12d0 U122 ( .A1(n86), .A2(n96), .ZN(n111) );
  oai22d1 U123 ( .A1(n91), .A2(n88), .B1(n87), .B2(n111), .ZN(n89) );
  aor31d1 U124 ( .B1(state[2]), .B2(n105), .B3(n90), .A(n89), .Z(N102) );
  inv0d0 U125 ( .I(n91), .ZN(n92) );
  oai211d1 U126 ( .C1(n95), .C2(n94), .A(n93), .B(n92), .ZN(n110) );
  inv0d0 U127 ( .I(n115), .ZN(n100) );
  aoi21d1 U128 ( .B1(n97), .B2(n96), .A(state[3]), .ZN(n99) );
  aon211d1 U129 ( .C1(n100), .C2(n103), .B(n99), .A(n98), .ZN(n101) );
  aon211d1 U130 ( .C1(n104), .C2(n103), .B(n102), .A(n101), .ZN(n106) );
  aon211d1 U131 ( .C1(n108), .C2(n107), .B(n106), .A(n105), .ZN(n109) );
  oai211d1 U132 ( .C1(n112), .C2(n111), .A(n110), .B(n109), .ZN(N101) );
  nr03d0 U133 ( .A1(n113), .A2(N126), .A3(N127), .ZN(n114) );
  aon211d1 U134 ( .C1(n116), .C2(n115), .B(state[1]), .A(n114), .ZN(N125) );
endmodule

