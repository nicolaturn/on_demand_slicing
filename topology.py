"""Custom topology example

Two directly connected switches plus a host for each switch:

   host --- switch --- switch --- host

Adding the 'topos' dict with a key/value pair to generate our newly defined
topology enables one to pass in '--topo=mytopo' from the command line.
"""

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.node import OVSKernelSwitch, RemoteController
from mininet.cli import CLI
from mininet.link import TCLink
import subprocess


class MyTopo( Topo ):
    "Simple topology example."

    def build( self ):
        "Create custom topo."
         
        # Create template host, switch, and link
        host_config = dict(inNamespace=True)
        link_config = dict()  # Total Capacity of the link ~ 10Mbps
        host_link_config = dict()
 

        # Add hosts and switches
      
        for i in range(3):
            sconfig = {"dpid": "%016x" % (i + 1)}
            self.addSwitch("r%d" % (i + 1), **sconfig)
            
        for i in range(11):
            self.addHost("h%d" % (i + 1), **host_config)


        # Add links
        # Add router link
        self.addLink("s1", "s2",**link_config)
        self.addLink("s1", "s3",**link_config)
        self.addLink("s2", "s3",**link_config)

        # Add clients-switch links
        self.addLink("h1", "s1", **host_link_config)
        self.addLink("h2", "s1", **host_link_config)
        self.addLink("h3", "s1", **host_link_config)
        self.addLink("h4", "s1", **host_link_config)
        self.addLink("h5", "s1", **host_link_config)
        self.addLink("h6", "s2", **host_link_config)
        self.addLink("h7", "s2", **host_link_config)
        self.addLink("h8", "s2", **host_link_config)
        self.addLink("h9", "s3", **host_link_config)
        self.addLink("h10", "s3", **host_link_config)
        self.addLink("h11", "s3", **host_link_config)



topos = { 'mytopo': ( lambda: MyTopo() ) }

if __name__ == "__main__":
    topo = MyTopo()
    net = Mininet(
        topo=topo,
        
        # We specify an external controller by passing the Controller object in the Mininet constructor
        # This was added in Mininet 2.2.0 and above.
        # SOS Note: Do not specify port -- Default: 6653
        controller=RemoteController( 'c0', ip='127.0.0.1'), 
        switch=OVSKernelSwitch,
        build=False,
        autoSetMacs=True,
        autoStaticArp=True,
        link=TCLink,
    )
    
    # ------------ Check Constructor for Controller ----------------- #
    #controller = RemoteController("c1", ip="127.0.0.1", port=6633)
    #net.addController(controller)
    
    net.build()
    net.start()
    
    # Here we automate the process of creating the 2 slices by calling as a subprocess the common_scenario.sh
    # Assumption: We begin with a non-emergency scenario.
    #subprocess.call("./initial_scenario.sh")
    
    CLI(net)
    net.stop()
