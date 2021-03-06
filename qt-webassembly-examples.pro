TEMPLATE = subdirs

SUBDIRS = \
    gui_opengl \
    gui_raster \
    gui_lifecycle \
    gui_localfiles \
    widgets_wiggly \
    quick_hellosquare \
    quick_clocks \
    quick_controls2_gallery \
    quick_controls2_testbench \

qtHaveModule(mqtt):qtHaveModule(websockets): SUBDIRS += mqtt_simpleclient

# Add Sensortag if its submodule has been synced
exists($$PWD/SensorTagDemo/SensorTagDemo.pro) {
    SUBDIRS += SensorTagDemo
}

# Add Slate if its submodule has been synced
exists($$PWD/slate/slate.pro) {
    SUBDIRS += slate
}


# Add Colordebugger if its submodule has been synced
exists($$PWD/Colordebugger/colordebugger.pro) {
#    SUBDIRS += SensorTagDemo
}

