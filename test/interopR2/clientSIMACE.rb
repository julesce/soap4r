#!/usr/bin/env ruby

$serverName = 'SIM ACE'
$serverBase = 'http://soapinterop.simdb.com/round2'
$serverGroupB = 'http://soapinterop.simdb.com/round2B'

require 'clientBase'

drvBase = SOAP::Driver.new( Log.new( STDERR ), 'InteropApp', InterfaceNS, $serve
rBase, $proxy, $soapAction )
methodDefBase( drvBase )

drvGroupB = SOAP::Driver.new( Log.new( STDERR ), 'InteropApp', InterfaceNS, $ser
verGroupB, $proxy, $soapAction )
methodDefGroupB( drvGroupB )

doTestBase( drvBase )
doTestGroupB( drvGroupB )
submitTestResult
