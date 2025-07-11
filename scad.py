import copy
import opsc
import oobb
import oobb_base
import yaml
import os
import scad_help

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    typ = kwargs.get("typ", "")

    if typ == "":
        #setup    
        #typ = "all"
        typ = "fast"
        #typ = "manual"

    #oomp_mode = "project"
    oomp_mode = "oobb"

    test = False
    #test = True

    if typ == "all":
        #overwrite off
        filter = ""; save_type = "all"; navigation = True; overwrite = False; modes = ["3dpr","laser"]; oomp_run = True; test = False
        #default
        #filter = ""; save_type = "all"; navigation = True; overwrite = True; modes = ["3dpr"]; oomp_run = True; test = False
    elif typ == "fast":
        #add navigation
        filter = ""; save_type = "none"; navigation = True; overwrite = True; modes = ["3dpr"]; oomp_run = False
        #default
        #filter = ""; save_type = "none"; navigation = False; overwrite = True; modes = ["3dpr"]; oomp_run = False
    elif typ == "manual":
    #filter
        filter = ""
        #filter = "test"

    #save_type
        save_type = "none"
        #save_type = "all"
        
    #navigation        
        #navigation = False
        navigation = True    

    #overwrite
        overwrite = True
                
    #modes
        #modes = ["3dpr", "laser", "true"]
        modes = ["3dpr"]
        #modes = ["laser"]    

    #oomp_run
        oomp_run = True
        #oomp_run = False    

    #adding to kwargs
    kwargs["filter"] = filter
    kwargs["save_type"] = save_type
    kwargs["navigation"] = navigation
    kwargs["overwrite"] = overwrite
    kwargs["modes"] = modes
    kwargs["oomp_mode"] = oomp_mode
    kwargs["oomp_run"] = oomp_run
    
       
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        directory_name = os.path.dirname(__file__) 
        directory_name = directory_name.replace("/", "\\")
        project_name = directory_name.split("\\")[-1]
        #max 60 characters
        length_max = 40
        if len(project_name) > length_max:
            project_name = project_name[:length_max]
            #if ends with a _ remove it 
            if project_name[-1] == "_":
                project_name = project_name[:-1]
                
        #defaults
        kwargs["size"] = "oobb"
        kwargs["width"] = 1
        kwargs["height"] = 1
        kwargs["thickness"] = 3
        #oomp_bits
        if oomp_mode == "project":
            kwargs["oomp_classification"] = "project"
            kwargs["oomp_type"] = "github"
            kwargs["oomp_size"] = "oomlout"
            kwargs["oomp_color"] = project_name
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""
        elif oomp_mode == "oobb":
            kwargs["oomp_classification"] = "oobb"
            kwargs["oomp_type"] = "part"
            kwargs["oomp_size"] = ""
            kwargs["oomp_color"] = ""
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""

        part_default = {} 
       
        part_default["project_name"] = project_name
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        

        #depths = [3]
        depths = [3, 6, 9]
        cutout_diameters = []
        cutout_diameters.extend(range(4, 45))
        cutout_diameters.extend(range(50, 80, 2))
        cutout_diameters.extend(range(85, 150, 5))
        #cutout_diameters = [70]
        
        multiples = [1,2,3,4,5]

        spacing_multiples = 5
        spacing_buffer = 3

        buffers = ["default", "both", "width", "height"]

        plates = []
        for dep in depths:
            for dia in cutout_diameters:
                for mult in multiples:
                    for buf in buffers:
                        plate = {}
                        plate["depth"] = dep                    
                        plate["radius_cutout"] = dia/2
                        plate["buffer"] = buf  
                        plate["diameter_cutout"] = dia
                        
                        plate["multiple"] = mult                
                        
                        space_vertical = dia + spacing_buffer * 2
                        hei = 0
                        for i in range(1,200):
                            if i * 15 > space_vertical:
                                hei = i
                                if "both" in buf or "height" in buf:
                                    hei += 1
                                clearance_vertical = hei * 15 - space_vertical
                                plate["clearance_height"] = clearance_vertical
                                plate["height"] = hei
                                break

                        space_horizontal = (dia*mult) + ((mult-1) * spacing_multiples) + spacing_buffer * 2
                        wid = 0
                        for i in range(1,200):
                            if i * 15 > space_horizontal:
                                wid = i
                                if "both" in buf or "width" in buf:
                                    wid += 1
                                clearance_horizontal = wid * 15 - space_horizontal
                                plate["clearance_width"] = clearance_horizontal
                                plate["width"] = wid
                                break
                        ex = f"{dia}_diameter_cutout_{mult}_multiple_{buf}_buffer"
                        plate["extra"] = ex
                        plates.append(plate)
                        
        

        for plate in plates:
            part = copy.deepcopy(part_default)
            p3 = copy.deepcopy(kwargs)
            p3["width"] = plate["width"]
            p3["height"] = plate["height"]
            p3["thickness"] = plate["depth"]
            p3["extra"] = plate["extra"]
            p3["radius_cutout"] = plate["radius_cutout"]
            p3["diameter_cutout"] = plate["diameter_cutout"]
            p3["multiple"] = plate["multiple"]
            p3["clearance_height"] = plate["clearance_height"]
            p3["clearance_width"] = plate["clearance_width"]
            p3["buffer"] = plate.get("buffer", "default")
            part["kwargs"] = p3
            nam = "plate_cutout"
            part["name"] = nam
            if oomp_mode == "oobb":
                p3["oomp_size"] = nam
            if not test:
                pass
                parts.append(part)


    kwargs["parts"] = parts

    scad_help.make_parts(**kwargs)

    #generate navigation
    if navigation:
        sort = []
        sort.append("diameter_cutout")
        sort.append("multiple")
        sort.append("buffer")
        sort.append("width")
        sort.append("height")
        sort.append("thickness")
        
        scad_help.generate_navigation(sort = sort)


def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    
    diameter_cutout = kwargs.get("diameter_cutout", 0)
    radius_cutout = kwargs.get("radius_cutout", 0)
    multiple = kwargs.get("multiple", 1)
    spacing_multiples = kwargs.get("spacing_multiples", 5)
    spacing_buffer = kwargs.get("spacing_buffer", 3)
    clearance_height = kwargs.get("clearance_height", 0)
    clearance_width = kwargs.get("clearance_width", 0)

    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    #p3["holes"] = True         uncomment to include default holes
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add holes seperate
    hol = []
    hol.append("corner")
    if clearance_height > 16:
        hol.append("right")
        hol.append("left")
    if clearance_width > 16:
        hol.append("top")
        hol.append("bottom")


    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["depth"] = depth
    
    p3["holes"] = hol
    p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)


    #add cutout
    if True:
        if multiple == 1:
            start = -0
        else:
            start = -((multiple-1) * (diameter_cutout + spacing_multiples)) / 2
        for i in range(multiple):        
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "n"
            p3["shape"] = f"oobb_hole"        
            p3["radius"] = radius_cutout                        
            p3["depth"] = depth
            pos1 = copy.deepcopy(pos)
            pos1[0] += start + (i*spacing_multiples) + (i*diameter_cutout)
            p3["pos"] = pos1
            p3["m"] = "#"
            oobb_base.append_full(thing,**p3)


    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        pos1 = copy.deepcopy(pos)
        pos1[0] += -500/2
        pos1[1] += 0
        pos1[2] += -500/2        
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)