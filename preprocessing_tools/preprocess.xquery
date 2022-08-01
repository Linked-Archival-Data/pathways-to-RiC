xquery version "3.0";
declare namespace ead = "urn:isbn:1-931666-22-9";
declare namespace saxon="http://saxon.sf.net/";
declare copy-namespaces no-preserve, inherit;

import module namespace functx = "http://www.functx.com"
at "http://www.xqueryfunctions.com/xq/functx-1.0-doc-2007-01.xq";

declare option saxon:output "doctype-system=ead.dtd";

(:this file takes an input directory and processes the XML files in the directory to add doctype dtd and remove namespaces in order to make input EAD files compatible with RiC converter 1.0.0 :)

declare variable $EADS as document-node()* := collection("/path/to/directory?recurse=yes;select=*.xml")/doc(document-uri(.));
for $EAD in $EADS
let $root := $EAD//ead:ead

return
replace node $root with functx:change-element-ns-deep($root, '', '')
