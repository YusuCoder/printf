# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ryusupov <ryusupov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/18 14:16:36 by ryusupov          #+#    #+#              #
#    Updated: 2024/05/24 19:47:56 by ryusupov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[0;33m
NC=\033[0m

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c ft_putnbr.c ft_ishex.c ft_decimal.c ft_print_adress.c ft_putchar.c ft_putstr.c ft_strlength.c

OBJ = $(SRC:.c=.o)

AR = ar rcs
INCS = ft_printf.h
RM = rm -f

define ANIMATE_WELCOME
    @printf "\n\033[1;32mProcessing"
    @sleep 1
    @for i in {1..10}; do \
        printf "."; \
        sleep 0.2; \
    done
    @printf "\033[0m\n\n\n"
    @sleep 1
    @for frame in $(FRAMES); do \
        printf "\x1b[35m%s\n\033[0m" $$frame; \
        sleep 0.1; \
    done
    @echo
endef

define ANIMATE_PROCESSING
    @printf "\n\033[1;31mCleaning"
    @sleep 1
    @for i in {1..10}; do \
        printf "."; \
        sleep 0.2; \
    done
    @printf "\033[0m\n\n"
endef

all: $(OBJ)
#	$(ANIMATE_WELCOME)
	@$(AR) $(NAME) $(OBJ) $(BONUS_OBJ)

%.o: %.c $(INCS)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJ) $(BONUS_OBJ)
#	$(ANIMATE_PROCESSING)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re post_build

#post_build:
#	./animated_text.sh

FRAMES := 	"ss██╗ssssssssssss███████╗████████╗ssssssss██████╗s██████╗s██╗███╗sss██╗████████╗███████╗ssssssssssss██╗ss"\
			"s██╔╝ssssssssssss██╔════╝╚══██╔══╝ssssssss██╔══██╗██╔══██╗██║████╗ss██║╚══██╔══╝██╔════╝ssssssssssss╚██╗s"\
			"██╔╝s█████╗█████╗█████╗sssss██║sssssssssss██████╔╝██████╔╝██║██╔██╗s██║sss██║sss█████╗ss█████╗█████╗s╚██╗"\
			"╚██╗s╚════╝╚════╝██╔══╝sssss██║sssssssssss██╔═══╝s██╔══██╗██║██║╚██╗██║sss██║sss██╔══╝ss╚════╝╚════╝s██╔╝"\
			"s╚██╗ssssssssssss██║ssssssss██║sss███████╗██║sssss██║ss██║██║██║s╚████║sss██║sss██║sssssssssssssssss██╔╝s"\
			"ss╚═╝ssssssssssss╚═╝ssssssss╚═╝sss╚══════╝╚═╝sssss╚═╝ss╚═╝╚═╝╚═╝ss╚═══╝sss╚═╝sss╚═╝sssssssssssssssss╚═╝ss"\
			"sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
