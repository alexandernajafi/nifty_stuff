import fileinput
import re
import os
import sys

baseUrl = "http://www.fpdf.org/en/doc/";

for line in fileinput.input():
    urls = re.findall(r'href=[\'"]?([^\'" >]+)', line)
    for url in urls:
        tot = baseUrl+url
        os.system("curl "+tot+" > "+url);
    pass
