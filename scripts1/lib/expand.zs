//作者：Lun_Xun Github:https://github.com/LunnXun
//要用就用吧 我也懒得制止什么了 给个面子别删我这两行就行
#priority 6000

import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;
//物品比对
$expand IItemStack$isSameStack(other as IItemStack) as bool {
    if (isNull(other)) {
        return false;
    } else{
        return this.definition.id == other.definition.id && this.metadata == other.metadata;
    }
}
//成功率
$expand IRandom$Chance(chance as int) as bool {
    return this.nextInt(1,100) < chance;
}