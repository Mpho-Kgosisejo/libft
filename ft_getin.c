/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getin.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mkgosise <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/07/16 13:24:59 by mkgosise          #+#    #+#             */
/*   Updated: 2017/07/17 13:48:13 by mkgosise         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_getin(void)
{
	char buf;
	char *ret;
	char *tmp;
	char *tmp2;

	ret = ft_strnew(1);
	while (read(STDIN_FILENO, &buf, 1))
	{
		if (buf == '\n')
			break ;
		tmp2 = ft_strnew(1);
		ft_strncpy(tmp2, &buf, 1);
		tmp = ft_strjoin(ret, tmp2);
		free(tmp2);
		free(ret);
		ret = tmp;
	}
	return (ret);
}
