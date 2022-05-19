module D_latch(CLK,D,Q,QN);
	input CLK,D;
	output Q,QN;
	wire DN,x1,x2,QN;
	nand K1(x1,CLK,D);
	nand K2(x2,CLK,~D);
	nand K3(Q,QN,x1);
	nand K4(QN,Q,x2);
endmodule