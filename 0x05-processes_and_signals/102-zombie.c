#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

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
	sleep(10);

	return (0);
}
