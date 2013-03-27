use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name   => 'Catalyst::DispatchType::Regex',
    license       => 'perl',
    create_readme => 1,

    # dist_author       => 'Mark Grimes <mgrimes@cpan.org>',
    # dist_version_from => 'lib/Catalyst/DispatchType/Regex.pm',

    requires => { 'Catalyst::Runtime' => '5.90030', },

    test_requires => { 'Test::More' => 0, },

    meta_merge => {
        resources => {
            bugtracker =>
              'http://rt.cpan.org/NoAuth/Bugs.html?Dist=AnyEvent-Filesys-Notify',
            repository => 'http://github.com/mvgrimes/AnyEvent-Filesys-Notify'
        }
    },

    add_to_cleanup => ['Catalyst-DispatchType-Regex-*'],
);

$builder->create_build_script();
