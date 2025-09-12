import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;


//牛
SummoningDirector.addSummonInfo(//固定格式。
    SummoningInfo.create()//固定格式。
        .setCatalyst(<minecraft:wheat>)//召唤用的催化剂，可不填。
        .setReagents([<minecraft:bone>*2,<minecraft:rotten_flesh>*2])//召唤用的物品。
        .addMob(MobInfo.create()//固定格式。
            .setMob("minecraft:cow")//召唤的生物。
            .setCount(1)//召唤的数量。
            .setOffset(0,1,0)//召唤后位置的偏移。
            .setSpread(3,3,3)//召唤后的随机性。
));
//羊
SummoningDirector.addSummonInfo(//固定格式。
    SummoningInfo.create()//固定格式。
        .setCatalyst(<minecraft:wheat>)//召唤用的催化剂，可不填。
        .setReagents([<minecraft:bone>*2,<minecraft:rotten_flesh>*2,<minecraft:wool>*2])//召唤用的物品。
        .addMob(MobInfo.create()//固定格式。
            .setMob("minecraft:sheep")//召唤的生物。
            .setCount(1)//召唤的数量。
            .setOffset(0,1,0)//召唤后位置的偏移。
            .setSpread(3,3,3)//召唤后的随机性。
));
//猪
SummoningDirector.addSummonInfo(//固定格式。
    SummoningInfo.create()//固定格式。
        .setCatalyst(<minecraft:carrot>)//召唤用的催化剂，可不填。
        .setReagents([<minecraft:bone>*2,<minecraft:rotten_flesh>*2])//召唤用的物品。
        .addMob(MobInfo.create()//固定格式。
            .setMob("minecraft:pig")//召唤的生物。
            .setCount(1)//召唤的数量。
            .setOffset(0,1,0)//召唤后位置的偏移。
            .setSpread(3,3,3)//召唤后的随机性。
));
//鸡
SummoningDirector.addSummonInfo(//固定格式。
    SummoningInfo.create()//固定格式。
        .setCatalyst(<minecraft:wheat_seeds>)//召唤用的催化剂，可不填。
        .setReagents([<minecraft:bone>*2,<minecraft:rotten_flesh>*2])//召唤用的物品。
        .addMob(MobInfo.create()//固定格式。
            .setMob("minecraft:chicken")//召唤的生物。
            .setCount(1)//召唤的数量。
            .setOffset(0,1,0)//召唤后位置的偏移。
            .setSpread(3,3,3)//召唤后的随机性。
));