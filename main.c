/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 15:52:38 by gbadi             #+#    #+#             */
/*   Updated: 2015/03/03 23:48:05 by bsautron         ###   ########.fr       */
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
extern void		*ft_memcpy(void *, const void *, size_t);

int 		main(void)
{
	char	*str;

	str = malloc(50);
	bzero(str, 50);
	str[3] = '-';
	str[4] = '-';
	str[5] = '-';
	ft_memcpy(str, "yolo", 4);
	printf("%s\n", str);
	return (0);
}
