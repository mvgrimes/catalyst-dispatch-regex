# NAME

Catalyst::DispatchType::Regex - Regex DispatchType

# SYNOPSIS

See [Catalyst::DispatchType](http://search.cpan.org/perldoc?Catalyst::DispatchType).

# DESCRIPTION

__Status: Deprecated.__ Regex dispatch types have been deprecated and removed
from Catalyst core. It is recommend that you use Chained methods or other
techniques instead. As part of the refactoring, the dispatch priority of
Regex vs Regexp vs LocalRegex vs LocalRegexp may have changed. Priority is now
influenced by when the dispatch type is first seen in your application.

When loaded, a warning about the deprecation will be printed to STDERR. To
suppress the warning set the CATALYST\_NOWARN\_DEPRECATE environment variable to
a true value.

Dispatch type managing path-matching behaviour using regexes.  For
more information on dispatch types, see:

- [Catalyst::Manual::Intro](http://search.cpan.org/perldoc?Catalyst::Manual::Intro) for how they affect application authors
- [Catalyst::DispatchType](http://search.cpan.org/perldoc?Catalyst::DispatchType) for implementation information.

# METHODS

## $self->list($c)

Output a table of all regex actions, and their private equivalent.

## $self->match( $c, $path )

Checks path against every compiled regex, and offers the action for any regex
which matches a chance to match the request. If it succeeds, sets action,
match and captures on $c->req and returns 1. If not, returns 0 without
altering $c.

## $self->register( $c, $action )

Registers one or more regex actions for an action object.
Also registers them as literal paths.

Returns 1 if any regexps were registered.

## $self->register\_regex($c, $re, $action)

Register an individual regex on the action. Usually called from the
register method.

## $self->uri\_for\_action($action, $captures)

returns a URI for this action if it can find a regex attributes that contains
the correct number of () captures. Note that this may function incorrectly
in the case of nested captures - if your regex does (...(..))..(..) you'll
need to pass the first and third captures only.

# AUTHORS

Catalyst Contributors, see Catalyst.pm

# COPYRIGHT

This library is free software. You can redistribute it and/or modify it under
the same terms as Perl itself.
