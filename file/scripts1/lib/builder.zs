//作者：Lun_Xun Github:https://github.com/LunnXun QQ:2906379524
//要用就用吧 我也懒得制止什么了 给个面子别删我这两行就行
#priority 6000
import crafttweaker.item.IItemStack;

zenClass HCSBuilder {
    val item as IItemStack;
    var packagetype as string = "";
    var features as string = "";
    var level as int = -1;
    var code as int = -1;
    var machinelevel as int = 0;

    zenConstructor(item as IItemStack) {
        this.item = item;
    }

    function setPackageType(t as string) as HCSBuilder {
        this.packagetype = t;
        return this;
    }

    function setFeatures(f as string) as HCSBuilder {
        this.features = f;
        return this;
    }

    function setLevel(l as int) as HCSBuilder {
        this.level = l;
        return this;
    }

    function setCode(c as int) as HCSBuilder {
        this.code = c;
        return this;
    }

    // machinelevel(可选)
    function setMachineLevel(ml as int) as HCSBuilder {
        this.machinelevel = ml;
        return this;
    }

    function build() as void {
        //参数校验
        if(this.packagetype == "" || this.features == "" || this.level < 0 || this.code < 0) {
            print("§c错误: HCSBuilder 缺少必填参数！");
            return;
        }

        val item = this.item;
        val pt = this.packagetype;
        val fe = this.features;
        val lv = this.level;
        val cd = this.code;
        val ml = this.machinelevel;

        //实际逻辑
        item.addTooltip("§3按§B§nHCS-" + pt + "-" + fe + "-T" + lv + "-" + cd + "§r§3标准打造");
        if(pt == "UPG") {
            if(fe == "00") { item.addTooltip("适用类型：§B通用部件"); }
            if(fe == "ST") {
                item.addTooltip("适用机器：§B造石机");
                if(ml > 0) { //你得设置了ml 才会显示
                    item.addTooltip("需求最低等级：§B" + ml);
                }
            }
        }
        if(pt == "DRV") {
            if(fe == "MT") { item.addTooltip("种类：§B马达"); }
            if(fe == "PN") { item.addTooltip("种类：§B活塞"); }
            if(fe == "MA") { item.addTooltip("种类：§B机械臂"); }
            if(fe == "TR") { item.addTooltip("种类：§B传送带"); }
        }
        if(pt == "LOG") {
            if(fe == "IT") { item.addTooltip("种类：§B物品物流"); }
            if(fe == "FL") { item.addTooltip("种类：§B流体物流"); }
            if(fe == "AE") { item.addTooltip("种类：§B数字存储"); }
        }
        if(pt == "PWR") {
            if(fe == "CP") { item.addTooltip("种类：§B蓄能单元"); }
            if(fe == "DS") { item.addTooltip("种类：§B能量分配"); }
            if(fe == "RC") { item.addTooltip("种类：§B能量生成"); }
        }
        if(pt == "MTL") {
            item.addTooltip("种类：§B合金");
        }
    }
}

global HCS as function(IItemStack) HCSBuilder = function(item as IItemStack) as HCSBuilder {
    return HCSBuilder(item);
};