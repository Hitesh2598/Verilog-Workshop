
module clk_div(clk_in,enable,reset,clk_out);
  input clk_in;
  input enable;
  input reset;
  output reg clk_out;
  
  reg clk_div2;

  always @(posedge clk_in or posedge reset)

    if(reset)
      begin
        clk_div2 <= 0;
       end
  
   else if (enable)
     begin     
        clk_div2 <= ~clk_div2 ;
      end
  
  always @(posedge clk_div2 or posedge reset)
    
	begin
      
      if(reset)
        begin
	     	clk_out <= 0;
        end
      
      else if(enable)
        	begin
              clk_out <= ~clk_out ;
            end
    end
      
endmodule
