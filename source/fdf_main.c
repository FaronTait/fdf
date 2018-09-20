/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fdf_main.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ftait <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/01 16:15:10 by ftait             #+#    #+#             */
/*   Updated: 2017/10/01 16:21:06 by ftait            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fdf.h"
#include <fcntl.h>

void	fdf(t_fdf *read)
{
	if (readline(read) == -1)
	{
		ft_putendl("ERROR!");
		return ;
	}
	mlx(read);
}

int		main(int ac, char **av)
{
	t_fdf mine;

	if (ac == 2)
	{
		mine.head = av[1];
		mine.fd = open(mine.head, O_RDONLY);
		fdf(&mine);
	}
	else
		ft_putendl("syntax ./fdf test_map");
	return (0);
}
