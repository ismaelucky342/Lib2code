# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ismherna <ismherna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/22 15:48:04 by ismherna          #+#    #+#              #
#    Updated: 2024/09/04 13:38:05 by ismherna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN = \033[1;32m
YELLOW = \033[1;33m
RED = \033[0;31m
NC = \033[0m

SRC_DIR = src
SRC		=	$(SRC_DIR)/free_2d.c			\
			$(SRC_DIR)/ft_addFS.c			\
			$(SRC_DIR)/ft_add_element.c		\
			$(SRC_DIR)/ft_arraylen.c		\
			$(SRC_DIR)/ft_atoi.c			\
			$(SRC_DIR)/ft_atoll.c			\
			$(SRC_DIR)/ft_bin2ascii.c		\
			$(SRC_DIR)/ft_bzero.c			\
			$(SRC_DIR)/ft_calloc.c			\
			$(SRC_DIR)/ft_ch_value.c		\
			$(SRC_DIR)/ft_char.c			\
			$(SRC_DIR)/ft_char2bin.c		\
			$(SRC_DIR)/ft_create_element.c	\
			$(SRC_DIR)/ft_create_hashtable.c	\
			$(SRC_DIR)/ft_delete_element.c	\
			$(SRC_DIR)/ft_free_hashtable.c	\
			$(SRC_DIR)/ft_get_value.c		\
			$(SRC_DIR)/ft_hexadecimals.c	\
			$(SRC_DIR)/ft_index.c			\
			$(SRC_DIR)/ft_is_prime.c		\
			$(SRC_DIR)/ft_isalnum.c			\
			$(SRC_DIR)/ft_isalpha.c			\
			$(SRC_DIR)/ft_isascii.c			\
			$(SRC_DIR)/ft_isdigit.c			\
			$(SRC_DIR)/ft_ishexdigit.c		\
			$(SRC_DIR)/ft_isprint.c			\
			$(SRC_DIR)/ft_isspace.c			\
			$(SRC_DIR)/ft_itoa.c			\
			$(SRC_DIR)/ft_lstadd_back_bonus.c	\
			$(SRC_DIR)/ft_lstadd_front_bonus.c	\
			$(SRC_DIR)/ft_lstclear_bonus.c	\
			$(SRC_DIR)/ft_lstdelone_bonus.c	\
			$(SRC_DIR)/ft_lstiter_bonus.c	\
			$(SRC_DIR)/ft_lstlast_bonus.c	\
			$(SRC_DIR)/ft_lstmap_bonus.c	\
			$(SRC_DIR)/ft_lstnew_bonus.c	\
			$(SRC_DIR)/ft_lstsize_bonus.c	\
			$(SRC_DIR)/ft_memchr.c			\
			$(SRC_DIR)/ft_memcmp.c			\
			$(SRC_DIR)/ft_memcpy.c			\
			$(SRC_DIR)/ft_memmove.c			\
			$(SRC_DIR)/ft_memset.c			\
			$(SRC_DIR)/ft_monkey_hash.c		\
			$(SRC_DIR)/ft_next_prime.c		\
			$(SRC_DIR)/ft_number.c			\
			$(SRC_DIR)/ft_pointers.c		\
			$(SRC_DIR)/ft_print_hashtable.c	\
			$(SRC_DIR)/ft_printf.c			\
			$(SRC_DIR)/ft_putchar_fd.c		\
			$(SRC_DIR)/ft_putendl_fd.c		\
			$(SRC_DIR)/ft_putnbr_fd.c		\
			$(SRC_DIR)/ft_putstr_fd.c		\
			$(SRC_DIR)/ft_split.c			\
			$(SRC_DIR)/ft_sqrt.c			\
			$(SRC_DIR)/ft_strchr.c			\
			$(SRC_DIR)/ft_strdup.c			\
			$(SRC_DIR)/ft_string.c			\
			$(SRC_DIR)/ft_string2bin.c		\
			$(SRC_DIR)/ft_striteri.c		\
			$(SRC_DIR)/ft_strjoin.c			\
			$(SRC_DIR)/ft_strlcat.c			\
			$(SRC_DIR)/ft_strlcpy.c			\
			$(SRC_DIR)/ft_strlen.c			\
			$(SRC_DIR)/ft_strmapi.c			\
			$(SRC_DIR)/ft_strncmp.c			\
			$(SRC_DIR)/ft_strnstr.c			\
			$(SRC_DIR)/ft_strrchr.c			\
			$(SRC_DIR)/ft_strtrim.c			\
			$(SRC_DIR)/ft_substr.c			\
			$(SRC_DIR)/ft_tolower.c			\
			$(SRC_DIR)/ft_toupper.c			\
			$(SRC_DIR)/ft_unsigned.c		\
			$(SRC_DIR)/ins_sort.c			\
			$(SRC_DIR)/ft_del_list_np.c		\
			$(SRC_DIR)/ft_new_node.c		\
			$(SRC_DIR)/ft_add_node_end_np.c	\
			$(SRC_DIR)/ft_add_node_f_nextto_np.c	\
			$(SRC_DIR)/ft_add_node_f_prevto_np.c	\
			$(SRC_DIR)/ft_add_node_nextto_np.c	\
			$(SRC_DIR)/ft_add_node_prevto_np.c	\
			$(SRC_DIR)/ft_add_node_start_np.c	\
			$(SRC_DIR)/ft_del_node_end_np.c	\
			$(SRC_DIR)/ft_del_node_np.c		\
			$(SRC_DIR)/ft_del_node_start_np.c	\
			$(SRC_DIR)/ft_foreach_node_f_np.c	\
			$(SRC_DIR)/ft_swap_node_np.c	\
			$(SRC_DIR)/mmalloc.c			\
			$(SRC_DIR)/ft_printf_fd.c		\
			$(SRC_DIR)/ft_strnlen.c			\
			$(SRC_DIR)/skip_atoi.c			\
			$(SRC_DIR)/to_c.c				\
			$(SRC_DIR)/to_s.c				\
			$(SRC_DIR)/to_nbr.c				\
			$(SRC_DIR)/to_n.c				\
			$(SRC_DIR)/get_next_line_v1.c	\
			$(SRC_DIR)/get_next_line_v2.c	\
			$(SRC_DIR)/get_next_line_utils.c	\
			$(SRC_DIR)/get_next_line_bonus.c	\
			$(SRC_DIR)/ft_strncpy.c			\
			$(SRC_DIR)/ft_strsub.c

NAME = lib2code.a

OBJ = $(SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror -g3 -fsanitize="address"

all: speak $(NAME)
	@echo "$(GREEN)-------------------------------------------------------------------$(NC)"
	@echo "$(GREEN)------------------------ Lib2code Is Ready ------------------------$(NC)"
	@echo "$(GREEN)-------------------------------------------------------------------$(NC)\n"

$(NAME): $(OBJ) ./includes/lib2code.h
	@ar -rcs $(NAME) $(OBJ)
	@echo "$(GREEN)------------------ Lib2code.a Finished Compiling ------------------$(NC)\n"
	@echo "										"	
	@echo "$(GREEN)	██╗     ██╗██████╗ ██████╗  ██████╗ ██████╗ ██████╗ ███████╗	$(RESET)		"
	@echo "$(GREEN)	██║     ██║██╔══██╗╚════██╗██╔════╝██╔═══██╗██╔══██╗██╔════╝	$(RESET)		"
	@echo "$(GREEN)	██║     ██║██████╔╝ █████╔╝██║     ██║   ██║██║  ██║█████╗ 		$(RESET) 		"
	@echo "$(GREEN)	██║     ██║██╔══██╗██╔═══╝ ██║     ██║   ██║██║  ██║██╔══╝ 		$(RESET)		"
	@echo " $(GREEN)	███████╗██║██████╔╝███████╗╚██████╗╚██████╔╝██████╔╝███████╗	$(RESET)		"
	@echo "	$(GREEN)╚══════╝╚═╝╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝	$(RESET)		"
	@echo "                                                            									"
	@echo "$(GREEN)              ismherna@student.42.fr - 42 Madrid - Ismael Hernández	$(RESET)		"

%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $<
	@printf "%-100s\r" ">Lib2code compiling: ""$(CC) -o $@"


clean:
	@rm -f $(OBJ) $(B_OBJ)
	@echo "$(RED)------------------------ Lib2code Cleaned -------------------------$(NC)"

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all speak clean fclean re




