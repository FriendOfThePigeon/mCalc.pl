#!/usr/bin/perl
package DropOperator;
use strict;

use Operator;

our @ISA = qw( Operator );

sub apply {
	my ($self, $exp) = @_;
	my $model = $self->{_model};
	my $value = $model->pop();
	if ($exp eq 'D') {
		while (defined($value)) {
			$value = $model->pop();
		}
	}
}

1;
