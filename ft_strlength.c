/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ryusupov <ryusupov@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/20 11:35:01 by ryusupov          #+#    #+#             */
/*   Updated: 2024/05/24 19:44:55 by ryusupov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

size_t	ft_strlength(const char *str)
{
	size_t	i;

	if (!str)
	{
		return (-1);
	}
	i = 0;
	while (str[i])
	{
		i++;
	}
	return (i);
}
