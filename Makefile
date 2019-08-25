# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oshvorak <oshvorak@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/01/23 15:12:57 by oshvorak          #+#    #+#              #
#    Updated: 2018/04/12 12:08:39 by oshvorak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

NAME = libft_malloc_$(HOSTTYPE).so

LIBFT = libft.a

CFLAGS = -Wall -Wextra -Werror -I$(INC)

SRC = ./src/main.c

LIBFT = ./libft/ft_atoi.c \
		./libft/ft_bzero.c \
		./libft/ft_isalnum.c \
		./libft/ft_isalpha.c \
		./libft/ft_isascii.c \
		./libft/ft_isdigit.c \
		./libft/ft_isprint.c \
		./libft/ft_itoa.c \
		./libft/ft_lstadd.c \
		./libft/ft_lstdel.c \
		./libft/ft_lstdelone.c \
		./libft/ft_lstiter.c \
		./libft/ft_lstmap.c \
		./libft/ft_lstnew.c \
		./libft/ft_memalloc.c \
		./libft/ft_memccpy.c \
		./libft/ft_memchr.c \
		./libft/ft_memcmp.c \
		./libft/ft_memcpy.c \
		./libft/ft_memdel.c \
		./libft/ft_memmove.c \
		./libft/ft_memset.c \
		./libft/ft_putchar.c \
		./libft/ft_putchar_fd.c \
		./libft/ft_putendl.c \
		./libft/ft_putendl_fd.c \
		./libft/ft_putnbr.c \
		./libft/ft_putnbr_fd.c \
		./libft/ft_putstr.c \
		./libft/ft_putstr_fd.c \
		./libft/ft_strcat.c \
		./libft/ft_strchr.c \
		./libft/ft_strclr.c \
		./libft/ft_strcmp.c \
		./libft/ft_strcpy.c \
		./libft/ft_strdel.c \
		./libft/ft_strdup.c \
		./libft/ft_strequ.c \
		./libft/ft_striter.c \
		./libft/ft_striteri.c \
		./libft/ft_strjoin.c \
		./libft/ft_strlcat.c \
		./libft/ft_strlen.c \
		./libft/ft_strmap.c \
		./libft/ft_strmapi.c \
		./libft/ft_strncat.c \
		./libft/ft_strncmp.c \
		./libft/ft_strncpy.c \
		./libft/ft_strnequ.c \
		./libft/ft_strnew.c \
		./libft/ft_strnstr.c \
		./libft/ft_strrchr.c \
		./libft/ft_strsplit.c \
		./libft/ft_strstr.c \
		./libft/ft_strsub.c \
		./libft/ft_strtrim.c \
		./libft/ft_tolower.c \
		./libft/ft_toupper.c \
		./libft/ft_swap.c \
		./libft/ft_sqrt.c \
		./libft/ft_strcapitalize.c \
		./libft/ft_factorial.c \
		./libft/ft_listsize.c \
		./libft/ft_charreplace.c \
		./libft/ft_atoi_base.c \
		./libft/ft_array_size.c \
		./libft/ft_free_arr.c \
		./libft/ft_free_arr_int.c

INC = ./inc

SRC_OBJ = $(SRC:.c=.o)

LIBFT_OBJ = $(LIBFT:.c=.o)

all: $(NAME)

$(NAME): $(LIBFT_OBJ) 
	gcc $(CFLAGS) $(SRC) $(LIB) -o $(NAME)

$(NAME): $(OBJ) ./libft/libft.a
	$(GCC) -o $(NAME) $(OBJ) -shared
	rm -rf libft_malloc.so
	ln -s $(NAME) libft_malloc.so

clean:
	/bin/rm -f $(SRC_OBJ) $(LIBFT_OBJ)
fclean:	clean
	/bin/rm -f $(NAME) $(LIBFT)

re: fclean all
