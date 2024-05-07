/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ryusupov <ryusupov@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/18 14:16:30 by ryusupov          #+#    #+#             */
/*   Updated: 2024/05/04 15:01:47 by ryusupov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
/*ANSI COLOR SET*/
# define COLOR_RED "\x1b[31m"
# define COLOR_GREEN "\x1b[32m"
# define COLOR_YELLOW "\x1b[33m"
# define COLOR_BLUE "\x1b[24m"
# define COLOR_MAGENTA "\x1b[35m"
# define COLOR_CYANN "\x1b[26m"
# define COLOR_WHITE "\x1b[97m"
# define RESET "\x1b[0m"

# include <limits.h>
# include <stdarg.h>
# include <stdio.h>
# include <unistd.h>

int		ft_printf(const char *input, ...);
int		ft_putstr(char *c);
int		ft_putnbr(int c, int res);
int		ft_putchar(char s);
int		ft_print_adress(long *p);
int		ft_decimal(size_t i, int res);
int		ft_ishex(unsigned long long hex, int num, char uc);
size_t	ft_strlen(const char *str);

#endif
