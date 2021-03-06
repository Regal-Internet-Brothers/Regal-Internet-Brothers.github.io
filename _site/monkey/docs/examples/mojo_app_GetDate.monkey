
Import mojo

Class MyApp Extends App

	Method OnCreate()
	
		SetUpdateRate 60
		
	End
	
	Method OnRender()

		Local date:=GetDate()
	
		Local months:=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
	
		Local day:=("0"+date[2])[-2..]
		Local month:=months[date[1]-1]
		Local year:=date[0]
		Local hour:=("0"+date[3])[-2..]
		Local min:=("0"+date[4])[-2..]
		Local sec:=("0"+date[5])[-2..] + "." + ("00"+date[6])[-3..]
		
		Local now:=hour+":"+min+":"+sec+"  "+day+" "+month+" "+year
		
		Cls
		DrawText now,DeviceWidth/2,DeviceHeight/2,.5,.5
	End

End

Function Main()

	New MyApp
	
End
