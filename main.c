/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 15:52:38 by gbadi             #+#    #+#             */
/*   Updated: 2015/03/03 19:58:05 by gbadi            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

extern void ft_bzero(void *, size_t);
extern char	*ft_strcat(char *, char *);
extern	int	ft_isalpha(int);
extern	int	ft_isdigit(int);
extern int ft_isalnum(int);
extern void	ft_puts(char *);

int 		main(void)
{
	ft_puts("123456789 -+ PD");
	return (0);
}
