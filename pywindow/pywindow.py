#!/usr/bin/python3
import i3ipc, subprocess, argparse

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()

tree = i3.get_tree()
focused = tree.find_focused()

def get_windows(global_flag):
        cons = []
        ids = []
        # Fetch every container in the workspaces available
        # and store its name and id
        for output in tree:
                if(output.type == "workspace"):
                        if(global_flag or output.name == focused.workspace().name):
                                for con in output:
                                        if(con.name is not None):
                                                print(con.name)
                                                cons.append(repr(con.name))
                                                ids.append(con.id)
        return cons, ids

def focus_window(window_name):
        # Get id of the choosen window
        conId = ids[cons.index(window_name)]

        focus_cmd = "i3-msg '[con_id='{0}'] focus'".format(conId)
        subprocess.Popen(focus_cmd, shell = True)

parser = argparse.ArgumentParser()
parser.add_argument("-w", "--workspace", help="list opened windows only in the current workspace", action="store_true")
parser.add_argument("-f", "--focus", help="focus a window by its name", action="store", type=str, metavar="window_name")
args = parser.parse_args()
if args.workspace:
        cons, ids = get_windows(False)
else:
        cons, ids = get_windows(True)

if args.focus:
        focus_window(repr(args.focus))

if(cons == []):
        # If there is no opened window
        cons.append("No opened window")

# Format every container name as "choices" input for dmenu
choices = repr("\n").join(cons)
