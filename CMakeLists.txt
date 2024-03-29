# 최소 cmake 버전
cmake_minimum_required(VERSION 3.17)

# 프로젝트 이름
project(minishell)

# 컴파일러 지정
set(CMAKE_CXX_COMPILER g++)

set(CMAKE_CXX_FLAGS ${LDFLAGS} ${CPPFLAGS})

# include 디렉토리 추가
include_directories(.)
include_directories(libft)
include_directories(/usr/local/opt/readline/include)
#include_directories(/opt/homebrew/opt/readline/include)

# 라이브러리 경로 추가
link_directories(/usr/local/opt/readline/lib)
#link_directories(/opt/homebrew/opt/readline/lib)

# 실행파일
add_executable(
        minishell
        libft/ft_atoi.c
        libft/ft_bzero.c
        libft/ft_calloc.c
        libft/ft_isalnum.c
        libft/ft_isalpha.c
        libft/ft_isascii.c
        libft/ft_isdigit.c
        libft/ft_isprint.c
        libft/ft_itoa.c
        libft/ft_lstadd_back.c
        libft/ft_lstadd_front.c
        libft/ft_lstclear.c
        libft/ft_lstdelone.c
        libft/ft_lstiter.c
        libft/ft_lstlast.c
        libft/ft_lstmap.c
        libft/ft_lstnew.c
        libft/ft_lstsize.c
        libft/ft_memccpy.c
        libft/ft_memchr.c
        libft/ft_memcmp.c
        libft/ft_memcpy.c
        libft/ft_memmove.c
        libft/ft_memset.c
        libft/ft_putchar_fd.c
        libft/ft_putendl_fd.c
        libft/ft_putnbr_fd.c
        libft/ft_putstr_fd.c
        libft/ft_split.c
        libft/ft_strchr.c
        libft/ft_strdup.c
        libft/ft_strjoin.c
        libft/ft_strlcat.c
        libft/ft_strlcpy.c
        libft/ft_strlen.c
        libft/ft_strmapi.c
        libft/ft_strncmp.c
        libft/ft_strnstr.c
        libft/ft_strrchr.c
        libft/ft_strtrim.c
        libft/ft_substr.c
        libft/ft_tolower.c
        libft/ft_toupper.c
        libft/libft.h
        src/main.c
        minishell.h
        src/parse/tokenizer.c
        src/parse/tokenizer_split.c
        src/parse/tokenizer_split2.c
        src/parse/tokenizer_env.c
        src/parse/tokenizer_type.c
        src/exception/parse_exception.c
        src/error/error.c
        src/utils/ft_strcmp.c
        src/built-in/ft_cd.c
        src/built-in/ft_pwd.c
        src/built-in/ft_env.c
        src/built-in/ft_export.c
        src/built-in/ft_unset.c
        src/env/init_env.c
        src/env/set_env.c
        src/env/get_env.c
        src/env/unset_env.c
        src/env/check_env.c
        src/execute/external.c
        src/env/env_path.c
        src/parse/syntax_analysis.c
        src/parse/tokenizer_type.c
        src/parse/ast_free.c
        src/parse/syntax_check.c
        src/parse/syntax_make_tree.c
        src/parse/syntax_make_tree2.c
        src/execute/execute_tree.c
        src/execute/execv_built_in.c
        src/built-in/ft_echo.c
        src/built-in/ft_exit.c
        src/execute/execute_redirect.c
        src/signal/signal.c
		src/parse/full_path.c
		src/execute/excute_command.c
		src/utils/set_status.c
)

target_link_libraries(minishell readline)
