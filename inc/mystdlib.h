#ifndef MYSTDLIB_H
#define MYSTDLIB_H

#include <unistd.h> 

typedef struct s_block
{
	t_block *next;
}			   t_block;	

void free();
void *malloc(size_t size);
void *realloc(void *ptr, size_t size);

#endif