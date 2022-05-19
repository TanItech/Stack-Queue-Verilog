module dff_nw(CLK,D,Q, QN);
	input wire CLK, D;
	output Q,QN;
	wire CLK_n, a1, Q1, QN1;
	not N(CLK_n,CLK);
	not N1(a1,CLK_n);
	D_latch A(~CLK,D,Q1,QN1);
	D_latch B(a1,Q1,Q,QN);
endmodule	