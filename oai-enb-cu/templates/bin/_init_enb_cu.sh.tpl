#!/bin/bash
# SPDX-FileCopyrightText: 2020-present Open Networking Foundation <info@opennetworking.org>
#
# SPDX-License-Identifier: LicenseRef-ONF-Member-1.0

set -ex

apt update; apt install -y net-tools iproute2

cp /opt/oai/conf_files/cu.conf /opt/oai/share/cu.conf

S1MME_IFACE={{ index .Values "config" "oai-enb-cu" "networks" "s1mme" "interface" }}
S1MME_IP=$(ip addr show $S1MME_IFACE | grep inet | grep -v inet6 | awk '{print $2}' | cut -d'/' -f1 | head -n 1)
sed -i "s/S1MME_IP_ADDRESS/\"$S1MME_IP\"/g" /opt/oai/share/cu.conf

S1U_IFACE={{ index .Values "config" "oai-enb-cu" "networks" "s1u" "interface" }}
S1U_IP=$(ip addr show $S1U_IFACE | grep inet | grep -v inet6 | awk '{print $2}' | cut -d'/' -f1 | head -n 1)
sed -i "s/S1U_IP_ADDRESS/\"$S1U_IP\"/g" /opt/oai/share/cu.conf

sed -i "s/X2C_IP_ADDRESS/\"$ENB_LOCAL_IP\"/g" /opt/oai/share/cu.conf