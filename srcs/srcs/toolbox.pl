# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    toolbox.pl                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: htindon <htindon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/07/22 15:03:49 by htindon           #+#    #+#              #
#    Updated: 2014/07/22 15:06:18 by htindon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

use strict;
use warnings;

sub open_file {
	my $mode = $_[0];
	my $filename =  $_[1];
	open (my $fh, $mode, $filename)
		|| die "Error, cannot open $mode $filename: $!";
	return ($fh);
}

sub	print_data {
	my $filename = $_[0];
	my $fh = open_file("<", $filename);
	while ( my $line = <$fh> ) {
		print $line;
	}
	close($fh)
		|| die "Error, cannot close file: $!";
}
1;
