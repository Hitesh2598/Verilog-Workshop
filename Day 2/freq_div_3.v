module clk_div (
    input clk_in,     // input clock
    input reset,   // reset signal
    output reg clk_out  // divided clock output
);

  reg [1:0] pos_cnt;
  reg [1:0] neg_cnt;

  always @(posedge clk_in or posedge reset)
    begin
    if (reset) 
        pos_cnt <= 0;
    
      else if (pos_cnt==2) 
          pos_cnt <= 0;
      else 
        pos_cnt <= pos_cnt + 1;
    end
        
  
  always @(negedge clk_in or posedge reset)
    begin
    if (reset) 
        neg_cnt <= 0;
    
      else if (neg_cnt==2) 
          neg_cnt <= 0;
      else 
        neg_cnt <= neg_cnt + 1;
    end

  
  assign clk_out = ((pos_cnt ==2) | (neg_cnt ==2));
  
endmodule
