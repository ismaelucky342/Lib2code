# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ismherna <ismherna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/22 15:48:04 by ismherna          #+#    #+#              #
#    Updated: 2024/06/11 21:22:29 by ismherna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	lib2code.a
INCLUDE	= 	lib2code.h \

SRC_DIR = src
SRC		=	$(SRC_DIR)/ft_printf.c			\
			$(SRC_DIR)/ft_ishexdigit.c     \
			$(SRC_DIR)/ft_isspace.c 		\
			$(SRC_DIR)/ft_string.c			\
			$(SRC_DIR)/ft_unsigned.c		\
			$(SRC_DIR)/ft_number.c			\
			$(SRC_DIR)/ft_hexadecimals.c	\
			$(SRC_DIR)/ft_char.c			\
			$(SRC_DIR)/ft_pointers.c		\
			$(SRC_DIR)/ft_tolower.c 	\
			$(SRC_DIR)/ft_putstr_fd.c 	\
			$(SRC_DIR)/ft_putendl_fd.c 	\
			$(SRC_DIR)/ft_isalnum.c 	\
			$(SRC_DIR)/ft_isalpha.c 	\
			$(SRC_DIR)/ft_isdigit.c 	\
			$(SRC_DIR)/ft_isascii.c 	\
			$(SRC_DIR)/ft_isprint.c 	\
			$(SRC_DIR)/ft_strlen.c 	\
			$(SRC_DIR)/ft_memset.c 	\
			$(SRC_DIR)/ft_bzero.c \
			$(SRC_DIR)/ft_memcpy.c \
			$(SRC_DIR)/ft_memmove.c \
			$(SRC_DIR)/ft_strlcpy.c \
			$(SRC_DIR)/ft_strlcat.c \
			$(SRC_DIR)/ft_toupper.c \
			$(SRC_DIR)/ft_strncmp.c \
			$(SRC_DIR)/ft_strnstr.c \
			$(SRC_DIR)/ft_putchar_fd.c \
			$(SRC_DIR)/ft_putnbr_fd.c \
			$(SRC_DIR)/ft_strjoin.c \
			$(SRC_DIR)/ft_calloc.c \
			$(SRC_DIR)/ft_strdup.c \
			$(SRC_DIR)/ft_memchr.c \
			$(SRC_DIR)/ft_memcmp.c \
			$(SRC_DIR)/ft_substr.c \
			$(SRC_DIR)/ft_itoa.c \
			$(SRC_DIR)/ft_split.c \
			$(SRC_DIR)/ft_strrchr.c \
			$(SRC_DIR)/ft_strmapi.c \
			$(SRC_DIR)/ft_striteri.c \
			$(SRC_DIR)/ft_atoi.c \
			$(SRC_DIR)/ft_strchr.c \
			$(SRC_DIR)/ft_strtrim.c \
			$(SRC_DIR)/ft_lstnew_bonus.c \
			$(SRC_DIR)/ft_lstadd_front_bonus.c \
			$(SRC_DIR)/ft_lstsize_bonus.c \
			$(SRC_DIR)/ft_lstlast_bonus.c \
			$(SRC_DIR)/ft_lstadd_back_bonus.c \
			$(SRC_DIR)/ft_lstdelone_bonus.c \
			$(SRC_DIR)/ft_lstclear_bonus.c \
			$(SRC_DIR)/ft_lstiter_bonus.c \
			$(SRC_DIR)/ft_lstmap_bonus.c  \
			$(SRC_DIR)/display_error.c 	\
			$(SRC_DIR)/free_2d.c	 \
			$(SRC_DIR)/ft_atoll.c	 \
			$(SRC_DIR)/ft_sqrt.c	 \
			$(SRC_DIR)/checkD_bf.c	 \
			$(SRC_DIR)/ins_sort.c	 \
			$(SRC_DIR)/ft_index.c		\
			$(SRC_DIR)/ins_sort.c	\
			$(SRC_DIR)/ft_addFS.c \
			$(SRC_DIR)/ft_char2bin.c	\
			$(SRC_DIR)/ft_string2bin.c	\
			$(SRC_DIR)/ft_bin2ascii.c	\
			$(SRC_DIR)/ft_str2digit.c

OBJ		=	${SRC:.c=.o}

CC		=	gcc
RM		=	rm -f
AR		=	ar rc
RN		=	ranlib

CFLAGS	=	-Wall -Wextra -Werror

# Colors
DEF_COLOR   =   \033[0;39m
GRAY        =   \033[0;90m
RED         =   \033[0;91m
GREEN       =   \033[0;92m
YELLOW      =   \033[0;93m
BLUE        =   \033[0;94m
MAGENTA     =   \033[0;95m
CYAN        =   \033[0;96m
WHITE       =   \033[0;97m

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):	${OBJ} 
	@echo "Compiling .."
	${AR} ${NAME} ${OBJ}
	${RN} ${NAME}
	@echo "$(GREEN)libft compiled!$(DEF_COLOR)"
	@echo "$(BLUE)Compiled Objects:  $(words $(NAME)  ${OBJ})$(DEF_COLOR)"

clean:
	@echo "$(RED)Removing .o  ...$(DEF_COLOR)"
	${RM} ${OBJ}
	@echo "$(BLUE)Deleted Objects: $(words ${OBJ})  ${OBJ}$(DEF_COLOR)"
	@echo "$(GREEN)Done !"

fclean: clean
	@echo "$(RED)Removing libft.a ...$(DEF_COLOR)"	
	${RM} $(NAME)
	@echo "$(BLUE)Deleted Objects:  $(words $(NAME))  $(NAME)$(DEF_COLOR)"
	@echo "$(GREEN)Done !$(DEF_COLOR)"

re: fclean all  
