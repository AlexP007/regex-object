package Regex::Object::Match;

use 5.20.0;
use strict;
use warnings qw(FATAL);
use utf8;

use Moo;
use namespace::clean;

has [qw(captures names names_a prematch match postmatch)] => (
    is       => 'ro',
    required => 1,
);

has success => (
    is => 'rwp',
);

sub BUILD {
    my $self = shift;
    $self->_set_success(defined $self->match);
}

1;