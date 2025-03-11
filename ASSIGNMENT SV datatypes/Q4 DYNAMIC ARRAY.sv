module dyn_arr;
    string dyn[];
	
	initial begin 
	dyn=new[5];
	dyn={"peach","red","blue","orange","green"};
	$display("array elements:%0p",dyn);
	$display("array size:%0p",dyn.size);
	//dyn=new[dyn.size()*3](dyn);
	dyn=new[15](dyn);
	$display("array elements:%0p",dyn);
	$display("array size:%0p",dyn.size);
	dyn.delete;
	$display("array elements:%0p",dyn);
	$display("array size:%0p",dyn.size);
	end

endmodule	
	
	

   
    ANSWER:
# array elements:{peach} {red} {blue} {orange} {green}
# array size:5
# array elements:{peach} {red} {blue} {orange} {green} {} {} {} {} {} {} {} {} {} {}
# array size:15
# array elements:
# array size:0
