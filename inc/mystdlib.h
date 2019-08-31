/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mystdlib.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oshvorak <oshvorak@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/08/31 18:32:54 by oshvorak          #+#    #+#             */
/*   Updated: 2019/08/31 18:33:09 by oshvorak         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MYSTDLIB_H
#define MYSTDLIB_H

#include <unistd.h>
#include <sys/mman.h>

#include "libft/libft.h"

typedef enum 
{
	TINY,
	SMALL,
	LARGE
} 	e_zoneType;

typedef struct	s_block
{
	t_block		*next;
}				t_block;

typedef struct	s_zone
{
	e_zoneType	type;
	t_block		*head_block;
	t_zone		*next_zone;
}				t_zone;	

void free();
void *malloc(size_t size);
void *realloc(void *ptr, size_t size);

void show_alloc_mem();

#endif