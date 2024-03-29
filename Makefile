SRCS =  ./src/main.c \
		./src/built-in/ft_cd.c \
		./src/built-in/ft_env.c \
		./src/built-in/ft_export.c \
		./src/built-in/ft_pwd.c \
		./src/built-in/ft_unset.c \
		./src/built-in/ft_exit.c \
		./src/built-in/ft_echo.c \
		./src/parse/tokenizer.c \
		./src/parse/tokenizer_env.c \
		./src/parse/tokenizer_split.c \
		./src/parse/tokenizer_split2.c \
		./src/parse/tokenizer_type.c \
		./src/parse/syntax_analysis.c \
		./src/parse/syntax_check.c \
		./src/parse/syntax_make_tree.c \
		./src/parse/syntax_make_tree2.c \
		./src/parse/ast_free.c \
		./src/parse/full_path.c \
		./src/env/get_env.c \
		./src/env/init_env.c \
		./src/env/set_env.c \
		./src/env/unset_env.c \
		./src/env/check_env.c \
		./src/error/error.c \
		./src/env/env_path.c \
		./src/exception/parse_exception.c \
		./src/execute/excute_command.c \
		./src/execute/external.c \
		./src/execute/execute_tree.c \
        ./src/execute/execv_built_in.c \
        ./src/execute/execute_redirect.c \
        ./src/signal/signal.c \
		./src/utils/ft_strcmp.c \
		./src/utils/set_status.c

CC = gcc
LIBFT = libft
NAME = minishell

LIBS = $(LDFLAGS) $(CPPFLAGS) -lreadline

CFLAG = -Wall -Wextra -Werror
OBJS = $(SRCS:.c=.o)

all: make_libft $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAG) -I./ -o $(NAME) $(OBJS) $(LIBFT)/libft.a $(LIBS)

make_libft:
	make -C $(LIBFT)

.c.o :
	$(CC) $(LIBS) -I./ -c $< -o $@

clean:
	rm -f $(OBJS)
	make clean -C $(LIBFT)

fclean: clean
	rm -f $(NAME)
	make fclean -C libft

re: fclean all

.PHONY: all clean fclean re
