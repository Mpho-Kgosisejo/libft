# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkgosise <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/31 15:02:02 by mkgosise          #+#    #+#              #
#    Updated: 2017/09/17 02:21:51 by mkgosise         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c		ft_bzero.c		ft_isalnum.c	ft_isalpha.c\
	  ft_isascii.c	ft_isdigit.c	ft_isprint.c	ft_memccpy.c\
	  ft_memchr.c	ft_memcmp.c		ft_memcpy.c		ft_memmove.c\
	  ft_memset.c	ft_strcat.c		ft_strchr.c		ft_strcmp.c\
	  ft_strcpy.c	ft_strdup.c		ft_strlcat.c	ft_strlen.c\
	  ft_strncat.c	ft_strncmp.c	ft_strncpy.c	ft_strrchr.c\
	  ft_strnstr.c	ft_strstr.c		ft_tolower.c	ft_toupper.c\
	  ft_putstr.c	ft_putchar.c	ft_putnbr.c		ft_memalloc.c\
	  ft_memdel.c	ft_strclr.c		ft_striter.c	ft_striteri.c\
	  ft_strmap.c	ft_strmapi.c	ft_strequ.c		ft_strsub.c\
	  ft_strjoin.c	ft_strtrim.c	ft_strsplit.c	ft_itoa.c\
	  ft_strdel.c	ft_strnew.c		ft_putendl.c	ft_putchar_fd.c\
	  ft_putstr_fd.c				ft_putendl_fd.c	ft_putnbr_fd.c\
	  ft_strnequ.c	ft_abs.c		ft_getin.c

OBJ = $(SRC:%.c=%.o)

INCLUDES = libft.h

FLAGS = -Wall\
		-Wextra\
		-Werror

all: $(NAME)

$(NAME):
	@gcc -c $(FLAGS) $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
