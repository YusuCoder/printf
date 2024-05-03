/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ryusupov <ryusupov@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/28 22:51:48 by mac               #+#    #+#             */
/*   Updated: 2024/05/03 20:16:59 by ryusupov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int main(void)
{
	char str[] = "Student!";
	int num = 42;
	ft_printf(COLOR_GREEN"The result is: "RESET);
	ft_printf(COLOR_WHITE"%d %s\n"RESET, num, str);
	ft_printf(COLOR_GREEN"The adress of Student is: "RESET);
	ft_printf(COLOR_WHITE"%p\n"RESET, str);
	ft_printf(COLOR_GREEN"The hexadecimal of 42 is: "RESET);
	ft_printf(COLOR_WHITE"%x\n"RESET, num);
	return (0);
}
