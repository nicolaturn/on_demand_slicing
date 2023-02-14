from ryu.base import app_manager
from ryu.controller import ofp_event
from ryu.controller.handler import CONFIG_DISPATCHER, MAIN_DISPATCHER
from ryu.controller.handler import set_ev_cls
from ryu.ofproto import ofproto_v1_3
from ryu.lib.packet import packet
from ryu.lib.packet import ethernet
from ryu.lib.packet import ether_types
from ryu.lib.packet import udp
from ryu.lib.packet import tcp
from ryu.lib.packet import icmp
import subprocess

class TrafficSlicing(app_manager.RyuApp):
    OFP_VERSIONS = [ofproto_v1_3.OFP_VERSION]

    def __init__(self, *args, **kwargs):
        super(TrafficSlicing, self).__init__(*args, **kwargs)

        # Destination Mapping [router --> MAC Destination --> Eth Port Output]
        self.mac_to_port = {
            1: {"00:00:00:00:00:01": 3, "00:00:00:00:00:02": 4, "00:00:00:00:00:03": 5, "00:00:00:00:00:04": 6, "00:00:00:00:00:05": 7, "00:00:00:00:00:06": 1, "00:00:00:00:00:07": 1, "00:00:00:00:00:08": 1, "00:00:00:00:00:09": 2, "00:00:00:00:00:10": 2, "00:00:00:00:00:11": 2},
            2: {"00:00:00:00:00:06": 3, "00:00:00:00:00:07": 4, "00:00:00:00:00:08": 5, "00:00:00:00:00:01": 1, "00:00:00:00:00:02": 1, "00:00:00:00:00:03": 1, "00:00:00:00:00:04": 1, "00:00:00:00:00:05": 1, "00:00:00:00:00:09": 2, "00:00:00:00:00:10": 2, "00:00:00:00:00:11": 2},
	    3: {"00:00:00:00:00:09": 3, "00:00:00:00:00:10": 4, "00:00:00:00:00:11": 5, "00:00:00:00:00:01": 1, "00:00:00:00:00:02": 1, "00:00:00:00:00:03": 1, "00:00:00:00:00:04": 1, "00:00:00:00:00:05": 1, "00:00:00:00:00:06": 2, "00:00:00:00:00:07": 2, "00:00:00:00:00:08": 2}
        }
        
        self.emergency = 0          # Boolean that indicates the presence of an emergency scenario
        self.time = time.time()     # Timer that keeps track of time for an emergency scenario
        
        self.print_flag = 0         # Helper variable that helps us with printing/output
        
        # Creation of an additional thread that automates the process for Emergecy Scenario and Normal Scenario!
        # Listens to the timer() function.  
        self.threadd = threading.Thread(target=self.timer, args=())
        self.threadd.daemon = True
        self.threadd.start()

        # Source Mapping        
        self.port_to_port = {
            1: {3:1, 4:1, 5:1, 6:1, 7:1, 3:2, 4:2, 5:2, 6:2, 7:2},
            2: {3:1, 4:1, 5:1, 3:2, 4:2, 5:2},
	    3: {3:1, 4:1, 5:1, 3:2, 4:2, 5:2}
        }
        self.end_swtiches = [1, 7]





if __name__ == "__main__":

	print("Inserisci: (es. ON 1, OFF 2)")
	var=input()
	splitString=var.split(" ")
	status=splitString[0]
	slice_number=int(splitString[1])
	print("Status: ", status)
	print("Number of Slice: ", slice_number)
