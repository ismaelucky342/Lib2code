![image](https://github.com/user-attachments/assets/a315380f-a549-42a7-8613-d39225d7d185)

# Libft

ft_libft is a comprehensive library that provides a wide range of utility functions and data structures to facilitate various programming tasks. It includes implementations for string manipulation, memory management, data structures such as linked lists and hash tables, and specialized functions for handling formatted output and input parsing. This library is designed to be a useful tool for developers looking to optimize their coding process and improve efficiency.

This library is part of the original Libft project from 42, but has been updated with additional functions to expand its functionality and cater to more programming needs.

## Structures

- **t_ft_printf_dir**: Enum for printf direction flags.
- **t_list**: Singly linked list node.
- **t_mem_context**: Memory context for allocated lists.
- **t_pattern_list_np**: Node for a doubly linked list.
- **t_element**: Element for a hash table.
- **t_hashtable**: Hash table structure.

# Function and Structure List

## Functions

- **ft_strtok**: Tokenizes a string based on a delimiter.
- **ft_perror**: Prints an error message to stderr.
- **ft_bin2ascii**: Converts binary data to ASCII.
- **ft_string2bin**: Converts a string to binary representation.
- **ft_char2bin**: Converts a character to binary representation.
- **ft_add_fs**: Adds a character to the start of a string.
- **ft_ishexdigit**: Checks if a character is a hexadecimal digit.
- **ft_isspace**: Checks if a character is a whitespace.
- **free_2d**: Frees a 2D array.
- **ft_atoll**: Converts a string to a long long integer.
- **ft_sqrt**: Computes the square root of a number.
- **checkd_bf**: Checks a buffer.
- **ins_sort**: Performs insertion sort on an array.
- **ft_isreserved**: Checks if a character is reserved.


## Printf Functions

- **ft_specifier**: Handles printf specifiers.
- **handle_format_flags**: Processes format flags.
- **process_width_precision**: Processes width and precision.
- **ft_initdir**: Initializes direction flags.
- **ft_printf**: Prints formatted output.
- **ft_printf_fd**: Prints formatted output to a file descriptor.
- **ft_strnlen**: Computes the length of a string up to a maximum length.
- **skip_atoi**: Skips characters and converts to integer.
- **to_c**: Converts to character.
- **to_s**: Converts to string.
- **to_nbr**: Converts to number.
- **ft_itoa_b**: Converts a number to a string in a specified base.
- **fill_width**: Fills a string with a specified width.
- **ft_number_str**: Converts a number to a string with specified flags.
- **get_nbr**: Gets a number from variadic arguments.
- **to_n**: Converts to number and stores in a pointer.
- **ft_print_char**: Prints a character.
- **ft_print_str**: Prints a string.
- **ft_print_number**: Prints a number.
- **ft_print_unsigned**: Prints an unsigned number.
- **ft_print_hex**: Prints a hexadecimal number.
- **ft_print_pointer**: Prints a pointer.

## Libft Functions

- **ft_strndup**: Duplicates a string up to a specified length.
- **ft_strcpy**: Copies a string.
- **ft_strjoin_free**: Joins two strings and frees the first.
- **ft_close**: Closes a file descriptor.
- **skip_spaces**: Skips spaces in a string.
- **ft_is_reserved_char**: Checks if a character is reserved.
- **ft_strcmp**: Compares two strings.
- **ft_isalpha**: Checks if a character is alphabetic.
- **ft_isdigit**: Checks if a character is a digit.
- **ft_isalnum**: Checks if a character is alphanumeric.
- **ft_isascii**: Checks if a character is ASCII.
- **ft_isprint**: Checks if a character is printable.
- **ft_strlen**: Computes the length of a string.
- **ft_memset**: Sets a block of memory to a specified value.
- **ft_bzero**: Sets a block of memory to zero.
- **ft_memcpy**: Copies a block of memory.
- **ft_memmove**: Moves a block of memory.
- **ft_strlcpy**: Copies a string with a specified size.
- **ft_strlcat**: Concatenates a string with a specified size.
- **ft_toupper**: Converts a character to uppercase.
- **ft_tolower**: Converts a character to lowercase.
- **ft_strchr**: Finds a character in a string.
- **ft_strrchr**: Finds a character in a string from the end.
- **ft_strncmp**: Compares two strings up to a specified length.
- **ft_memchr**: Finds a character in a block of memory.
- **ft_memcmp**: Compares two blocks of memory.
- **ft_strnstr**: Finds a substring in a string up to a specified length.
- **ft_atoi**: Converts a string to an integer.
- **ft_calloc**: Allocates memory and initializes to zero.
- **ft_strdup**: Duplicates a string.
- **ft_mstrdup**: Duplicates a string with memory management.
- **ft_strsub**: Extracts a substring from a string.
- **ft_strncpy**: Copies a string up to a specified length.
- **ft_putstr_fd**: Writes a string to a file descriptor.
- **ft_putchar_fd**: Writes a character to a file descriptor.
- **ft_putendl_fd**: Writes a string to a file descriptor with a newline.
- **ft_putnbr_fd**: Writes a number to a file descriptor.
- **ft_striteri**: Applies a function to each character of a string.
- **ft_split**: Splits a string by a delimiter.
- **ft_strtrim**: Trims characters from the start and end of a string.
- **ft_mstrtrim**: Trims characters from the start and end of a string with memory management.
- **ft_itoa**: Converts an integer to a string.
- **ft_strjoin**: Joins two strings.
- **ft_strmapi**: Applies a function to each character of a string and returns a new string.
- **ft_msubstr**: Extracts a substring from a string with memory management.
- **ft_substr**: Extracts a substring from a string.
- **ft_print_error**: Prints an error message with a title and code.
- **ft_lstnew**: Creates a new list node.
- **ft_lstadd_front**: Adds a node to the front of a list.
- **ft_lstsize**: Computes the size of a list.
- **ft_lstlast**: Gets the last node of a list.
- **ft_lstadd_back**: Adds a node to the back of a list.
- **ft_lstdelone**: Deletes a node from a list.
- **ft_lstclear**: Clears a list.
- **ft_lstiter**: Iterates over a list and applies a function to each node.
- **ft_lstmap**: Maps a function to each node of a list and returns a new list.

## Hash Functions

- **ft_add_element**: Adds an element to a hash table.
- **ft_get_element**: Gets an element from a hash table.
- **ft_ch_value**: Changes the value of an element in a hash table.
- **ft_create_element**: Creates a new hash table element.
- **ft_create_hashtable**: Creates a new hash table.
- **ft_delete_element**: Deletes an element from a hash table.
- **ft_free_hashtable**: Frees a hash table.
- **ft_free_element**: Frees a hash table element.
- **ft_get_value**: Gets the value of an element in a hash table.
- **ft_monkey_hash**: Computes a hash value for a string.
- **ft_print_hashtable**: Prints a hash table.
- **ft_arraylen**: Computes the length of an array.
- **ft_next_prime**: Finds the next prime number.
- **ft_index**: Finds the index of a character in a string.
- **ft_is_prime**: Checks if a number is prime.

## Double Linked List Functions

- **ft_del_list_np**: Deletes a doubly linked list.
- **ft_new_node**: Creates a new node with a specified size and function.
- **ft_add_node_end_np**: Adds a node to the end of a doubly linked list.
- **ft_add_node_f_nextto_np**: Adds a node next to a specified node in a doubly linked list.
- **ft_add_node_f_prevto_np**: Adds a node before a specified node in a doubly linked list.
- **ft_add_node_nextto_np**: Adds a node next to another node in a doubly linked list.
- **ft_add_node_prevto_np**: Adds a node before another node in a doubly linked list.
- **ft_add_node_start_np**: Adds a node to the start of a doubly linked list.
- **ft_del_node_end_np**: Deletes the last node of a doubly linked list.
- **ft_del_node_np**: Deletes a specified node from a doubly linked list.
- **ft_del_node_start_np**: Deletes the first node of a doubly linked list.
- **ft_foreach_node_f_np**: Applies a function to each node of a doubly linked list.
- **ft_swap_node_np**: Swaps two nodes in a doubly linked list.

## Get Next Line Functions

- **get_next_line_bonus**: Reads the next line from a file descriptor (bonus version).
- **get_next_line**: Reads the next line from a file descriptor.
- **ft_strdup_gnl**: Duplicates a string for get_next_line.
- **ft_strlen_gnl**: Computes the length of a string for get_next_line.
- **ft_substr_gnl**: Extracts a substring for get_next_line.
- **ft_strjoin_gnl**: Joins two strings for get_next_line.
- **fill_str_gnl**: Fills a string for get_next_line.
