/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbadi <gbadi@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 15:52:38 by gbadi             #+#    #+#             */
<<<<<<< HEAD
/*   Updated: 2015/03/04 20:06:35 by gbadi            ###   ########.fr       */
=======
/*   Updated: 2015/03/03 23:48:05 by bsautron         ###   ########.fr       */
>>>>>>> d5b86fbf1d570da077c0509d35c15f8386096424
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
<<<<<<< HEAD
extern char	*ft_strcpy(char *, char *);
extern char *ft_strdup(char *);
extern void *ft_memcpy(void *, void *, size_t);
extern void ft_cat(int);
extern void	ft_exit(int);

int 		main(void)
{
	int fd = open("main.c", O_RDONLY);
	ft_cat(fd);
	close(fd);
=======
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
>>>>>>> d5b86fbf1d570da077c0509d35c15f8386096424
	return (0);
}
