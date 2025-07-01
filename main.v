`timescale 1ns / 1ps


module PD_COMP(clk, rst, sig_ip, comp_ip, p_out, n_out);
    
    input clk, sig_ip, comp_ip, rst;
    output reg p_out;
    output reg n_out;
    
    parameter S1 = 4'b0001, 
              S2 = 4'b0010,
              S3 = 4'b0011,
              S4 = 4'b0100,
              S5 = 4'b0101,
              S6 = 4'b0110,
              S7 = 4'b0111,
              S8 = 4'b1000,
              S9 = 4'b1001,
              S10 = 4'b1010,
              S11 = 4'b1011,
              S12 = 4'b1100;
              
    reg [3:0] state; 

    reg sig_d, comp_d;
    wire sig_rising, sig_falling, comp_rising, comp_falling;
    
    always@(posedge clk or posedge rst)
    begin
        if (rst) begin
            sig_d <= 0;
            comp_d <= 0;
        end
        else begin
            sig_d <= sig_ip;
            comp_d <= comp_ip;
        end
    end
    
    
    assign sig_rising = ~sig_d & sig_ip;
    assign sig_falling = sig_d & ~sig_ip;
    assign comp_rising = ~comp_d & comp_ip;
    assign comp_falling = comp_d & ~comp_ip;
    
    
    //Setting next state
    always@(*)
    begin
        if (sig_rising & comp_rising) 
            state = S1;
        else 
        begin
            case (state)
                S1: begin
                    if (sig_rising) state = S3;
                    else if (comp_rising) state = S2;
                    else state = S1;
                    end
                
                S2: begin
                    if (comp_falling) state = S4;
                    else if (sig_rising) state = S6;
                    else state = S2;
                    end
                
                S3: begin
                    if (sig_falling) state = S5;
                    else if (comp_rising) state = S6;
                    else state = S3;
                    end
                
                S4: begin
                    if (sig_rising) state = S8;
                    else if (comp_rising) state = S2;
                    else state = S4;
                    end
                
                S5: begin
                    if (sig_rising) state = S3;
                    else if (comp_rising) state = S7;
                    else state = S5;
                    end
                
                S6: begin
                    if (sig_falling) state = S7;
                    else if (comp_falling) state = S8;
                    else state = S6;
                    end
                
                S7: begin
                    if (sig_rising) state = S9;
                    else if (comp_falling) state = S1;
                    else state = S7;
                    end
       
                S8: begin
                    if (sig_falling) state = S1;
                    else if (comp_rising) state = S10;
                    else state = S8;
                    end
               
                S9: begin
                    if (sig_falling) state = S11;
                    else if (comp_falling) state = S3;
                    else state = S9;
                    end
                
                S10: begin
                    if (sig_falling) state = S2;
                    else if (comp_falling) state = S12;
                    else state = S10;
                    end
                
                S11: begin
                    if (sig_rising)state = S9;
                    else if (comp_falling) state = S5;
                    else state = S11;
                    end
                
                S12: begin
                    if (sig_falling) state = S4;
                    else if (comp_rising) state = S10;
                    else state = S12;
                    end
             
               // default: next_state = curr_state;
            endcase
        end
    end
    
    
    //Output
    always@(*)
    begin
        case (state)
            S1, S6, S7, S8: begin
                                p_out = 0;
                                n_out = 0;
                            end 
            S2, S4, S10, S12: begin
                                p_out = 0;
                                n_out = 1;
                            end 
            S3, S5, S9, S11: begin
                                p_out = 1;
                                n_out = 0;
                            end 
        endcase
    end
    
endmodule

