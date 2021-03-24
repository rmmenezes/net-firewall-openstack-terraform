#!/bin/bash

openstack image create --file /home/server/imgs/Chemical_Plant/ChemicalPlant.ova_FILES/ChemicalPlant-disk001.vmdk --disk-format qcow2 chemical_plant
openstack image create --file /home/server/imgs/Pfsense/pfSense.ova_FILES/pfSense-disk001.vmdk --disk-format qcow2 pf_sense
openstack image create --file /home/server/imgs/Scada/ScadaBR.ova_FILES/ScadaBR-disk001.vmdk --disk-format qcow2 scada_br
openstack image create --file /home/server/imgs/Wokstation/workstation.ova_FILES/workstation-disk001.vmdk --disk-format qcow2 workstation
openstack image create --file /home/server/imgs/Plc/plc_2.ova_FILES/plc_2-disk001.vmdk --disk-format qcow2 plc

