#
# Chkrootkit port to Python/Symbian
#
# Copyright (c) 2007 - Nelson Murilo <nelson@pangeia.com.br>
#
# (C) Copyright AMS License 
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import appuifw, e32, os

version = "0.2"
ignored = '#', '\n', '\r'

def get_update():
   appuifw.note(u"Not implemented yet", "info")

def search_malware_files():
   idx = 0
   malware = 0
   try: 
      cf=open('c:\\python\\chk.conf', 'r')
      try: 
         line = cf.readline()
	 while line: 
            if line[0] in ignored: # Comments are welcome
               line = cf.readline()
               continue
            idx = line.find('Worm =')
	    if idx > -1:
               word = line.split('=')[1]
               print "Checking "+word.strip()+" common files...",
               line = cf.readline()
            while line.find('File =') > -1:
               file = line.split('=')[1]
	       if line[0] == '!':
                  if not os.path.exists(file.strip()):
                     print "*",
	             malware = 2
	       else:
                  if os.path.exists(file.strip()):
                     print line[0],
	             malware = 2
               line = cf.readline()
	    if malware == 2:
               print "INFECTED"
               malware = 1
            else:
               print "not infected"
         if not malware:
            appuifw.note(u"Nothing Found", "info")
      finally:
         cf.close()
   except IOError: 
      appuifw.note(u"Can't open "+cf.name)

def menu_action(f):
    appuifw.app.menu = []
    saved_exit_key_handler = appuifw.app.exit_key_handler
    try:
        try:
            f()
        finally:
            appuifw.app.exit_key_handler = saved_exit_key_handler
            appuifw.app.title = u'Chkrootkit'
            init_options_menu()
            appuifw.app.screen='large'
    except:
        import traceback
        traceback.print_exc()

def init_options_menu():
    appuifw.app.menu = [(u"Search Malwares",\
                         lambda: menu_action(search_malware_files)),
                        (u"Search for signs updates",\
                         lambda: menu_action(get_update)),\
                        (u"About Chkrootkit",\
                         lambda: appuifw.note(u"See \nwww.chkrootkit.org for more information.", "info"))]
from e32 import _stdo
_stdo(u'c:\\python_error.log')         # low-level error output
appuifw.app.screen='full'
init_options_menu()
print "Chkrootkit"+str(copyright)+"\nVersion "+version
