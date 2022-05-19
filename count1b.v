module count1b(CLK,Pre,Clr,LOAD,E,D,IN,C,Q);
	input CLK,Pre,Clr,LOAD, E, D, IN;
	wire Q1, D01;
	output wire C, Q;
	HAS_nw has1(
					.C(E),
					.D(D),
					.Q(Q),
					.Ci(C),
					.Qi(Q1)
	);
	mux2to1_nw mux1(
					.S(LOAD),
					.D0(Q1),
					.D1(IN),
					.Y(D01)
	);
	dff_PreClr dff1(
					.CLK(CLK),
					.Pre(Pre),
					.Clr(Clr),
					.D(D01),
					.Q(Q),
					.QN()
	);
	endmodule