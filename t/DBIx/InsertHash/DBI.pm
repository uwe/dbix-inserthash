package DBIx::InsertHash::DBI;

use strict;
use warnings;


sub new {
    my ($class) = @_;

    return bless {}, $class;
}

sub do {
    my ($self, $sql, $opt, @val) = @_;

    $self->{sql} = $sql;
    $self->{opt} = $opt;
    $self->{val} = \@val;
}

sub last_insert_id {
    my ($self, @arg) = @_;

    return 999;
}


1;
