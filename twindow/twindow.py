#!/usr/bin/python3
import i3ipc, subprocess, argparse

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()

tree = i3.get_tree()
focused = tree.find_focused()
workspaces = i3.get_workspaces()


def get_windows(current_flag):
		cons = []
		ids = []
		current_flag = not current_flag
		# Fetch every container in the workspaces available
		# and store its name and id
		for output in tree:
				if(output.type == "workspace"):
						if(current_flag or output.name == focused.workspace().name):
								for con in output:
									if(con.name is not None):
											print(con.name)
											cons.append(repr(con.name))
											ids.append(con.id)
		return cons, ids

def get_workspaces(current_flag):
			if current_flag:
					print(focused.workspace().name)
			else:
					for output in workspaces:
						print(output.name)


def focus_window(window_name):
		# Get id of the choosen window
		conId = ids[cons.index(window_name)]

		focus_cmd = "i3-msg '[con_id='{0}'] focus'".format(conId)
		subprocess.Popen(focus_cmd, shell = True)

parser = argparse.ArgumentParser()
parser.add_argument("-c", "--current", help="list containers/workspaces only in the current screen", action="store_true")
parser.add_argument("-w", "--workspace", help="list workspaces instead of containers", action="store_true")
parser.add_argument("-f", "--focus", help="focus a window by its name", action="store", type=str, metavar="window_name")
args = parser.parse_args()

if args.workspace:
		get_workspaces(args.current)	
else:
		cons, ids = get_windows(args.current)

if args.focus:
		focus_window(repr(args.focus))