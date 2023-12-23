#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>


int infinite_while(void);
/**
* main - main entry
* @void: void
* Return: int
*/
int main(void)
{
	pid_t child_pid;

	for (int i = 0; i < 5; i++)

	{
		child_pid = fork();

		if (child_pid == 0)
		{
			exit(0);
		}
		else
		{
			printf("Zombie process created, PID: %d\n", child_pid);
		}
	}
	infinite_while();
	sleep(10);

	return (0);
}

/**
* infinite_while - infinite while function
* @void: void
* Return: int
*/
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
