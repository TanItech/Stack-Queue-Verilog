module mux2to1_nw (S,D0,D1,Y);
	input S, D0, D1;
	wire x1,x2,a;
	output Y;
	not N1(a,S);
	and A1(x1,a,D0);
	and A2(x2,S,D1);
	or  O1(Y,x1,x2);
endmodule
	