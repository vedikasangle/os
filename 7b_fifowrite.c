#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(){
	
	int fd,retval;
	char buffer[8]= "TESTDATA";
	fflush(stdin);
	retval=mkfifo ("/tmp/myfifo",0666);
	fd=open ("/tmp/myfifo",O_WRONLY);
	write(fd,buffer,sizeof(buffer));
	close (fd);
	return 0;
}
