/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 15:52:38 by gbadi             #+#    #+#             */
/*   Updated: 2015/03/07 04:15:07 by bsautron         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

void		ft_putchar(char c)
{
	write(1, &c, 1);
}

void		ft_putnbr(int n)
{
	if (n == -2147483647)
	{
		write(1, "-2147483647", 11);
		return ;
	}
	if (n < 0)
	{
		n = -n;
		ft_putchar('-');
	}
	else if (n > 9)
	{
		ft_putnbr(n / 10);
		ft_putnbr(n % 10);
	}
	else
		ft_putchar(n + 48);
}

extern void		ft_bzero(void *, size_t);
extern char		*ft_strcat(char *, char *);
extern int		ft_isalpha(int);
extern char		*ft_ou(void);
extern int		ft_isdigit(int);
extern int		ft_isascii(int);
extern int		ft_isprint(int);
extern int		ft_isalnum(int);
extern int		ft_toupper(int);
extern int		ft_tolower(int);
extern int		ft_puts(char *);
extern char		*ft_strcpy(char *, char *);
extern void		ft_nebre(void);
extern char		*ft_strdup(char *);
extern void		*ft_memalloc(size_t);
extern void		*ft_memcpy(void *, void *, size_t);
extern void		ft_cat(int);
extern void		ft_exit(int);
extern void		*ft_memset(void *, int, size_t);
extern size_t	ft_strlen(char *);
extern int		ft_log(char *);
extern void		ft_filezero(char *);

int 			main(void)
{
ft_nebre();
	return (0);
}
