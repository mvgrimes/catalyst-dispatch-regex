use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name   => 'Catalyst::DispatchType::Regex',
    license       => 'perl',
    create_readme => 1,

    requires => { 'Catalyst::Runtime' => '5.90030', },

    test_requires => { 'Test::More' => 0, },

    meta_merge => {
        resources => {
            bugtracker =>
              'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Catalyst-DispatchType-Regex',
            repository => 'http://github.com/mvgrimes/catalyst-dispatch-regex'
        }
    },

    add_to_cleanup => ['Catalyst-DispatchType-Regex-*'],
);

$builder->create_build_script();
