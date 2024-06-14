/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ullitoa.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ismherna <ismherna@student.42madrid>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/14 00:35:46 by ismherna          #+#    #+#             */
/*   Updated: 2024/06/14 02:32:43 by ismherna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_length(unsigned long long int n)
{
	if (n < 10)
		return (1);
	else
		return (ft_length(n / 10) + 1);
}

char	*ft_ullitoa(unsigned long long int n)
{
	char	*str;
	int		len;

	len = ft_length(n);
	str = ft_calloc(len + 1, sizeof(char));
	if (len == 0)
		return (0);
	str[len] = '\0';
	while (len > 0)
	{
		str[len - 1] = n % 10 + '0';
		len--;
		n /= 10;
	}
	return (str);
}