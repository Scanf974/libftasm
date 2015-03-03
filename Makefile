# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbadi <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/03 18:43:39 by gbadi             #+#    #+#              #
#    Updated: 2015/03/03 19:58:21 by gbadi            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_bzero.s \
	  ft_strcat.s \
	  ft_isalpha.s \
	  ft_isdigit.s \
	  ft_isalnum.s \
	  ft_puts.s
OBJ = $(SRC:%.s=%.o)
NAME = libfts.a

all: $(NAME)

$(NAME): $(OBJ)
	gcc -c main.c
	ld main.o $(OBJ) -macosx_version_min 10.10 -lSystem

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
