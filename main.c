/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 15:52:38 by gbadi             #+#    #+#             */
/*   Updated: 2015/03/03 22:59:28 by bsautron         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

extern void	ft_bzero(void *, size_t);
extern char	*ft_strcat(char *, char *);
extern int	ft_isalpha(int);
extern int	ft_isdigit(int);
extern int	ft_isascii(int);
extern int	ft_isprint(int);
extern int	ft_isalnum(int);
extern int	ft_toupper(int);
extern int	ft_tolower(int);
extern void	ft_puts(char *);
extern void	*ft_memset(void *, int, size_t);
extern size_t	ft_strlen(char *);

int 		main(void)
{
	char	*str;

	str = malloc(6);
	str[5] = 0;
	ft_memset(str, '4', 5);
	printf("%s\n", str);
	return (0);
}
