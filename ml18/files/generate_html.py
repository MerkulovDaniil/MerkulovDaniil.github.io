# This script reads all the files in folders notebooks, slides, html, pdf, markdown and generate .html page, that contains table with hyperlinks
import os
import sys

mode = sys.argv[1]

def list_target_files(directory, extension):
    return list(f for f in os.listdir(directory) if f.endswith('.' + extension))
    

# Function htmltable from dict

def htmltable_from_dict(dict_):
    n_strings = len(dict_['nb'])
    if n_strings == 0:
        return ''
    
    ### Names
    names = []
    for name in dict_['nb']:
        name = name[2:-6]
        names.append(name)
    
    ### Preambule
    table = '<div style="overflow-x:auto;">\n<table align="center">\n<thead>\n<tr>\n<th></th>\n'
    
    ### Header
    if 'slides' in dict_.keys():
        table += '<th> slides </th>\n'
    
    if 'pages' in dict_.keys():
        table += '<th> page </th>\n'
    
    if 'md' in dict_.keys():
        table += '<th> markdown </th>\n'
        
    if 'pdf' in dict_.keys():
        table += '<th> pdf </th>\n'
        
    if 'nb' in dict_.keys():
        table += '<th> notebook </th>\n'
        
    table += '</tr>\n</thead>\n'
    
    ### Body
    table += '<tbody>\n'
    for i in range(n_strings):
        table += '<tr>\n'
        table += '<td> ' + names[i] + ' </td>\n'
        if 'slides' in dict_.keys():
            table += "<td> <a href='./slides/" + dict_['slides'][i] + "'> .html </a> </td>\n"
    
        if 'pages' in dict_.keys():
            table += "<td> <a href='./html/" + dict_['pages'][i] + "'> .html </a> </td>\n"

        if 'md' in dict_.keys():
            table += "<td> <a href='./markdown/" + dict_['md'][i] + "' download> .md </a> </td>\n"

        if 'pdf' in dict_.keys():
            table += "<td> <a href='./slides/" + dict_['pdf'][i] + "'> .pdf </a> </td>\n"

        if 'nb' in dict_.keys():
            table += "<td> <a href='./Notebooks/" + dict_['nb'][i] + "' download> .ipynb </a> </td>\n"
        
        table += '</tr>\n'
        
    ### End
    table += '</tbody>\n</table>\n</div>\n'
        
    return table

def update_html(path_to_file, table):
    with open(path_to_file, "r") as f:
        old_file = f.readlines()

    with open(path_to_file + '.new', 'r+') as f:
        epoch = 0
        for line in old_file:
            if (epoch == 0): 
                f.write(line)
                if (line == '<!-- TABLE -->\n'):
                    epoch = 1
                continue

            if epoch == 1:
                f.write(table)
                epoch = 2   
            
            if epoch == 2:
                if line != '<!-- ENDTAB -->\n':
                    continue
                else:
                    epoch = 3
            
            if epoch == 3:
                f.write(line)


# ================ Lectures ================
os.chdir('../' + mode + '/')
# ================ read ================

formats = ('slides', 
           'pages', 
           'md', 
#            'pdf', 
           'nb')

dict_   = dict.fromkeys(formats)
    
# ipynb
nb_list = list_target_files('./Notebooks/', 'ipynb')
# slides
slides_list = list_target_files('./slides/', 'html')
# html
pages_list = list_target_files('./html/', 'html')
# markdown
md_list = list_target_files('./markdown/', 'md')
# pdf
pdf_list = list_target_files('./pdf/', 'pdf')

dict_['slides'] = slides_list
dict_['pages']  = pages_list
dict_['pdf']    = pdf_list
dict_['md']     = md_list
dict_['nb']     = nb_list

dicti = dict.fromkeys(formats)
for ext in formats:
    dicti[ext] = dict_[ext]
# ================ generate ================
table = htmltable_from_dict(dicti)
# ================ write ================
update_html('./' + mode + '.html', table)