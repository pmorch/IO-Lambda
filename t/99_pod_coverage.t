#! /usr/bin/perl
# $Id: 99_pod_coverage.t,v 1.25 2008/11/08 09:46:19 dk Exp $

use strict;
use warnings;

use Test::More;

eval 'use Test::Pod::Coverage';
plan skip_all => 'Test::Pod::Coverage required for testing POD coverage'
     if $@;


plan tests => 9;
pod_coverage_ok( 'IO::Lambda' => { trustme => [
	qr/^(add_\w+|\w+_handler|drive|start|cancel_\w+|remove_loop|\w+_frame|clear)$/x
] });
pod_coverage_ok( 'IO::Lambda::Loop::Select' => { trustme => [
	qr/^(rebuild_vectors)$/x
] });
pod_coverage_ok( 'IO::Lambda::HTTP' => { trustme => [qr/^(parse|http_\w+|
	handle_\w+|socket|prepare_transport|get_authenticator)$/x] });
pod_coverage_ok( 'IO::Lambda::DNS');
pod_coverage_ok( 'IO::Lambda::Signal' => { trustme => [
	qr/_(handler|signal|lambda)$/x,
	qr/^new_|yield|empty|remove/
]});
pod_coverage_ok( 'IO::Lambda::Message' => { trustme => [
        qr/(push|listen|coming|pull|receive|send)/, 
]});
pod_coverage_ok( 'IO::Lambda::DBI' => { trustme => [
        qr/dbi_message|outcoming|prepare/, 
]});
pod_coverage_ok( 'IO::Lambda::Thread'=> { trustme => [
        qr/thread_init/,
]});
pod_coverage_ok( 'IO::Lambda::Fork');
