/*
本文件由Circulation_创建并且编写，用于处理EIO的相关crt魔改
在保留署名的情况下，可以自由的分发，用于公益或商业用途
感谢youyihj的zenutils mod提供的native功能
This document was created and written by Circuanation_ to handle related CRT modifications for EIO
Under the condition of retaining the signature, it can be freely distributed for public welfare or commercial purposes
Thank you for the native functionality provided by youyihj's zenutls mod
 */
#priority 4999
#modloaded zenutils
#loader crafttweaker reloadable

import native.net.minecraftforge.fml.common.event.FMLInterModComms;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//删除指定配方 需要配方名
global allremove as function(string)void = function (Name as string) as void{
    var XML as string = "<recipes>" +
    "<recipe name= \"" + Name +"\" disabled=\"true\">" +
    "</recipe>" +
    "</recipes>";
    FMLInterModComms.sendMessage("enderio", "recipe:xml", XML);
};

//sag磨粉100%概率定义
global sagchance as float[] = [1.0f,1.0f,1.0f,1.0f];

//sag磨粉 能量 输入<矿物辞典> 输出<[输出物品列表]> 对应列表顺序的输出物品数量<[int]> 产出概率列表<[]>（默认全为1） 是否支持磨珠(1为完全可用，2为禁用主产的副产物，3为完全禁用)
global sagmill as function(int,IOreDictEntry,IItemStack[],int[],float[],int)void = function (Energy as int,input as IOreDictEntry,outputs as IItemStack[],outputsl as int[],chance as float[],Grinding as int) as void{
    var XML as string = "<recipes>" +
    "<recipe name= \"" + outputs[0].name + input.name + Energy +"\" required=\"true\" disabled=\"false\">" +
    "<sagmilling energy=\""+ Energy;
    if (Grinding == 1){
        XML += "\">";
    } else if (Grinding == 2){
        XML += "\" bonus=\"chance_only\">";
    } else if (Grinding == 3){
        XML += "\" bonus=\"none\">";
    }

    XML += "<input name=\""+ input.name + "\" />";

    for i , output in outputs{
        if (output.damage != 0){
            XML += "<output name=\""+ output.definition.id +":"+ output.metadata + "\" amount=\"" + outputsl[i] + "\" chance=\"" + chance[i] + "\"/>";
        } else {
            XML += "<output name=\""+ output.definition.id + "\" amount=\"" + outputsl[i] + "\"  chance=\"" + chance[i] + "\"/>";
        }
    }
    XML += "</sagmilling>" +
    "</recipe>" +
    "</recipes>";
    FMLInterModComms.sendMessage("enderio", "recipe:xml", XML);
};

//合金炉 能量 输入输入<[矿物辞典列表]> 对应列表顺序的输入物品数量<[int]> 输出<物品> 输出物品数量<int>
global alloying as function(int,IOreDictEntry[],int[],IItemStack,int)void = function (Energy as int,inputs as IOreDictEntry[],inputsl as int[],output as IItemStack,outputsl as int) as void{
    var XML as string = "<recipes>" +
    "<recipe name= \"" + output.name + inputs[0].name + Energy +"\" required=\"true\" disabled=\"false\">" +
    "<alloying energy=\""+ Energy + "\">";
    for i , input in inputs{
        XML += "<input name=\""+ input.name + "\" amount=\"" + inputsl[i] + "\" />";
    }
    if (output.damage != 0){
        XML += "<output name=\""+ output.definition.id +":"+ output.metadata + "\" amount=\"" + outputsl + "\" />";
    } else {
        XML += "<output name=\""+ output.definition.id + "\" amount=\"" + outputsl + "\" />";
    }
    XML += "</alloying>" +
    "</recipe>" +
    "</recipes>";
    FMLInterModComms.sendMessage("enderio", "recipe:xml", XML);
};