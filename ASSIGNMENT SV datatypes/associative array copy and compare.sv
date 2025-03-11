module asso_arr;
    int asso_array1[string];  
    int asso_array2[string];
	

   
    task compare;
        //foreach(asso_array1[i])
if(asso_array1==asso_array2)		

        $display("both asso_array1 and asso_array2 are same");
		else 
		$display("both asso_array1 and asso_array2 are different");
		
		endtask
		
		initial begin 
		
		asso_array1["present"]=50;
		asso_array1["total"]=60;
		
		asso_array2=asso_array1;
		//asso_array2["present"]=50;
		//asso_array2["total"]=60;
		
		$display("asso_array1=%p|asso_array2=%p",asso_array1,asso_array2);
		compare;
		
		end

endmodule		

ANSWER:
# asso_array1='{"present":50, "total":60 }|asso_array2='{"present":50, "total":60 }
# both asso_array1 and asso_array2 are same
