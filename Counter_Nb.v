module Counter_Nb(CLK,Pre,Clr,LOAD,E,D,IN,Q);
	parameter n = 7;
	input wire CLK,Pre,Clr,LOAD, E, D;
	input wire [n:0] IN;
	wire [n-1:0] C;
	output wire [n:0] Q;
	count1b co1(CLK,Pre,Clr,LOAD,E,D,IN[0],C[0],Q[0]);
	genvar i;
	generate
	for (i = 1; i < n; i = i + 1) begin: countmid
	  count1b demx(CLK,Pre,Clr,LOAD,C[i-1],D,IN[i],C[i],Q[i]);
	end
	endgenerate
	//count1b demy[n-1:1](CLK,LOAD,C[n-2],D,IN[n-1:1],C[n-1:1],Q[n-1:1]);
	count1b demy(CLK,Pre,Clr,LOAD,C[n-1],D,IN[n],,Q[n]);
endmodule