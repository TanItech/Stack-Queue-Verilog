module HAS_nw(C,D,Q,Ci,Qi);
	input C,D,Q;
	wire A1,A2,A3,A4;
	output Ci,Qi;
	not N1(A1,D);
	not N2(A2,Q);
	and N3(A3,C,D,A2);
	and N4(A4,C,A1,Q);
	or  O1(Ci,A3,A4);
	xor X1(Qi,C,Q);
endmodule	