# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    main.pl                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: htindon <htindon@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/07/22 14:30:24 by htindon           #+#    #+#              #
#    Updated: 2014/07/22 14:56:54 by htindon          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

use strict;
use warnings;

sub open_file {
	my ($mode, $filename) =  @_;
	open (my $fh, $mode, $filename)
		|| die "Error, cannot open $mode $filename: $!";
	return ($fh);
}

sub	print_data {
	my $filename = @_;
	my $fh = open_file("<", $filename);
	while ( my $line = <$fh> ) {
		print $line;
	}
	close($fh)
		|| die "Error, cannot close file: $!";
}

print_data("test");
