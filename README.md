# multiverse_scale
using air.nvidia.com to test mutliverse controller scalability

# Topology description
This is a typical spine leaf topology where each leaf is connected to every spine, this is a layer 3 spine leaf design which means the links between spines and leaves are layer 3 links and the routing is done using BGP.

all routers are running SONiC *(sonic-202012-f6f4c7f4)* the file `topology.dot` describes all the links and provides the management IP addresses for all nodes in the network.

## Creating the network using the nvidia platform
1. head to [air.nvidia.com](https://air.nvidia.com/) and create an account if you don't have one.
2. clone this repo
3. click on create simulation and select build your own
4. click on upload topology file and provide the `topology.dot` file.

the topology should be created within 3-5 minutes.

## applying configurations
1. once the ropology is created you should get a list of all the nodes
2. connect the out of band management server by clicking on its name `oob-mgmt-server`. 
3. a console will pop up (enable pop-up on your browser if not already enabled)
4. on the oob-mgmt-server, clone this repository `git clone https://github.com/mhenimerz/multiverse_scale`
5. cd into the new directory `cd multiverse_scale`
6. checkout to the `10spine_13leaf_4server` branch `git checkout 10spine_13leaf_4server`
7. start by configuring the routers, cd into the `net_config` directory `cd net_config`
8. run the appropriate playbook **from this directory** `ansible-playbook -i inventory/hosts playbooks/restore_router_config.yml`
9. once the playbook finishes without errors, configure the servers. `ansible-playbook -i inventory/hosts playbooks/restore_server_config.yml`