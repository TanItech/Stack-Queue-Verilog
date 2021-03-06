module dff_PreClr(CLK,Pre,Clr,D,Q,QN);
	input CLK,Pre,Clr,D;
	output Q,QN;
	wire q1,nq1,nq2,q2;

	nand nand1(q1,~Pre,q2,nq1);
	nand nand2(nq1,q1,CLK,~Clr);
	nand nand3(nq2,nq1,CLK,q2);
	nand nand4(q2,nq2,D,~Clr);
	nand nand5(Q,~Pre,nq1,QN);
	nand nand6(QN,Q,~Clr,nq2);
endmodule

//nand nand1(q1,D,Clr,nq1);
	//nand nand2(nq1,q1,CLK,nq2);
	//nand nand3(nq2,nq1,Pre,q2);
	//nand nand4(q2,nq2,Clr,CLK);
	//nand nand5(Q,Pre,q1,QN);
	//nand nand6(QN,Q,Clr,nq2);
	