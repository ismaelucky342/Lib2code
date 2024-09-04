/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mmalloc.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ismherna <ismherna@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 10:57:52 by ismherna          #+#    #+#             */
/*   Updated: 2024/09/04 13:19:28 by ismherna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/lib2code.h"

t_list	*g_all_malloc;

void	*mmalloc(unsigned int size)
{
	void	*new;
	t_list	*list;

	if (!(new = malloc(size + 1)))
	{
		free_all_malloc();
		ft_printf_fd(2, "allocation error");
		exit(1);
	}
	if (!(list = (t_list *)malloc(sizeof(t_list))))
	{
		free_all_malloc();
		ft_printf_fd(2, "allocation error");
		exit(1);
	}
	ft_bzero(new, size);
	list->data = new;
	list->next = g_all_malloc;
	g_all_malloc = list;
	return (new);
}

int		free_all_malloc(void)
{
	t_list *prev;

	while (g_all_malloc)
	{
		free(g_all_malloc->data);
		prev = g_all_malloc;
		g_all_malloc = g_all_malloc->next;
		free(prev);
	}
	return (0);
}

int		mfree(void **to_free)
{
	t_list **indir;
	t_list *f;

	if (!*to_free)
		return (0);
	indir = &g_all_malloc;
	while (*indir && (*indir)->data != *to_free)
		indir = &((*indir)->next);
	f = *indir;
	if (f)
	{
		*indir = (*indir)->next;
		free(f->data);
	}
	free(f);
	*to_free = NULL;
	return (0);
}