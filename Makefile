LIB_SRC =	src/checkD_bf.c \
		src/free_2d.c \
		src/ft_addFS.c \
		src/ft_add_element.c \
		src/ft_arraylen.c \
		src/ft_atoi.c \
		src/ft_atoll.c \
		src/ft_bin2ascii.c \
		src/ft_bzero.c \
		src/ft_calloc.c \
		src/ft_ch_value.c \
		src/ft_char.c \
		src/ft_char2bin.c \
		src/ft_isreserved.c \
		src/ft_create_element.c \
		src/ft_create_hashtable.c \
		src/ft_delete_element.c \
		src/ft_free_hashtable.c \
		src/ft_get_value.c \
		src/ft_hexadecimals.c \
		src/ft_index.c \
		src/ft_is_prime.c \
		src/ft_isalnum.c \
		src/ft_isalpha.c \
		src/ft_isascii.c \
		src/ft_isdigit.c \
		src/ft_ishexdigit.c \
		src/ft_isprint.c \
		src/ft_isspace.c \
		src/ft_itoa.c \
		src/ft_lstadd_back_bonus.c \
		src/ft_lstadd_front_bonus.c \
		src/ft_lstclear_bonus.c \
		src/ft_lstdelone_bonus.c \
		src/ft_lstiter_bonus.c \
		src/ft_lstlast_bonus.c \
		src/ft_lstmap_bonus.c \
		src/ft_lstnew_bonus.c \
		src/ft_lstsize_bonus.c \
		src/ft_memchr.c \
		src/ft_memcmp.c \
		src/ft_memcpy.c \
		src/ft_memmove.c \
		src/ft_memset.c \
		src/ft_monkey_hash.c \
		src/ft_next_prime.c \
		src/ft_number.c \
		src/ft_pointers.c \
		src/ft_print_hashtable.c \
		src/ft_printf.c \
		src/ft_putchar_fd.c \
		src/ft_putendl_fd.c \
		src/ft_putnbr_fd.c \
		src/ft_putstr_fd.c \
		src/ft_split.c \
		src/ft_sqrt.c \
		src/ft_strchr.c \
		src/ft_strdup.c \
		src/ft_string.c \
		src/ft_string2bin.c \
		src/ft_striteri.c \
		src/ft_strjoin.c \
		src/ft_strlcat.c \
		src/ft_strlcpy.c \
		src/ft_strlen.c \
		src/ft_strmapi.c \
		src/ft_strncmp.c \
		src/ft_strnstr.c \
		src/ft_strrchr.c \
		src/ft_strtrim.c \
		src/ft_substr.c \
		src/ft_tolower.c \
		src/ft_toupper.c \
		src/ft_unsigned.c \
		src/ins_sort.c \
		src/ft_del_list_np.c \
		src/ft_new_node.c \
		src/ft_add_node_end_np.c \
		src/ft_add_node_f_nextto_np.c  \
		src/ft_add_node_f_prevto_np.c  \
		src/ft_add_node_nextto_np.c \
		src/ft_add_node_prevto_np.c \
		src/ft_add_node_start_np.c \
		src/ft_del_node_end_np.c \
		src/ft_del_node_np.c \
		src/ft_del_node_start_np.c \
		src/ft_foreach_node_f_np.c \
		src/ft_swap_node_np.c \
		src/ft_printf_fd.c \
		src/ft_printf_fd_utils.c \
		src/ft_strnlen.c \
		src/skip_atoi.c \
		src/to_c.c \
		src/to_s.c \
		src/to_nbr.c \
		src/to_nbr_utils.c \
		src/to_n.c \
		src/get_next_line.c \
		src/get_next_line_utils.c \
		src/get_next_line_bonus.c \
		src/ft_strncpy.c 	\
		src/ft_strsub.c \
		src/ft_strcmp.c	\
		src/ft_print_error.c \
		src/ft_skip_spaces.c \
		src/ft_strcpy.c \
		src/ft_strjoin_free.c \
		src/ft_perror.c \
		src/ft_strtok.c \
		src/ft_is_reserved_char.c \
		src/ft_strndup.c

G = \033[1;32m
R = \033[0;31m
NC = \033[0m

NAME = libft.a

LIB_OBJ_DIR = objects

LIB_OBJ = $(patsubst src/%.c, $(LIB_OBJ_DIR)/%.o, $(LIB_SRC))

CC = cc
CFLAGS = -Wall -Wextra -Werror
INCLUDE = -Iincludes

all: $(NAME)
	@echo "$(G)----------------------------------------------------------------------------------------------------$(NC)"
	@echo "$(G)------------------------------------------ Libft Is Ready ------------------------------------------$(NC)"
	@echo "$(G)----------------------------------------------------------------------------------------------------\n$(NC)"

$(NAME): $(LIB_OBJ) includes/libft.h
	@ar -rcs $(NAME) $(LIB_OBJ)
	@printf "%-100s\r" ""
	@echo "$(G)------------------------------------ Libft.a Finished Compiling ------------------------------------$(NC)\n"

$(LIB_OBJ_DIR):
	@mkdir -p $(LIB_OBJ_DIR)

$(LIB_OBJ_DIR)/%.o: src/%.c | $(LIB_OBJ_DIR)
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $<
	@printf "%-200s\r" ">Libft compiling: ""$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $<"

clean:
	@rm -rf $(LIB_OBJ_DIR)
	@echo "$(R)-------------------------------------- Libft Has Been Cleaned --------------------------------------$(NC)"

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
