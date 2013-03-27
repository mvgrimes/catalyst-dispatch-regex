package Catalyst::Plugin::DispatchType::Regex;
use strict;
use warnings;
use MRO::Compat;

sub setup_dispatcher {
    my $class = shift;

    $class->next::method( @_ );

    $class->dispatcher->preload_dispatch_types(
        @{$class->dispatcher->preload_dispatch_types},
        qw/ Regex /
    );

    return $class;
}

1;

