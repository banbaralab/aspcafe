import sys
import re
import argparse


#########################################################
# 要素にVを持つVPの辞書を作成
# 引数: 解集合リストlist, 返り値: VPとVによる辞書vp_d
#########################################################
def get_vp_dic(list):
    vp_d = {}
    for i in range(len(list)):
        vp = re.match('vp_def\("(.+)"\)',list[i])
        if (vp):
            v_d = {}
            for j in range(len(list)):
                v = re.match('v_def\("(.+)","(.+)",.+\)',list[j])
                if (v and v.group(2) == vp.group(1)):
                    g_list = [0 for x in range(G)]
                    for k in range(len(list)):
                        g = re.match('v\("(.+)",(\d)\)',list[k])
                        if (g and g.group(1) == v.group(1)):
                            g_list[int(g.group(2))-1] = 1
                    v_d[v.group(1)] = g_list
            vp_d[vp.group(1)] = v_d
    return vp_d

#########################################################
# 真であるVPのリストを作成
# 引数: 解集合リストlist, 返り値: 真であるVPのリストvp_list
#########################################################

def get_vp_list(list):
    vp_list = [[] for i in range(G)]
    for i in list:
        vp = re.match('vp\("(.+)",(\d)\)',i)
        if (vp):
            vp_list[int(vp.group(2))-1].append(vp.group(1))
    return vp_list
#########################################################
# リストを表にして表示する
# 引数: 辞書dic
#########################################################
def get_table(dic):
    table = []
    output_table = ""
    v=0
    l = []
    for i in dic:
        for j in dic[i]:
            vp_i = dic[i]
            l.append(i)
            l.append(j)
            k_num = 0
            for k in dic[i][j]:
                l.append(k)
            table.append(l[:])
            l.clear()

    
    print("Type, Option, Model1, Model2, Model3")
    for i in table:
        print(', '.join(map(str, i)))
    # print(tabulate(table,tablefmt="grid"))

    

#########################################################                
# Cafe規制の値,販売台数を表示
# 引数: 解集合リストlist
#########################################################
def check_cafe(list):
    if not (args.total):
        print("\n** Check Cafe\n")
    fe = [0 for g in range(G)]
    sv = [0 for g in range(G)]
    iwr = [0 for g in range(G)]
    fesv = 0
    svsum = 0
    used_v = 0
    changed_v = 0
    changed_vp = 0
    added_vp = 0
    perturbation = 0
    for i in range(len(list)):
        for j in range(G):
            fact = re.match('fe\((\d+),%s\)' % (j+1),list[i])
            if(fact):
                fe[j] = int(fact.group(1))
                continue
            fact = re.match('sv\((\d+),%s\)' % (j+1),list[i])
            if(fact):
                sv[j] = int(fact.group(1))
                svsum += sv[j]
                #print(sv[j])
                continue
            fact = re.match('iwr\((\d+),%s\)' % (j+1),list[i])
            if(fact):
                iwr[j] = int(fact.group(1))
                continue
            fact = re.match('changed_v\("(.+)",%s\)' % (j+1),list[i])
            if(fact):
                changed_v += 1
                continue
            fact = re.match('changed_vp\("(.+)",%s\)' % (j+1),list[i])
            if(fact):
                changed_vp += 1
                perturbation += 1
                continue
            fact = re.match('added_vp\("(.+)",%s\)' % (j+1),list[i])
            if(fact):
                added_vp += 1
                perturbation += 2
                continue
        fact = re.match('used_v\("(.+)"\)', list[i])
        if(fact):
            used_v+=1
            
    for g in range(G):
        if not (args.total):
            print('  FE(%d) = %d'%(g+1,fe[g]))
            print('  SV(%d) = %d'%(g+1,sv[g]))
            print('  IWR(%d) = %d'%(g+1,iwr[g]))
        fesv += fe[g]*sv[g]
    cafe = fesv/svsum
    print('\n  Cafe Value = %d' % cafe)
    print('  Total Sales = %d' % svsum)
    print('  Total Options = %d' % used_v)
    print('  Perturbation = %d (Changed_VP = %d, Added_VP = %d)' % (perturbation, changed_vp, added_vp))
    # print('  Total Changed_V = %d' % changed_v)
    print('(%d,%d,%d)\n' % (svsum, used_v, perturbation))


