module kogge_stone_adder(a,b,cin,sum,cout);
  input [15:0]a,b;
  input cin;
  output [15:0]sum;
  output cout;
  wire [15:0]Gz,Pz,Ga,Pa,Gb,Pb,Gc,Pc,Gd,Pd;
  
  //level 0 - Pre processing
  and_xor ax0(a[0],b[0],Gz[0],Pz[0]);
  and_xor ax1(a[1],b[1],Gz[1],Pz[1]);
  and_xor ax2(a[2],b[2],Gz[2],Pz[2]);
  and_xor ax3(a[3],b[3],Gz[3],Pz[3]);
  and_xor ax4(a[4],b[4],Gz[4],Pz[4]);
  and_xor ax5(a[5],b[5],Gz[5],Pz[5]);
  and_xor ax6(a[6],b[6],Gz[6],Pz[6]);
  and_xor ax7(a[7],b[7],Gz[7],Pz[7]);
  and_xor ax8(a[8],b[8],Gz[8],Pz[8]);
  and_xor ax9(a[9],b[9],Gz[9],Pz[9]);
  and_xor ax10(a[10],b[10],Gz[10],Pz[10]);
  and_xor ax11(a[11],b[11],Gz[11],Pz[11]);
  and_xor ax12(a[12],b[12],Gz[12],Pz[12]);
  and_xor ax13(a[13],b[13],Gz[13],Pz[13]);
  and_xor ax14(a[14],b[14],Gz[14],Pz[14]);
  and_xor ax15(a[15],b[15],Gz[15],Pz[15]);
  
  //level 1
  grey_cell l1_gc0(cin,Pz[0],Gz[0],Ga[0]);
  black_cell l1_bc0(Gz[0],Pz[1],Gz[1],Pz[0],Ga[1],Pa[1]);
  black_cell l1_bc1(Gz[1],Pz[2],Gz[2],Pz[1],Ga[2],Pa[2]);
  black_cell l1_bc2(Gz[2],Pz[3],Gz[3],Pz[2],Ga[3],Pa[3]);
  black_cell l1_bc3(Gz[3],Pz[4],Gz[4],Pz[3],Ga[4],Pa[4]);
  black_cell l1_bc4(Gz[4],Pz[5],Gz[5],Pz[4],Ga[5],Pa[5]);
  black_cell l1_bc5(Gz[5],Pz[6],Gz[6],Pz[5],Ga[6],Pa[6]);
  black_cell l1_bc6(Gz[6],Pz[7],Gz[7],Pz[6],Ga[7],Pa[7]);
  black_cell l1_bc7(Gz[7],Pz[8],Gz[8],Pz[7],Ga[8],Pa[8]);
  black_cell l1_bc8(Gz[8],Pz[9],Gz[9],Pz[8],Ga[9],Pa[9]);
  black_cell l1_bc9(Gz[9],Pz[10],Gz[10],Pz[9],Ga[10],Pa[10]);  
  black_cell l1_bc10(Gz[10],Pz[11],Gz[11],Pz[10],Ga[11],Pa[11]);
  black_cell l1_bc11(Gz[11],Pz[12],Gz[12],Pz[11],Ga[12],Pa[12]);
  black_cell l1_bc12(Gz[12],Pz[13],Gz[13],Pz[12],Ga[13],Pa[13]);
  black_cell l1_bc13(Gz[13],Pz[14],Gz[14],Pz[13],Ga[14],Pa[14]);
  black_cell l1_bc14(Gz[14],Pz[15],Gz[15],Pz[14],Ga[15],Pa[15]);
  
  //level 2
  grey_cell l2_gc0(cin,Pa[1],Ga[1],Gb[1]);
  grey_cell l2_gc1(Ga[0],Pa[2],Ga[2],Gb[2]);
  black_cell l2_bc0(Ga[1],Pa[3],Ga[3],Pa[1],Gb[3],Pb[3]);
  black_cell l2_bc1(Ga[2],Pa[4],Ga[4],Pa[2],Gb[4],Pb[4]);
  black_cell l2_bc2(Ga[3],Pa[5],Ga[5],Pa[3],Gb[5],Pb[5]);
  black_cell l2_bc3(Ga[4],Pa[6],Ga[6],Pa[4],Gb[6],Pb[6]);
  black_cell l2_bc4(Ga[5],Pa[7],Ga[7],Pa[5],Gb[7],Pb[7]);
  black_cell l2_bc5(Ga[6],Pa[8],Ga[8],Pa[6],Gb[8],Pb[8]);
  black_cell l2_bc6(Ga[7],Pa[9],Ga[9],Pa[7],Gb[9],Pb[9]);
  black_cell l2_bc7(Ga[8],Pa[10],Ga[10],Pa[8],Gb[10],Pb[10]);
  black_cell l2_bc8(Ga[9],Pa[11],Ga[11],Pa[9],Gb[11],Pb[11]);
  black_cell l2_bc9(Ga[10],Pa[12],Ga[12],Pa[10],Gb[12],Pb[12]);
  black_cell l2_bc10(Ga[11],Pa[13],Ga[13],Pa[11],Gb[13],Pb[13]);
  black_cell l2_bc11(Ga[12],Pa[14],Ga[14],Pa[12],Gb[14],Pb[14]);
  black_cell l2_bc12(Ga[13],Pa[15],Ga[15],Pa[13],Gb[15],Pb[15]);
  //level 3
  grey_cell l3_gc0(cin,Pb[3],Gb[3],Gc[3]);
  grey_cell l3_gc1(Ga[0],Pb[4],Gb[4],Gc[4]);
  grey_cell l3_gc2(Gb[1],Pb[5],Gb[5],Gc[5]);
  grey_cell l3_gc3(Gb[2],Pb[6],Gb[6],Gc[6]);
  black_cell l3_bc0(Gb[3],Pb[7],Gb[7],Pb[3],Gc[7],Pc[7]);
  black_cell l3_bc1(Gb[4],Pb[8],Gb[8],Pb[4],Gc[8],Pc[8]);
  black_cell l3_bc2(Gb[5],Pb[9],Gb[9],Pb[5],Gc[9],Pc[9]);
  black_cell l3_bc3(Gb[6],Pb[10],Gb[10],Pb[6],Gc[10],Pc[10]);
  black_cell l3_bc4(Gb[7],Pb[11],Gb[11],Pb[7],Gc[11],Pc[11]);
  black_cell l3_bc5(Gb[8],Pb[12],Gb[12],Pb[8],Gc[12],Pc[12]);
  black_cell l3_bc6(Gb[9],Pb[13],Gb[13],Pb[9],Gc[13],Pc[13]);
  black_cell l3_bc7(Gb[10],Pb[14],Gb[14],Pb[10],Gc[14],Pc[14]);
  black_cell l3_bc8(Gb[11],Pb[15],Gb[15],Pb[11],Gc[15],Pc[15]);
  
  //level 4
  grey_cell l4_gc0(cin,Pc[7],Gc[7],Gd[7]);
  grey_cell l4_gc1(Ga[0],Pc[8],Gc[8],Gd[8]);
  grey_cell l4_gc2(Gb[1],Pc[9],Gc[9],Gd[9]);
  grey_cell l4_gc3(Gb[2],Pc[10],Gc[10],Gd[10]);
  grey_cell l4_gc4(Gc[3],Pc[11],Gc[11],Gd[11]);
  grey_cell l4_gc5(Gc[4],Pc[12],Gc[12],Gd[12]);
  grey_cell l4_gc6(Gc[5],Pc[13],Gc[13],Gd[13]);
  grey_cell l4_gc7(Gc[6],Pc[14],Gc[14],Gd[14]);
  black_cell l4_bc0(Gc[7],Pc[15],Gc[15],Pc[7],Gd[15],Pd[15]);
  
  //level 5
  grey_cell l5_gc0(cin,Pd[15],Gd[15],cout);
   
  //final adder
  xor x0(sum[0],cin,Pz[0]);
  xor x1(sum[1],Ga[0],Pz[1]);
  xor x2(sum[2],Gb[1],Pz[2]);
  xor x3(sum[3],Gb[2],Pz[3]);
  xor x4(sum[4],Gc[3],Pz[4]);
  xor x5(sum[5],Gc[4],Pz[5]);
  xor x6(sum[6],Gc[5],Pz[6]);
  xor x7(sum[7],Gc[6],Pz[7]);
  xor x8(sum[8],Gd[7],Pz[8]);
  xor x9(sum[9],Gd[8],Pz[9]);
  xor x10(sum[10],Gd[9],Pz[10]);
  xor x11(sum[11],Gd[10],Pz[11]);
  xor x12(sum[12],Gd[11],Pz[12]);
  xor x13(sum[13],Gd[12],Pz[13]);
  xor x14(sum[14],Gd[13],Pz[14]);
  xor x15(sum[15],Gd[14],Pz[15]);
  
  
endmodule
