begin transaction
     delete from Student Where Id=16
	 Select * from Student
	 print @@TRANCOUNT
	 rollback
	 Commit

	 begin transaction 
	     Save transaction s1
		   delete from Student Where Id=18;

		    Save transaction s2
		   delete from Student Where Id=19;

		   rollback transaction 
		   commit