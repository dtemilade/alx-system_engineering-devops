#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - prototype that create infinite sleep loop
 * Return: Always (0) on success.
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/* main program that creates 5 zombie processes.*/

/**
 * main - prototype function that creates 5 zombie processes
 * Return: infinite_while zombies
 */
int main(void)
{
	/*declaring variables for the program*/
	unsigned int x;
	pid_t process_id;

	/*conditional function for the process*/
	for (x = 0; x < 5; x++)
	{
		process_id = fork();
		if (process_id == 0)
			exit(0);
		else
			printf("Zombie process created, PID: ZOMBIE_PID %d\n", process_id);
	}
	return (infinite_while());
}
