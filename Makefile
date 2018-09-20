# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ftait <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/01 16:13:13 by ftait             #+#    #+#              #
#    Updated: 2017/10/01 16:20:02 by ftait            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf

CC = gcc

CFLAGS = -o $(NAME) -I includes/ -I libft/ -lmlx -framework OpenGL -framework AppKit

CFILES = source/fdf_read.c\
		 source/fdf_draw.c\
		 source/fdf_main.c\
		 source/fdf_keys.c\
		 libft/libft.a

$(NAME):
		$(MAKE) -C libft all
			$(CC) $(CFILES) $(CFLAGS)

all: $(NAME)

clean:
		$(MAKE) -C libft clean

fclean:
		$(MAKE) -C libft fclean
			rm -rf $(NAME)

re: fclean all

run: re
		./$(NAME) maps/std/42.fdf
.PHONY: run re fclean clean all
