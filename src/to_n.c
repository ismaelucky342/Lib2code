/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   to_n.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ismherna <ismherna@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 10:57:52 by ismherna          #+#    #+#             */
/*   Updated: 2024/09/04 13:19:28 by ismherna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/lib2code.h"

void	to_n(int printed, int *dir, va_list ap)
{
	int	*ptr;

	if (dir[PF_LONG] >= 0)
	{
		if (dir[PF_LONG] == 0)
			ptr = (int *)va_arg(ap, long *);
		else
			ptr = (int *)va_arg(ap, long long *);
	}
	else if (dir[PF_SHORT] >= 0)
	{
		if (dir[PF_SHORT] == 0)
			ptr = (int *)va_arg(ap, short int *);
		else
			ptr = (int *)va_arg(ap, signed char *);
	}
	else
		ptr = va_arg(ap, int *);
	*ptr = printed;
}