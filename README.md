# qtsensors-sensorfw-plugin
Sensorfw plugin for qtsensors

This code is extracted from the main qtsensors source code, and made a separate plugin.

### Why not use directly the identical plugin in qtsensors ?

The reason for this is that LuneOS needs qtsensors to stay architecture-independant, otherwise many of our packages (like luna-sysmgr) that (in)directly depend on qtsensors would be rebuilt for each separate target.