#########################################################    
# 同じVPで選択されるVはただ一つであることを確認
# (同じVP内で複数Vが真になる場合ERROR．VPが真でVがひとつも真ではない場合も考えた方が良い？)
# 引数: 辞書dic
#########################################################
def only_one_V(dic,vp_list):
    print("\n** Check only one\n")
    for g in range(G):
        eflag = 0
        print("  Group%d: " % (g+1))
        for i in dic:
            flag = 0
            for j in dic[i]:
                if(dic[i][j][g] == 1):
                    flag += 1
            if(i in vp_list[g]):
                if (flag != 1):
                    print("    ERROR_TRUE_VP: "+str(i))
                    eflag += 1
            else:
                if (flag > 0):
                    print("    ERROR_FALSE_VP: "+str(i))
                    eflag += 1
                
        if (eflag == 0):
            print("    OK!")


#########################################################
# requireのチェック
# 引数: 解集合リストlist, 辞書dic
#########################################################
def check_require(list,vp_list,dic):
    req_vp = []
    req_vp_v = []
    req_v_vp = []
    req_v_v = []

    x = 0
    for i in range(len(list)):
        req = re.match('require_vp\("(.+)"\)',list[i])
        if (req):
            req_vp.append(req.group(1))
        else :
            req = re.match('require_(.+)\("(.+)","(.+)"\)',list[i])
            if (req):
                if (req.group(1) == 'vp_v'):
                    vp_v = [req.group(2),req.group(3)]
                    req_vp_v.append(vp_v)
                elif (req.group(1) == 'v_vp'):
                    v_vp = [req.group(2),req.group(3)]
                    req_v_vp.append(v_vp)
                elif (req.group(1) == 'v_v'):
                    v_v = [req.group(2),req.group(3)]
                    req_v_v.append(v_v)
                else :
                    print("error in check_require()")


            
    #print(req_vp)
    #print(req_vp_v)
    #print(req_v_vp)
    #print(req_v_v)
    #print(vp_list[0])

    
    # require_vp のチェック(vp(VP,G)の有無をチェックしている)
    print("\n** Check require_vp\n")
    for g in range(G):
        print("  Group%s:"%(g+1))
        count = 0
        for i in req_vp:
            flag = 0
            for j in vp_list[g]:
                if (i==j):
                    #print('"%s" is OK!'% i)
                    flag = 1
                    count += 1
            if (flag == 0):
                print('    require_vp("%s") is ERROR!'%i)
        if (count == len(req_vp)):
            print("    OK!")

            

        

    # require_vp_vのチェック
    print("\n** Check require_vp_v\n")
    for g in range(G):
        print("  Group%s:"%(g+1))
        count = 0
        eflag = 0
        for i in req_vp_v:
            flag = 0
            for j in vp_list[g]:
                if (i[0] == j):
                    flag = 1
                    if (dic[j][i[1]][g] == 1):
                        #print('require_vp_v("%s","%s") is OK!'%(i[0],i[1]))
                        count += 1
                    else:
                        print('    require_vp_v("%s","%s") is ERROR!'%(i[0],i[1]))
                        eflag = 1
            if (flag == 0):
                #print('not vp("%s",%d) holds'%(i[0],g+1))
                count += 1
        if (eflag != 1 and count == len(req_vp_v)):
            print("    OK!")

    # require_v_vpのチェック
    print("\n** Check require_v_vp\n")
    for g in range(G):
        print("  Group%s:"%(g+1))
        count = 0
        eflag = 0
        for i in req_v_vp:
            vflag = 0
            for j in dic:
                if (dic[j].get(i[0])):      
                    if ( dic[j][i[0]][g] == 1):   #vが存在するとき
                        vpflag = 0
                        vflag = 1
                        for k in vp_list[g]:
                            if (k == i[1]):       #vpが存在
                                vpflag = 1
                                count += 1
                                break
                        if (vpflag == 0):         #vが存在しているがvpが存在しない場合
                            print('    require_v_vp("%s","%s") is ERROR!' % (i[0],i[1]))
                            eflag = 1
            if(vflag == 0):
                count += 1
        if (eflag == 0):
            print('    OK!')
