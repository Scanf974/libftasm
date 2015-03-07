# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbadi <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/03 18:43:39 by gbadi             #+#    #+#              #
#    Updated: 2015/03/07 02:46:30 by gbadi            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_bzero.s \
	  ft_strcat.s \
	  ft_isalpha.s \
	  ft_strcpy.s \
	  ft_memcpy.s \
	  ft_cat.s \
	  ft_exit.s \
	  ft_strdup.s \
	  ft_log.s \
	  ft_puts.s \
	  ft_isdigit.s \
	  ft_isprint.s \
	  ft_isascii.s \
	  ft_isalnum.s \
	  ft_memalloc.s \
	  ft_toupper.s \
	  ft_tolower.s \
	  ft_memset.s \
	  ft_strlen.s
OBJ = $(SRC:%.s=%.o)
NAME = libfts.a

all: $(NAME)

$(NAME): $(OBJ)
	gcc -c -g main.c
	ld main.o $(OBJ) -macosx_version_min 10.10 -lSystem

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
