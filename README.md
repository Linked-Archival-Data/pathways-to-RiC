# pathways-to-RiC

This repository contains files and research documents related to our exploration of what a potential transition to [Records in Context](https://www.ica.org/en/records-in-contexts-conceptual-model) might look like, using sample Encoded Archival Description xml data exported from our respective institutional archival description systems (ArchivesSpace, AtoM, homegrown). 

Sample files were processed with https://github.com/ArchivesNationalesFR/rico-converter.
 
 
 ## Preprocessing Files
 The converter can hiccup on namespaces and missing doctype/dtd declarations. To avoid this, run preprocess.xquery over your EAD directory. 
 
 (Make sure to change https://github.com/Linked-Archival-Data/pathways-to-RiC/blob/main/preprocessing_tools/preprocess.xquery#L13 to your input path.)
 
