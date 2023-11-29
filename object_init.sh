#!/usr/bin/env bash
mkdir ~/tmp
mkdir ~/tmp/OBJECTS
echo name,sdf_file,mass_kg,x_init,y_init,z_init,roll_init,pitch_init,yaw_init >> ~/tmp/object_manifest.csv
for i in $(ls zippers|sed 's/.zip//'); do  
    mkdir ~/tmp/OBJECTS/$i; 
    unzip -d ~/tmp/OBJECTS/$i zippers/$i.zip; 
    echo "$i","$HOME/IMPACT/OBJECTS/$i/model.sdf",mass,x,y,z,roll,pitch,yaw >> ~/tmp/object_manifest.csv; 
    cp ~/tmp/OBJECTS/$i/materials/textures/texture.png ~/tmp/OBJECTS/$i/meshes; 
done