#        if(count == len(req_v_vp)):
#            print('group%s is OK!' % (g+1))
#        else:
#            print('group%s is ERROR!' % (g+1))


        #vpとvの関係が1:1でないため，カウントの数がずれる(group1でのMODEL_768_HEVをみたすVPが二つ存在)

        
    # require_v_vのチェック
    print("\n** Check require_v_v\n")
    for g in range(G):
        print("  Group%s:"%(g+1))
        eflag = 0
        for i in req_v_v:
            for j in dic:
                if (dic[j].get(i[0])):
                    if (dic[j][i[0]][g] == 1):
                        for k in dic:
                            if(dic[k].get(i[1])):
                                if (dic[k][i[1]][g] == 0):
                                    print('    require_v_v("%s","%s") is ERROR!'
                                          %(i[0],i[1]))
                                    eflag = 1
        if (eflag == 0):
            print('    OK!')
    
#########################################################    
def answer_set(lines):
    for i in range(len(lines)):
        if (re.match('Answer:\s\d+', lines[i])):
            print(lines[i],end='')
            if not (re.match('Answer:\s\d+', lines[i+1]) or
            re.match('\W+', lines[i+1])):
                answer_set = [x for x in lines[i+1].split()]
                vp_d = get_vp_dic(answer_set)
                vp_list = get_vp_list(answer_set)
                if not (args.total): 
                    get_table(vp_d)  #表作成
                check_cafe(answer_set)
                # オプションによりrequireの確認
                if(args.check):
                    only_one_V(vp_d,vp_list)
                    check_require(answer_set,vp_list,vp_d)
            
        elif (re.match('OPTIMUM\sFOUND', lines[i])):
            print('OPTIMUM FOUND\n')
        elif (re.match('SATISFIABLE', lines[i])):
            print('SATISFIABLE\n')
        elif (re.match('UNSATISFIABLE', lines[i])):
            print('UNSATISFIABLE\n')
        elif (re.match('UNKNOWN', lines[i])):
            print('UNKNOWN\n')
        elif (re.match('INTERRUPTED', lines[i])):
            print(lines[i],end='')
        elif (re.match('Models\s+:', lines[i])):
            print(lines[i],end='')
        elif (re.match('\s+Optimum\s+:', lines[i])):
            print(lines[i],end='')
        elif (re.match('\s+Optimal\s+:', lines[i])):
            print(lines[i],end='')
        elif (re.match('Optimization\s:', lines[i])):            
            print(lines[i],end='')
        elif (re.match('Calls\s+:', lines[i])):
            print(lines[i],end='')
        elif (re.match('Time\s+:', lines[i])):
            print(lines[i],end='')            
        elif (re.match('CPU\sTime\s+:', lines[i])):
            print(lines[i],end='')            





# option
parser = argparse.ArgumentParser()
parser.add_argument('file',
                    help='output file with option "--quiet=1,0" for clingo or "--quiet 1" for asprin')
parser.add_argument('-c','--check',action="store_true",
                    help='check that dependency constraints are satisfied')
parser.add_argument('-t','--total',action="store_true",
                    help='output only the values of objective functions')
args = parser.parse_args()

fp = open(args.file,'r')
lines = fp.readlines()
G = 3

answer_set(lines)

fp.close()

