#include <signal.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

void sig_handler(int signum);

int main(){
    alarm(5);
    signal(SIGALRM, sig_handler);
    while(1);
    return 0;
}

void sig_handler(int signum){
    printf("Alarm signal received: %d\n", signum);
    system("/bin/ls");
    exit(0);
}