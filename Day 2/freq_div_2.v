
module clk_div(clk_in,enable,reset,clk_out);
  input clk_in;
  input enable;
  input reset;
  output reg clk_out;
  

  
  always @(posedge clk_in)
    if(reset)
      begin
        clk_out <= 0;
        
      end
  
   else if (enable)
     begin     
       
       clk_out <= (~clk_out) ;
      
     end
  
  
endmodule
