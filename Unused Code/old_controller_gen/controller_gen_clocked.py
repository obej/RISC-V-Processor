import numpy
import pandas
import re
import os
#split instr into opcode , f3 , and f7[6]
#constants
# change this to an input -- make them not hard coded
#clk,rst,opcode are hardcoded - change
processor_name='RV32I_single'
heading = "--%s Controls\n--This is the controls for the %s design of the processor.\n"%(processor_name,processor_name)
architecture_name = "Controls_Behavior"
libraries = "library IEEE;\n use IEEE.STD_LOGIC_1164.ALL;\n use IEEE.NUMERIC_STD.ALL;\n"
signal_info=[]
case_error = "\twhen others => err <= '1';\n"  # simple error check for now, will expand soon
#fix tabs and indents
#make sure to print right number of digits--- KEY!!!
#and ensure that number of digits is correct
#group by group by
#update tabs and indents to growing string method instead of hardcoded

def main():
    controller_data = pandas.read_csv(processor_name+"_controls.csv",sep=',',dtype=object)
    #controller_data = controller_data.replace(r'\s+', None, regex=True) #not sure what this does?
    #controller_lines = pandas.read_csv(processor_name+"_control_lines.csv",sep=',')
    dest = open(processor_name+".vhdl","w")
    generate_entity(dest,list(controller_data))
    dest.write("\n")
    dest.write("architecture %s of %s is\n"% (architecture_name, processor_name))
    dest.write("\n")
    for j,signal_name in enumerate(signal_info):
        dest.write("\tsignal %s_value : std_logic"%signal_name["name"])
        if signal_name["vector"] == True:
            dest.write("_vector(%s downto %s);\n"%(signal_name["MSB"],signal_name["LSB"]))
        else:
            dest.write(";\n")
    dest.write("\tsignal opcode: std_logic_vector(6 downto 0);\n")
    dest.write("\tsignal funct3: std_logic_vector(2 downto 0);\n")
    dest.write("\tsignal funct7: std_logic;\n")
    dest.write("\tsignal err: std_logic := '0';\n")
    dest.write("\nbegin\n")
    dest.write("\topcode <= instr(6 downto 0);\n")
    dest.write("\tfunct3 <= instr(14 downto 12);\n")
    dest.write("\tfunct7 <= instr(30);\n")
    dest.write("\terr_port <= err;\n")
    dest.write("\t%s : process(clk)\n\t\tbegin\n"%(processor_name+'_process'))
    dest.write("\t\t\tif (rising_edge(clk)) then\n")
    dest.write("\t\t\t\tcase opcode is\n ")
    organized_controller = controller_data.groupby('opcode')
    for opcode_index, opcode_group in organized_controller:
        dest.write("\t\t\t\t\twhen \"%s\" =>\n" % opcode_index)
        if contains_dont_care(opcode_group, 'funct3'):
            print_control_lines(dest, opcode_group, "\t\t\t\t\t\t")
        else:
            dest.write("\t\t\t\t\t\tcase funct3 is\n")
            for funct3_index,funct3_group in opcode_group.groupby('funct3'):
                dest.write("\t\t\t\t\t\t\twhen \"%s\" =>\n" % funct3_index)
                if contains_dont_care(funct3_group, 'funct7'):
                    print_control_lines(dest,funct3_group, "\t\t\t\t\t\t\t\t")
                else:
                    dest.write("\t\t\t\t\t\t\t\t\tcase funct7 is\n ")
                    for funct7_index,funct7_group in funct3_group.groupby('funct7'):
                        dest.write("\t\t\t\t\t\t\t\t\t\twhen \'%s\' =>\n" % funct7_index)
                        print_control_lines(dest, funct7_group, "\t\t\t\t\t\t\t\t\t\t\t")
                    dest.write("\t\t\t\t\t\t\t\t\t%s\t\t\t\t\t\t\t\t\tend case;\n" % case_error)
            dest.write("\t\t\t\t\t\t%s\t\t\t\t\t\tend case;\n" % case_error)
    dest.write("\t\t\t\t%s\t\t\t\tend case;\n" % case_error)
    dest.write("\t\t\tend if;\n")
    dest.write("\tend process %s;\n" % (processor_name + '_process' ))
    for j, signal in enumerate(signal_info):
        dest.write("\t%s <= %s_value;\n" % (signal["name"] , signal["name"]))
    dest.write("end %s;\n" % architecture_name)
    # ADD WHEN OTHERS
    #     print(opcode_index)
    #     print(opcode_group)


    # for index,row in controller_data.iterrows():
    #     dest.write("--%s instruction:\n\tDescription: %s\n"%(row[0],row[1]))
    #     dest.write("when %s =>\n" %)
    #     for signal_index,signal_value in enumerate(row):#from certain row
    #         #dest.write("--%s instruction:\n"% [instr_name for instr_name in signal_info if instr_name.get("index")==signal_index])
    #         dest.write("when %s =>\n"%)


def generate_entity(dest,data):
    dest.write(heading)
    dest.write(libraries)
    dest.write("entity %s is\nPort(\n" % processor_name)
    dest.write("\t--Error Signal\n\t\terr_port: out std_logic;")
    dest.write("\t--Timing and Reset\n\t\tclk,rst : in std_logic; -- input clock and reset\n")#reset doesn't do anything at this point
    dest.write("\t--Instruction\n\t\tinstr: in std_logic_vector(31 downto 0);\n\n")
    dest.write("\t--Control Signals\n")
    for i,signal in enumerate(data[5:]): #check if -2 or -1
        signal_vector_re = re.match('([A-Za-z]\w*)\[(\d+):(\d+)\]',signal)
        if signal_vector_re == None:
            signal_re = re.match('([A-Za-z]\w*)',signal)
            if(signal_re == None):
                raise ValueError("%s at is an invalid signal name. Located in row 0, column %d in %s_controls.csv. Ensure that name matches the form [A-Za-z]\w* or [A-Za-z]\w*\[(\d+):(\d+)\]."%(signal,i,processor_name))
            else:
                signal_info.append({"name":signal_re.group(1),"vector":False,"index":i})
                dest.write("\t\t%s : out std_logic"%signal_re.group(1))
        else:
            signal_info.append({"name":signal_vector_re.group(1),"vector":True,"MSB":signal_vector_re.group(2),"LSB":signal_vector_re.group(3),"index":i})
            dest.write("\t\t%s : out std_logic_vector(%s downto %s)" % (signal_vector_re.group(1),signal_vector_re.group(2),signal_vector_re.group(3)))
        if i == len(data[5:])-1:
            dest.write(");\n")
        else:
            dest.write(";\n")
    dest.write("end %s;"%processor_name)


def print_control_lines(dest,input_data_frame,tabs):
        for row_index, row in input_data_frame.iterrows():
            for signal_index, signal_val in enumerate(signal_info):
                if signal_val["vector"]:
                    dest.write("%s%s_value <= \"%s\";\n" % (tabs, signal_val["name"], row[vector_signal_name(signal_val)]))
                else:
                    dest.write("%s%s_value <= '%s';\n" % (tabs, signal_val["name"], row[signal_val["name"]]))


def vector_signal_name(signal):
    if signal["vector"]:
        return "%s[%s:%s]" % (signal["name"], signal["MSB"], signal["LSB"])
    else:
        return signal["name"]

def contains_dont_care(data_frame, col_name):
    return any(data_frame[col_name].isin(['-']))




if __name__ == '__main__':
    main()













