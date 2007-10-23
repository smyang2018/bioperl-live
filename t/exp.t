# -*-Perl-*- Test Harness script for Bioperl
# $Id$

use strict;

BEGIN {
	use lib 't/lib';
	use BioperlTest;
	
	test_begin(-tests => 3,
			   -requires_module => 'Bio::SeqIO::staden::read');
	
	use_ok('Bio::SeqIO');
}

my $verbose = test_debug();

my $io = Bio::SeqIO->new(-format => 'exp',
			 -verbose => $verbose,
			 -file => test_input_file('readtest.exp'));
ok(my $seq = $io->next_seq);
is($seq->seq, "GATGATTCCGGCTTCGGACGACTCTAGAGGATCCCCATTTTTATAGTTTTTATCTTGTAATAGATGTTTAGATTTTTCGTTGTAATTATTTTCTTTATTGTTGAAATTAGTATCTCTGGGTAATTTATCATATTCTCTGGAAAATGATTTACTATCACTAGATACTTCATAAGATTTATAATCTTTATTATGAAAATCATCTCTATTTTTCAAATTATTATTATATCTATCAAAGTTTCTGTCTTCATTATATCTATTAGCATATCTATCTTTATCTTTATCCCTATCACTATATCTATCATATGGTTCATCTTGTTCAACCGATCAGACTCGATTCGCCATCGCCTCTAACGGATGGCCGCTCCCCCTCTCATACCTCGCTCCCCTCGACATCCCCCGTCTCGCCACCCTATCCGCCCCCTTCATCACCCCCCCTTATCCACACCCTCACCCCCCGCATCGCGCACCCACGACCACCCGAAGAACCGCCCTTACTCCCAAGTACGCCCCGACCTCCATCACCCTATGCGGTACCACTCCCACCACACCCAGTCCTACTTTCGCCCGCACATCGGCCCCGCTTCAGACAGCTCCCAACTACGCAACCCACGCTTGTTCTTGTTCACACTCGAATACTCGAATCTCTCATTACTCCGCGGACTCCGCCGCACCTGTGCACCATTAACTGTGTAGCGCCTGAACCGGCACCTCTGATTACCACTTCCTCCACCAGCACAGTCCTATTACCGCATGTCGCTCTGCTAAGACAGTGCAAGACTCTGCGGTCGCTCTGACCCGCATCCGCCAGGGCACCTCTCACCCTCGCTGGCCACCCCGCCCCCCTCTCCCTGCCCCTTCATTCCCCCAAACCGCTTTCAACGGGACACACCCCTCCGCGGCGGACCACAACTCGCCGTCGGCCACCACTCACACCTTCCCTCCTCCTTCCCCCACATCACGCCAACCCCGTGGGACGGCTCTCCCGCGGCTACGACGCGCAACCCCCCCTCGCCGCTTCCCCCCCAACTTCCCACGGGCTCCCCTCCGCCCCTTACCCGCGAGGAGCTTCACCCGCGAACCACCTCCCCCCTTTCCCAACAGCACCG");
