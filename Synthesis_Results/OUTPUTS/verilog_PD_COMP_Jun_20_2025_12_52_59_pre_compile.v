/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP1
// Date      : Fri Jun 20 12:53:00 2025
/////////////////////////////////////////////////////////////


module PD_COMP ( clk, rst, sig_ip, comp_ip, p_out, n_out );
  input clk, rst, sig_ip, comp_ip;
  output p_out, n_out;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, sig_d, comp_d, sig_rising, sig_falling, comp_rising,
         comp_falling, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137;
  wire   [3:0] state;

  \**SEQGEN**  sig_d_reg ( .clear(rst), .preset(1'b0), .next_state(sig_ip), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sig_d), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  comp_d_reg ( .clear(rst), .preset(1'b0), .next_state(comp_ip), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(comp_d), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C25 ( .A(state[1]), .B(N115), .Z(N21) );
  GTECH_OR2 C26 ( .A(N116), .B(N21), .Z(N22) );
  GTECH_OR2 C30 ( .A(N114), .B(state[0]), .Z(N24) );
  GTECH_OR2 C31 ( .A(N116), .B(N24), .Z(N25) );
  GTECH_OR2 C40 ( .A(state[3]), .B(N119), .Z(N28) );
  GTECH_OR2 C42 ( .A(N28), .B(N47), .Z(N29) );
  GTECH_OR2 C48 ( .A(N28), .B(N21), .Z(N31) );
  GTECH_OR2 C54 ( .A(N28), .B(N24), .Z(N33) );
  GTECH_OR2 C61 ( .A(N28), .B(N117), .Z(N35) );
  GTECH_OR2 C64 ( .A(N120), .B(state[2]), .Z(N37) );
  GTECH_OR2 C66 ( .A(N37), .B(N47), .Z(N38) );
  GTECH_OR2 C72 ( .A(N37), .B(N21), .Z(N40) );
  GTECH_OR2 C78 ( .A(N37), .B(N24), .Z(N42) );
  GTECH_OR2 C85 ( .A(N37), .B(N117), .Z(N44) );
  GTECH_OR2 C89 ( .A(N120), .B(N119), .Z(N46) );
  GTECH_OR2 C90 ( .A(state[1]), .B(state[0]), .Z(N47) );
  GTECH_OR2 C91 ( .A(N46), .B(N47), .Z(N48) );
  \**SEQGEN**  \state_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N103), .enable(N99), .Q(state[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \state_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N102), .enable(N99), .Q(state[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \state_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N101), .enable(N99), .Q(state[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \state_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N100), .enable(N99), .Q(state[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  GTECH_OR2 C363 ( .A(state[3]), .B(state[2]), .Z(N116) );
  GTECH_OR2 C364 ( .A(N114), .B(N115), .Z(N117) );
  GTECH_OR2 C365 ( .A(N116), .B(N117), .Z(N118) );
  \**SEQGEN**  p_out_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N126), .enable(N125), .Q(p_out), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  n_out_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N127), .enable(N125), .Q(n_out), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  SELECT_OP C397 ( .DATA1({1'b1, 1'b1}), .DATA2({1'b1, 1'b0}), .DATA3({1'b0, 
        1'b1}), .CONTROL1(N0), .CONTROL2(N105), .CONTROL3(N51), .Z({N53, N52})
         );
  GTECH_BUF B_0 ( .A(sig_rising), .Z(N0) );
  SELECT_OP C398 ( .DATA1({1'b1, 1'b0}), .DATA2({1'b1, 1'b1}), .DATA3({1'b0, 
        1'b1}), .CONTROL1(N1), .CONTROL2(N107), .CONTROL3(N55), .Z({N57, N56})
         );
  GTECH_BUF B_1 ( .A(comp_falling), .Z(N1) );
  SELECT_OP C399 ( .DATA1({1'b1, 1'b0, 1'b1}), .DATA2({1'b1, 1'b1, 1'b0}), 
        .DATA3({1'b0, 1'b1, 1'b1}), .CONTROL1(N2), .CONTROL2(N109), .CONTROL3(
        N59), .Z({N62, N61, N60}) );
  GTECH_BUF B_2 ( .A(sig_falling), .Z(N2) );
  SELECT_OP C400 ( .DATA1({1'b1, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b1}), 
        .DATA3({1'b0, 1'b1, 1'b0}), .CONTROL1(N0), .CONTROL2(N105), .CONTROL3(
        N51), .Z({N65, N64, N63}) );
  SELECT_OP C401 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .CONTROL1(N0), 
        .CONTROL2(N105), .CONTROL3(N51), .Z(N66) );
  SELECT_OP C402 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({1'b1, 1'b0, 1'b0}), 
        .DATA3({1'b0, 1'b1, 1'b0}), .CONTROL1(N2), .CONTROL2(N110), .CONTROL3(
        N68), .Z({N71, N70, N69}) );
  SELECT_OP C403 ( .DATA1({1'b1, 1'b0}), .DATA2({1'b0, 1'b0}), .DATA3({1'b0, 
        1'b1}), .CONTROL1(N0), .CONTROL2(N111), .CONTROL3(N73), .Z({N75, N74})
         );
  SELECT_OP C404 ( .DATA1({1'b0, 1'b1}), .DATA2({1'b1, 1'b0}), .DATA3({1'b0, 
        1'b0}), .CONTROL1(N2), .CONTROL2(N109), .CONTROL3(N59), .Z({N77, N76})
         );
  SELECT_OP C405 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N2), 
        .CONTROL2(N110), .CONTROL3(N68), .Z(N78) );
  SELECT_OP C406 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .CONTROL1(N2), 
        .CONTROL2(N110), .CONTROL3(N68), .Z(N79) );
  SELECT_OP C407 ( .DATA1({1'b1, 1'b0}), .DATA2({1'b0, 1'b1}), .DATA3({1'b1, 
        1'b0}), .CONTROL1(N0), .CONTROL2(N111), .CONTROL3(N73), .Z({N81, N80})
         );
  SELECT_OP C408 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b1), .DATA8(1'b1), .DATA9(1'b1), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b1), .DATA13(1'b0), .CONTROL1(
        N3), .CONTROL2(N4), .CONTROL3(N5), .CONTROL4(N6), .CONTROL5(N7), 
        .CONTROL6(N8), .CONTROL7(N9), .CONTROL8(N10), .CONTROL9(N11), 
        .CONTROL10(N12), .CONTROL11(N13), .CONTROL12(N14), .CONTROL13(N93), 
        .Z(N94) );
  GTECH_BUF B_3 ( .A(N23), .Z(N3) );
  GTECH_BUF B_4 ( .A(N26), .Z(N4) );
  GTECH_BUF B_5 ( .A(N27), .Z(N5) );
  GTECH_BUF B_6 ( .A(N30), .Z(N6) );
  GTECH_BUF B_7 ( .A(N32), .Z(N7) );
  GTECH_BUF B_8 ( .A(N34), .Z(N8) );
  GTECH_BUF B_9 ( .A(N36), .Z(N9) );
  GTECH_BUF B_10 ( .A(N39), .Z(N10) );
  GTECH_BUF B_11 ( .A(N41), .Z(N11) );
  GTECH_BUF B_12 ( .A(N43), .Z(N12) );
  GTECH_BUF B_13 ( .A(N45), .Z(N13) );
  GTECH_BUF B_14 ( .A(N49), .Z(N14) );
  SELECT_OP C409 ( .DATA1({1'b0, 1'b0, N53, N52}), .DATA2({1'b0, N57, N56, 
        1'b0}), .DATA3({1'b0, N62, N61, N60}), .DATA4({N65, N64, N63, 1'b0}), 
        .DATA5({1'b0, N66, N53, 1'b1}), .DATA6({N71, N70, N70, N69}), .DATA7({
        N75, N74, N74, 1'b1}), .DATA8({N61, 1'b0, N77, N76}), .DATA9({N70, 
        1'b0, N78, 1'b1}), .DATA10({N79, N71, N70, 1'b0}), .DATA11({N81, N80, 
        N74, 1'b1}), .DATA12({N61, N60, N77, 1'b0}), .CONTROL1(N3), .CONTROL2(
        N4), .CONTROL3(N5), .CONTROL4(N6), .CONTROL5(N7), .CONTROL6(N8), 
        .CONTROL7(N9), .CONTROL8(N10), .CONTROL9(N11), .CONTROL10(N12), 
        .CONTROL11(N13), .CONTROL12(N14), .Z({N98, N97, N96, N95}) );
  SELECT_OP C410 ( .DATA1(1'b1), .DATA2(N94), .CONTROL1(N15), .CONTROL2(N20), 
        .Z(N99) );
  GTECH_BUF B_15 ( .A(N19), .Z(N15) );
  SELECT_OP C411 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b1}), .DATA2({N98, N97, N96, 
        N95}), .CONTROL1(N15), .CONTROL2(N20), .Z({N103, N102, N101, N100}) );
  SELECT_OP C412 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N16), .CONTROL2(N17), .CONTROL3(N18), .CONTROL4(N124), .Z(
        N125) );
  GTECH_BUF B_16 ( .A(N112), .Z(N16) );
  GTECH_BUF B_17 ( .A(N113), .Z(N17) );
  GTECH_BUF B_18 ( .A(N121), .Z(N18) );
  SELECT_OP C413 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .CONTROL1(N16), 
        .CONTROL2(N17), .CONTROL3(N18), .Z(N126) );
  SELECT_OP C414 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N16), 
        .CONTROL2(N17), .CONTROL3(N18), .Z(N127) );
  GTECH_AND2 C417 ( .A(N128), .B(sig_ip), .Z(sig_rising) );
  GTECH_NOT I_0 ( .A(sig_d), .Z(N128) );
  GTECH_AND2 C419 ( .A(sig_d), .B(N129), .Z(sig_falling) );
  GTECH_NOT I_1 ( .A(sig_ip), .Z(N129) );
  GTECH_AND2 C421 ( .A(N130), .B(comp_ip), .Z(comp_rising) );
  GTECH_NOT I_2 ( .A(comp_d), .Z(N130) );
  GTECH_AND2 C423 ( .A(comp_d), .B(N131), .Z(comp_falling) );
  GTECH_NOT I_3 ( .A(comp_ip), .Z(N131) );
  GTECH_AND2 C425 ( .A(sig_rising), .B(comp_rising), .Z(N19) );
  GTECH_NOT I_4 ( .A(N19), .Z(N20) );
  GTECH_NOT I_5 ( .A(N22), .Z(N23) );
  GTECH_NOT I_6 ( .A(N25), .Z(N26) );
  GTECH_NOT I_7 ( .A(N118), .Z(N27) );
  GTECH_NOT I_8 ( .A(N29), .Z(N30) );
  GTECH_NOT I_9 ( .A(N31), .Z(N32) );
  GTECH_NOT I_10 ( .A(N33), .Z(N34) );
  GTECH_NOT I_11 ( .A(N35), .Z(N36) );
  GTECH_NOT I_12 ( .A(N38), .Z(N39) );
  GTECH_NOT I_13 ( .A(N40), .Z(N41) );
  GTECH_NOT I_14 ( .A(N42), .Z(N43) );
  GTECH_NOT I_15 ( .A(N44), .Z(N45) );
  GTECH_NOT I_16 ( .A(N48), .Z(N49) );
  GTECH_OR2 C454 ( .A(comp_rising), .B(sig_rising), .Z(N50) );
  GTECH_NOT I_17 ( .A(N50), .Z(N51) );
  GTECH_OR2 C457 ( .A(sig_rising), .B(comp_falling), .Z(N54) );
  GTECH_NOT I_18 ( .A(N54), .Z(N55) );
  GTECH_OR2 C460 ( .A(comp_rising), .B(sig_falling), .Z(N58) );
  GTECH_NOT I_19 ( .A(N58), .Z(N59) );
  GTECH_OR2 C462 ( .A(comp_falling), .B(sig_falling), .Z(N67) );
  GTECH_NOT I_20 ( .A(N67), .Z(N68) );
  GTECH_OR2 C464 ( .A(comp_falling), .B(sig_rising), .Z(N72) );
  GTECH_NOT I_21 ( .A(N72), .Z(N73) );
  GTECH_OR2 C466 ( .A(N26), .B(N23), .Z(N82) );
  GTECH_OR2 C467 ( .A(N27), .B(N82), .Z(N83) );
  GTECH_OR2 C468 ( .A(N30), .B(N83), .Z(N84) );
  GTECH_OR2 C469 ( .A(N32), .B(N84), .Z(N85) );
  GTECH_OR2 C470 ( .A(N34), .B(N85), .Z(N86) );
  GTECH_OR2 C471 ( .A(N36), .B(N86), .Z(N87) );
  GTECH_OR2 C472 ( .A(N39), .B(N87), .Z(N88) );
  GTECH_OR2 C473 ( .A(N41), .B(N88), .Z(N89) );
  GTECH_OR2 C474 ( .A(N43), .B(N89), .Z(N90) );
  GTECH_OR2 C475 ( .A(N45), .B(N90), .Z(N91) );
  GTECH_OR2 C476 ( .A(N49), .B(N91), .Z(N92) );
  GTECH_NOT I_22 ( .A(N92), .Z(N93) );
  GTECH_NOT I_23 ( .A(sig_rising), .Z(N104) );
  GTECH_AND2 C479 ( .A(comp_rising), .B(N104), .Z(N105) );
  GTECH_NOT I_24 ( .A(comp_falling), .Z(N106) );
  GTECH_AND2 C481 ( .A(sig_rising), .B(N106), .Z(N107) );
  GTECH_NOT I_25 ( .A(sig_falling), .Z(N108) );
  GTECH_AND2 C483 ( .A(comp_rising), .B(N108), .Z(N109) );
  GTECH_AND2 C484 ( .A(comp_falling), .B(N108), .Z(N110) );
  GTECH_AND2 C485 ( .A(comp_falling), .B(N104), .Z(N111) );
  GTECH_OR2 C486 ( .A(N133), .B(N39), .Z(N112) );
  GTECH_OR2 C487 ( .A(N132), .B(N36), .Z(N133) );
  GTECH_OR2 C488 ( .A(N23), .B(N34), .Z(N132) );
  GTECH_OR2 C493 ( .A(N135), .B(N49), .Z(N113) );
  GTECH_OR2 C494 ( .A(N134), .B(N43), .Z(N135) );
  GTECH_OR2 C495 ( .A(N26), .B(N30), .Z(N134) );
  GTECH_NOT I_26 ( .A(state[1]), .Z(N114) );
  GTECH_NOT I_27 ( .A(state[0]), .Z(N115) );
  GTECH_NOT I_28 ( .A(state[2]), .Z(N119) );
  GTECH_NOT I_29 ( .A(state[3]), .Z(N120) );
  GTECH_OR2 C504 ( .A(N137), .B(N45), .Z(N121) );
  GTECH_OR2 C505 ( .A(N136), .B(N41), .Z(N137) );
  GTECH_OR2 C506 ( .A(N27), .B(N32), .Z(N136) );
  GTECH_OR2 C514 ( .A(N113), .B(N112), .Z(N122) );
  GTECH_OR2 C515 ( .A(N121), .B(N122), .Z(N123) );
  GTECH_NOT I_30 ( .A(N123), .Z(N124) );
endmodule

