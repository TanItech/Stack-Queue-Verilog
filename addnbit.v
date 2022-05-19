module addnbit (in0,in1,c_in,sum,c_out);
	parameter N = 1;
	
	genvar k;
	input [N-1:0] in0;
	input [N-1:0] in1;
	input [N-1:0] c_in;
	output [N-1:0] sum;
	output [N-1:0] c_out;
	
	generate for (k = 0; k < N; k = k + 1)
		begin : lb_adder
		add1bit add (in0[k],in1[k],c_in[k],sum[k],c_out[k]);
		end
	endgenerate
	
endmodule