use Test::More;
# This kludge is necessary to avoid failing due to circular dependencies
# with Catalyst-Runtime. Not ideal, but until we remove CDR from
# Catalyst-Runtime prereqs, this is necessary to avoid Catalyst-Runtime build
# failing.
BEGIN {
    eval qq{use Catalyst::Runtime 5.90030;};
    if ( $@ ) {
        plan skip_all => 'Test require Catalyst::Runtime 5.90030';
        exit;
    }
    plan tests => 1;
}

BEGIN {
use_ok( 'Catalyst::DispatchType::Regex' );
}

diag( "Testing Catalyst::DispatchType::Regex $Catalyst::DispatchType::Regex::VERSION" );
