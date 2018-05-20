import sys
import psutil 
from datetime import datetime


arg_count = len(sys.argv)
arg_value = sys.argv


if (arg_count == 2):
	process_id= int(arg_value[1])

	if process_id in psutil.pids():
		p=psutil.Process(process_id)

		print "Process ID : ",p.pid
	
		print "\nProcess Name : ", p.name()

		print "\nProcess status : ", p.status()

		print "\nProcess Parent ID : ",p.ppid()

		print "\nProcess Parent Name : ", p.parent().name()

		time = p.create_time()
		datetime_obj=datetime.fromtimestamp(time).strftime("%A %B %d, %I:%M:%S, %Y")
		print "Process creation time: ", str(datetime_obj)

		list1=p.open_files()
		print "\nFiles open by Process : "
		if(len(list1) != 0 ):
			for files in list1:
				print files[0],"\n"  

		else:
			print "Process has not opened any file."

		print "\nMemory info : \n", p.memory_info()
	else:
		print "Process with id ",process_id,"does not exist."
else:
	print "Error: over arguments. Give single process id"



