#!/bin/bash
# Define color variables
RED='\033[0;31m'
NC='\033[0m' # No Color (resets terminal color back to default)

# Print the text in red
#echo -e "${RED}hello world${NC}"

#echo -e "\033[0;31m"HELLO WORLD'\033[0m' 
#echo -e '\u001b[32mSTATUS: FAIL\u001b[0m'
#echo -e '\u001b[32mSTATUS: FAIL\u001b[0m'

echo -------------------------------------------------
echo Test  Name: TEST_MSP_CONTROLLER_RUNNING
echo -e '\u001b[32mSTATUS: FAIL\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_IPTABLES_ENABLED
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_HOSTING_PE_CONNECTIVITY
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_MSP_VMS_REACHABLE
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_DVP_WITHIN_MSP
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_PC_NTP_SYNC_CHECK
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_ISCSI_RECORD_LEN
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_TIME_CHECK_PC_MSP_VMS
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_MSP_CLUSTER_HEALTH
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_IMAGES_FROM_LOCAL_REGISTRY
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_REGISTRY_ACTIVE
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_ETCD_ACTIVE
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_ETCD_PERFORMANCE
echo Test  TEST_ETCD_PERFORMANCE is skipped: To run this test set flag --skip_long_running_tests=False
echo -------------------------------------------------
echo Test  Name: TEST_KEEPALIVED_ACTIVE
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_PBR_CONFIG_SETUP
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_ZK_IP_CHECK
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_PING_REGISTRY_WITHIN_MSP
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_NODE_ROLES
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_PING_REGISTRY_FROM_PC
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_REGISTRY_INSTANCES_IN_SYNC
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_SERVICES_ASSIGNED_EXPECTED_LB_IPS
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_STORAGE_PROVISIONING
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_SVC_DISCOVERY_CMSP_SVC
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_SVC_DISCOVERY_PMSP_SVC
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_SVC_DISCOVERY_WITHIN_MSP
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_MSP_NETWORK_SEGMENTATION_CONFIG
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
echo -------------------------------------------------
echo Test  Name: TEST_SANITY_MSP_CLUSTER_HEALTH
echo -e '\u001b[32mSTATUS: SUCCESS\u001b[0m'
echo -------------------------------------------------
