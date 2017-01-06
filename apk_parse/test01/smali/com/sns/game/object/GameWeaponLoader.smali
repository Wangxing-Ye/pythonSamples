.class public Lcom/sns/game/object/GameWeaponLoader;
.super Ljava/lang/Object;
.source "GameWeaponLoader.java"

# interfaces
.implements Lorg/cocos2d/actions/UpdateCallback;


# static fields
.field public static final TAG_NAME_BULLET:Ljava/lang/String; = "bullet"

.field public static final TAG_NAME_GUN:Ljava/lang/String; = "gun"

.field public static final TAG_NAME_PLIST:Ljava/lang/String; = "shot"

.field public static final TAG_NAME_SIGHT:Ljava/lang/String; = "sight"

.field public static final WEAPON_ID_CGP:I = 0x2724

.field public static final WEAPON_ID_DMG:I = 0x2722

.field public static final WEAPON_ID_JGP:I = 0x2720

.field public static final WEAPON_ID_WDP:I = 0x271f

.field public static final WEAPON_ID_XGTS:I = 0x2723

.field public static final WEAPON_ID_XRZC:I = 0x2721

.field private static loader:Lcom/sns/game/object/GameWeaponLoader;


# instance fields
.field private actionNode:Lorg/cocos2d/nodes/CCNode;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

.field private captureRates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/database/bean/CaptureRateBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private isExistScheduleRemoveWpnNode:Z

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private removeWpns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/object/GameWeapon;",
            ">;"
        }
    .end annotation
.end field

.field private scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

.field toFileUpdateLock:Z

.field private updateCheckRemoveWeapons:Lorg/cocos2d/actions/UpdateCallback;

.field private useWeapon:Lcom/sns/game/object/GameWeapon;

.field public weaponBoxRect:Lorg/cocos2d/types/CGRect;

.field public weaponFireRect:Lorg/cocos2d/types/CGRect;

.field private zOrder_:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x44480000    # 800.0f

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 60
    const/high16 v0, 0x42f60000    # 123.0f

    const v1, 0x43818000    # 259.0f

    invoke-static {v2, v0, v3, v1}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->weaponFireRect:Lorg/cocos2d/types/CGRect;

    .line 61
    const/high16 v0, 0x42ce0000    # 103.0f

    invoke-static {v2, v2, v3, v0}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->weaponBoxRect:Lorg/cocos2d/types/CGRect;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/sns/game/object/GameWeaponLoader$1;

    invoke-direct {v0, p0}, Lcom/sns/game/object/GameWeaponLoader$1;-><init>(Lcom/sns/game/object/GameWeaponLoader;)V

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->updateCheckRemoveWeapons:Lorg/cocos2d/actions/UpdateCallback;

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/object/GameWeaponLoader;->toFileUpdateLock:Z

    .line 108
    invoke-direct {p0}, Lcom/sns/game/object/GameWeaponLoader;->addCaptureRates()V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/object/GameWeaponLoader;)Ljava/util/List;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sns/game/object/GameWeaponLoader;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sns/game/object/GameWeaponLoader;Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/sns/game/object/GameWeaponLoader;->isExistScheduleRemoveWpnNode:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sns/game/object/GameWeaponLoader;I)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/sns/game/object/GameWeaponLoader;->toBuyWeapon(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/sns/game/object/GameWeaponLoader;)Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method private addCaptureRates()V
    .locals 7

    .prologue
    .line 89
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/dao/WeaponDao;->findWeaponList()Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "weaponList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    return-void

    .line 90
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/database/bean/WeaponBean;

    .line 91
    .local v2, "weapon":Lcom/sns/game/database/bean/WeaponBean;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v0

    .line 93
    .local v0, "key":I
    invoke-static {}, Lcom/sns/game/database/dao/CaptureRateDao;->sharedDao()Lcom/sns/game/database/dao/CaptureRateDao;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/dao/CaptureRateDao;->asCaptureRateMapByWeaponId(I)Ljava/util/HashMap;

    move-result-object v1

    .line 94
    .local v1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    iget-object v5, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createInPlistFrame(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 6
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 696
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "subPlist":Ljava/lang/String;
    iget-object v3, p0, Lcom/sns/game/object/GameWeaponLoader;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v3, v2}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->converToImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    const-string v4, "shot"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 700
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-nez v0, :cond_0

    .line 701
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Log] Frame not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sns/game/util/CCGameLog;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    return-object v0
.end method

.method private varargs invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rec"    # Ljava/lang/Object;
    .param p2, "cb"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 746
    const/4 v2, 0x0

    .line 747
    .local v2, "invocation":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 748
    .local v5, "targetCallback":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 749
    .local v4, "selector":Ljava/lang/String;
    const/4 v3, 0x0

    .line 751
    .local v3, "passObj":Ljava/lang/Object;
    move-object v5, p1

    .line 752
    move-object v4, p2

    .line 753
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 754
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 755
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 757
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v5, :cond_2

    move v8, v6

    .line 758
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_1

    .line 759
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 761
    .local v3, "passObj":[Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v3    # "passObj":[Ljava/lang/Object;
    :cond_1
    :goto_2
    return-void

    .local v3, "passObj":Ljava/lang/Object;
    :cond_2
    move v8, v7

    .line 757
    goto :goto_0

    :cond_3
    move v6, v7

    .line 758
    goto :goto_1

    .line 763
    .end local v3    # "passObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private loadUseWeapon()Lcom/sns/game/object/GameWeapon;
    .locals 3

    .prologue
    .line 651
    :try_start_0
    new-instance v1, Lcom/sns/game/object/GameWeapon;

    invoke-direct {v1, p0}, Lcom/sns/game/object/GameWeapon;-><init>(Lcom/sns/game/object/GameWeaponLoader;)V

    .line 652
    .local v1, "weapon":Lcom/sns/game/object/GameWeapon;
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/dao/UserWeaponDao;->findUsingUserWeapon()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/object/GameWeapon;->createSelf(Lcom/sns/game/database/bean/UserWeaponBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v1    # "weapon":Lcom/sns/game/object/GameWeapon;
    :goto_0
    return-object v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private purgeCaptureRates()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 100
    .local v1, "keys":[Ljava/lang/Integer;
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 104
    iget-object v3, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void

    .line 100
    :cond_0
    aget-object v0, v1, v3

    .line 101
    .local v0, "key":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 102
    .local v2, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static selfLoader()Lcom/sns/game/object/GameWeaponLoader;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/sns/game/object/GameWeaponLoader;->loader:Lcom/sns/game/object/GameWeaponLoader;

    return-object v0
.end method

.method public static sharedLoader()Lcom/sns/game/object/GameWeaponLoader;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/sns/game/object/GameWeaponLoader;->loader:Lcom/sns/game/object/GameWeaponLoader;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/sns/game/object/GameWeaponLoader;

    invoke-direct {v0}, Lcom/sns/game/object/GameWeaponLoader;-><init>()V

    sput-object v0, Lcom/sns/game/object/GameWeaponLoader;->loader:Lcom/sns/game/object/GameWeaponLoader;

    .line 115
    :cond_0
    sget-object v0, Lcom/sns/game/object/GameWeaponLoader;->loader:Lcom/sns/game/object/GameWeaponLoader;

    return-object v0
.end method

.method private toBuyWeapon(I)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 6
    .param p1, "wepnId"    # I

    .prologue
    .line 508
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v3

    .line 509
    .local v3, "userWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    invoke-virtual {v3, p1}, Lcom/sns/game/database/dao/UserWeaponDao;->containUserWeapon(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 511
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(II)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    .line 512
    .local v0, "addUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert data to [userweapons] is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 521
    :goto_0
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    if-eqz v4, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeaponUserBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    .line 523
    .local v2, "nowUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v4

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 526
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 536
    .end local v0    # "addUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v2    # "nowUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v3    # "userWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :cond_0
    :goto_1
    return-object v0

    .line 515
    .restart local v3    # "userWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :cond_1
    invoke-virtual {v3, p1}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    .line 516
    .restart local v0    # "addUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V

    .line 517
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyHold_count()V

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update [userweapons] data is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    .end local v0    # "addUWpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v3    # "userWpnDao":Lcom/sns/game/database/dao/UserWeaponDao;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 536
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private toFileUpdateLogic()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 552
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v7, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-ne v6, v7, :cond_2

    .line 554
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/WeaponBean;->getCostMoney()I

    move-result v0

    .line 555
    .local v0, "defWeaponCostGold":I
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v6

    mul-int v2, v0, v6

    .line 557
    .local v2, "multipleCostCold":I
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sns/game/database/bean/UserState;->activateToUpgrade(I)V

    .line 559
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/bean/GameSceneSystem;->activateToSkill(I)V

    .line 562
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    const-string v7, "updateUserGold_CallBack"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {p0, v6, v7, v8}, Lcom/sns/game/object/GameWeaponLoader;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v6

    const/16 v7, 0x271f

    if-eq v6, v7, :cond_0

    .line 566
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V

    .line 568
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    const-string v7, "updateUserWqkItemsByWeapon_CallBack"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    aput-object v9, v8, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {p0, v6, v7, v8}, Lcom/sns/game/object/GameWeaponLoader;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_0
    sget-object v4, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    .line 573
    .local v4, "uData":Lcom/sns/game/database/bean/UserData;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 574
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v6

    if-eqz v6, :cond_1

    .line 575
    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->getCurrentExp()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_2

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    check-cast v1, Lcom/sns/game/layer/CCNewGameLayer;

    .line 578
    .local v1, "layer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    move-result-object v3

    .line 579
    .local v3, "system":Lcom/sns/game/layer/CCNewManSystem;
    invoke-virtual {v3, v11}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 580
    invoke-virtual {v3, v11, v1}, Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V

    .line 587
    .end local v0    # "defWeaponCostGold":I
    .end local v1    # "layer":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v2    # "multipleCostCold":I
    .end local v3    # "system":Lcom/sns/game/layer/CCNewManSystem;
    .end local v4    # "uData":Lcom/sns/game/database/bean/UserData;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_2
    return-void
.end method


# virtual methods
.method public activateBilling2PayGold()V
    .locals 9

    .prologue
    .line 413
    :try_start_0
    iget-object v7, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v8, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-eq v7, v8, :cond_0

    .line 456
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sns/game/util/CCUtil;->findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;

    move-result-object v6

    .line 415
    .local v6, "runningLayer":Lcom/sns/game/ui/CCGameLayer;
    if-eqz v6, :cond_1

    .line 416
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 420
    :cond_1
    const/16 v4, 0xe

    .line 421
    .local v4, "finalIdx":I
    const/16 v5, 0x10

    .line 422
    .local v5, "pp":I
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v1

    .line 423
    .local v1, "dao":Lcom/sns/game/database/dao/StoreItemDao;
    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Lcom/sns/game/database/dao/StoreItemDao;->get4Cache(I)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v0

    .line 425
    .local v0, "bean":Lcom/sns/game/database/bean/StoreItemBean;
    new-instance v2, Lcom/sns/game/object/GameWeaponLoader$2;

    invoke-direct {v2, p0, v0, v6}, Lcom/sns/game/object/GameWeaponLoader$2;-><init>(Lcom/sns/game/object/GameWeaponLoader;Lcom/sns/game/database/bean/StoreItemBean;Lcom/sns/game/ui/CCGameLayer;)V

    .line 446
    .local v2, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v0    # "bean":Lcom/sns/game/database/bean/StoreItemBean;
    .end local v1    # "dao":Lcom/sns/game/database/dao/StoreItemDao;
    .end local v2    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v4    # "finalIdx":I
    .end local v5    # "pp":I
    .end local v6    # "runningLayer":Lcom/sns/game/ui/CCGameLayer;
    :catch_0
    move-exception v3

    .line 454
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public activateBilling2PayWeapon(I)V
    .locals 4
    .param p1, "wepnId"    # I

    .prologue
    .line 461
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/util/CCUtil;->findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;

    move-result-object v2

    .line 462
    .local v2, "runningLayer":Lcom/sns/game/ui/CCGameLayer;
    if-eqz v2, :cond_0

    .line 463
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 465
    :cond_0
    new-instance v0, Lcom/sns/game/object/GameWeaponLoader$3;

    invoke-direct {v0, p0, p1, v2}, Lcom/sns/game/object/GameWeaponLoader$3;-><init>(Lcom/sns/game/object/GameWeaponLoader;ILcom/sns/game/ui/CCGameLayer;)V

    .line 497
    .local v0, "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2PayItem(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "delegateCallBack":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .end local v2    # "runningLayer":Lcom/sns/game/ui/CCGameLayer;
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/object/GameWeaponLoader;->zOrder_:I

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/object/GameWeaponLoader;->zOrder_:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addRemoveWeapon(Lcom/sns/game/object/GameWeapon;)V
    .locals 1
    .param p1, "obj"    # Lcom/sns/game/object/GameWeapon;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public callBack_selector_setDefaultUseWeapon()V
    .locals 2

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBulletSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V

    .line 306
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createSelf(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 0
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/sns/game/object/GameWeaponLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/sns/game/object/GameWeaponLoader;->setZorder(I)V

    .line 125
    return-void
.end method

.method public endPoint(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 12
    .param p1, "bullet"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "from"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "tempTo"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "rotation"    # F

    .prologue
    .line 720
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 721
    iget v9, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 722
    .local v3, "point_A":Lorg/cocos2d/types/CGPoint;
    iget v9, p3, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, p3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 723
    .local v4, "point_B":Lorg/cocos2d/types/CGPoint;
    iget v9, v4, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 725
    .local v5, "point_C":Lorg/cocos2d/types/CGPoint;
    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v8

    .line 726
    .local v8, "side_h":F
    invoke-static {v3, v5}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v7

    .line 727
    .local v7, "side_b":F
    invoke-static {v5, v4}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v6

    .line 728
    .local v6, "side_a":F
    const/4 v9, 0x0

    cmpl-float v9, p4, v9

    if-ltz v9, :cond_1

    .line 730
    :goto_0
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 731
    .local v2, "nextPoint":Lorg/cocos2d/types/CGPoint;
    iget v9, v4, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, v4, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v9, v10}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 733
    .local v1, "endPoint":Lorg/cocos2d/types/CGPoint;
    sget-object v0, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    .line 734
    .local v0, "deviceSize":Lorg/cocos2d/types/CGSize;
    :goto_1
    iget v9, v1, Lorg/cocos2d/types/CGPoint;->x:F

    sget-object v10, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v10, v10, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-lez v9, :cond_0

    .line 735
    iget v9, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, v0, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gez v9, :cond_0

    .line 736
    iget v9, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v10, v0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2

    .line 742
    .end local v0    # "deviceSize":Lorg/cocos2d/types/CGSize;
    .end local v1    # "endPoint":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "nextPoint":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "point_A":Lorg/cocos2d/types/CGPoint;
    .end local v4    # "point_B":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "point_C":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "side_a":F
    .end local v7    # "side_b":F
    .end local v8    # "side_h":F
    :cond_0
    :goto_2
    return-object v1

    .line 728
    .restart local v3    # "point_A":Lorg/cocos2d/types/CGPoint;
    .restart local v4    # "point_B":Lorg/cocos2d/types/CGPoint;
    .restart local v5    # "point_C":Lorg/cocos2d/types/CGPoint;
    .restart local v6    # "side_a":F
    .restart local v7    # "side_b":F
    .restart local v8    # "side_h":F
    :cond_1
    neg-float v7, v7

    goto :goto_0

    .line 737
    .restart local v0    # "deviceSize":Lorg/cocos2d/types/CGSize;
    .restart local v1    # "endPoint":Lorg/cocos2d/types/CGPoint;
    .restart local v2    # "nextPoint":Lorg/cocos2d/types/CGPoint;
    :cond_2
    iget v9, v1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v9, v7

    iget v10, v1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v10, v6

    invoke-virtual {v2, v9, v10}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 738
    iget v9, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v10, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1, v9, v10}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto :goto_1

    .line 742
    .end local v0    # "deviceSize":Lorg/cocos2d/types/CGSize;
    .end local v1    # "endPoint":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "nextPoint":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "point_A":Lorg/cocos2d/types/CGPoint;
    .end local v4    # "point_B":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "point_C":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "side_a":F
    .end local v7    # "side_b":F
    .end local v8    # "side_h":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getBulletFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 685
    const-string v0, "bullet"

    invoke-direct {p0, p1, v0}, Lcom/sns/game/object/GameWeaponLoader;->createInPlistFrame(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureRateObj(II)Lcom/sns/game/database/bean/CaptureRateBean;
    .locals 2
    .param p1, "weaponId"    # I
    .param p2, "zombieId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->captureRates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/CaptureRateBean;

    return-object v0
.end method

.method public getGunFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 667
    const-string v0, "gun"

    invoke-direct {p0, p1, v0}, Lcom/sns/game/object/GameWeaponLoader;->createInPlistFrame(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getRemoveWpns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/object/GameWeapon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;

    return-object v0
.end method

.method public getSightFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 676
    const-string v0, "sight"

    invoke-direct {p0, p1, v0}, Lcom/sns/game/object/GameWeaponLoader;->createInPlistFrame(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method

.method public getUseWeapon()Lcom/sns/game/object/GameWeapon;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    return-object v0
.end method

.method public getUseWeaponUserBean()Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    return-object v0
.end method

.method public getWeaponCofficient(FLcom/sns/game/database/bean/WeaponBean;)F
    .locals 4
    .param p1, "clusterSum"    # F
    .param p2, "bean"    # Lcom/sns/game/database/bean/WeaponBean;

    .prologue
    .line 612
    invoke-virtual {p2}, Lcom/sns/game/database/bean/WeaponBean;->getEnergy()F

    move-result v2

    .line 613
    .local v2, "energy":F
    invoke-virtual {p2}, Lcom/sns/game/database/bean/WeaponBean;->getCofficientA()F

    move-result v0

    .line 614
    .local v0, "cofficientA":F
    invoke-virtual {p2}, Lcom/sns/game/database/bean/WeaponBean;->getCofficientB()F

    move-result v1

    .line 615
    .local v1, "cofficientB":F
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    return v3
.end method

.method public getWeaponExpect(FFLcom/sns/game/database/bean/WeaponBean;Lcom/sns/game/database/bean/ZombieDataBean;)F
    .locals 4
    .param p1, "cofficient"    # F
    .param p2, "weightSum"    # F
    .param p3, "weaponBean"    # Lcom/sns/game/database/bean/WeaponBean;
    .param p4, "zombieBean"    # Lcom/sns/game/database/bean/ZombieDataBean;

    .prologue
    .line 628
    invoke-virtual {p3}, Lcom/sns/game/database/bean/WeaponBean;->getEnergy()F

    move-result v0

    .line 629
    .local v0, "energy":F
    invoke-virtual {p3}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    invoke-virtual {p4}, Lcom/sns/game/database/bean/ZombieDataBean;->getZombie_id()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sns/game/object/GameWeaponLoader;->getCaptureRateObj(II)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/CaptureRateBean;->getWeight()F

    move-result v1

    .line 630
    .local v1, "weight":F
    mul-float v2, p1, v0

    mul-float/2addr v2, v1

    div-float/2addr v2, p2

    return v2
.end method

.method public getZombieCaptureRate(FF)F
    .locals 1
    .param p1, "expect"    # F
    .param p2, "intrinsicValue"    # F

    .prologue
    .line 641
    div-float v0, p1, p2

    return v0
.end method

.method public getZombieList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-ne v0, v1, :cond_0

    .line 770
    invoke-static {}, Lcom/sns/game/object/GameZombieLoader;->sharedLoader()Lcom/sns/game/object/GameZombieLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/object/GameZombieLoader;->getZombieList()Ljava/util/ArrayList;

    move-result-object v0

    .line 775
    :goto_0
    return-object v0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-ne v0, v1, :cond_1

    .line 773
    invoke-static {}, Lcom/sns/game/object/CJGameZombieLoader;->sharedLoader()Lcom/sns/game/object/CJGameZombieLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/object/CJGameZombieLoader;->getZombieList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyBulletInWepon()Z
    .locals 3

    .prologue
    .line 780
    :try_start_0
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBulletSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v1

    .line 781
    .local v1, "sheet":Lorg/cocos2d/nodes/CCSpriteSheet;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 784
    .end local v1    # "sheet":Lorg/cocos2d/nodes/CCSpriteSheet;
    :goto_0
    return v2

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 784
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openFire(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "touch"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/16 v6, 0x271f

    const/4 v5, 0x2

    .line 353
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    .line 356
    .local v1, "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v3, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-ne v2, v3, :cond_3

    .line 357
    sget-object v2, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v2

    if-gtz v2, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayGold()V

    .line 408
    .end local v1    # "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    :cond_0
    :goto_0
    return-void

    .line 361
    .restart local v1    # "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    :cond_1
    sget-object v2, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v2

    .line 362
    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getCostMoney()I

    move-result v3

    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayGold()V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    if-eq v2, v6, :cond_3

    .line 367
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    if-gtz v2, :cond_3

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayWeapon(I)V

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getShotType()I

    move-result v0

    .line 379
    .local v0, "shotType":I
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getWeapon()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getBoundingBoxRef()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 378
    invoke-static {v2, p2}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 384
    invoke-virtual {p0, p2}, Lcom/sns/game/object/GameWeaponLoader;->toFire(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 386
    :cond_4
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getSight()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 392
    invoke-virtual {p0, p2}, Lcom/sns/game/object/GameWeaponLoader;->toFire(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 394
    :cond_5
    if-ne v0, v5, :cond_0

    .line 395
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getSight()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 401
    :pswitch_2
    if-ne v0, v5, :cond_0

    .line 402
    invoke-virtual {p0, p2}, Lcom/sns/game/object/GameWeaponLoader;->toFire(Lorg/cocos2d/types/CGPoint;)V

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->recycleSelf()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 137
    :cond_2
    iput-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 138
    iput-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 139
    iput-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    .line 140
    iput-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    .line 141
    return-void
.end method

.method public setActionNode()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 165
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 166
    return-void
.end method

.method public setCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 0
    .param p1, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 170
    return-void
.end method

.method public setDefaultUseWeapon()V
    .locals 4

    .prologue
    .line 285
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userweapons] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v2

    const/16 v3, 0x271f

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeaponToNowUse(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBulletSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 290
    const-string v2, "callBack_selector_setDefaultUseWeapon"

    invoke-static {p0, v2}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 159
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->setActionNode()V

    .line 160
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->setScheduleRemoveWpnNode()V

    .line 161
    return-void
.end method

.method public setScheduleRemoveWpnNode()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    .line 190
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 191
    return-void
.end method

.method public setUseWeapon()V
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "removeWpn":Lcom/sns/game/object/GameWeapon;
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    .line 241
    invoke-virtual {p0, v0}, Lcom/sns/game/object/GameWeaponLoader;->addRemoveWeapon(Lcom/sns/game/object/GameWeapon;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/sns/game/object/GameWeaponLoader;->loadUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    .line 245
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->runAction()V

    .line 246
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->showUseWeaponAnim()V

    .line 248
    iget-boolean v1, p0, Lcom/sns/game/object/GameWeaponLoader;->isExistScheduleRemoveWpnNode:Z

    if-nez v1, :cond_1

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sns/game/object/GameWeaponLoader;->isExistScheduleRemoveWpnNode:Z

    .line 250
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;

    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader;->updateCheckRemoveWeapons:Lorg/cocos2d/actions/UpdateCallback;

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->schedule(Lorg/cocos2d/actions/UpdateCallback;)V

    .line 260
    :cond_1
    return-void
.end method

.method public setZorder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/sns/game/object/GameWeaponLoader;->zOrder_:I

    .line 151
    return-void
.end method

.method public showUseWeaponAnim()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 265
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v3

    .line 266
    .local v3, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    const-string v6, "effect/effect_7.plist"

    invoke-virtual {v3, v6}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 267
    const-string v6, "effect_7_"

    const-string v7, ".png"

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v3, v6, v7, v8, v9}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, "animFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getWeapon()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    .line 270
    .local v5, "weaponSize":Lorg/cocos2d/types/CGSize;
    const-string v6, "point.png"

    invoke-static {v6}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 271
    .local v1, "animNode":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 272
    iget v6, v5, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v6, v10

    iget v7, v5, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v7, v10

    invoke-virtual {v1, v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 273
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v6}, Lcom/sns/game/object/GameWeapon;->getWeapon()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 275
    const-string v6, ""

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v6, v7, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    .line 276
    .local v2, "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v7, 0x0

    invoke-static {}, Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;->action()Lorg/cocos2d/actions/instant/extensions/CCRemoveSelf;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "animFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v1    # "animNode":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "animate":Lorg/cocos2d/actions/interval/CCAnimate;
    .end local v3    # "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    .end local v5    # "weaponSize":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v4

    .line 279
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public switchWeapon(I)V
    .locals 4
    .param p1, "weaponId"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v0

    .line 316
    .local v0, "oldUseId":I
    if-eq v0, p1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v1}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserWeaponBean;->setNow_use(I)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userweapons] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/sns/game/database/dao/UserWeaponDao;->switchUserWeaponToNowUse(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userweapons] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v2

    iget-object v3, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v3}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->setUseWeapon()V

    .line 324
    :cond_0
    return-void
.end method

.method public testSetUseWeapon(I)V
    .locals 2
    .param p1, "weaponId"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->recycleSelf()V

    .line 330
    :cond_0
    new-instance v0, Lcom/sns/game/object/GameWeapon;

    invoke-direct {v0, p0}, Lcom/sns/game/object/GameWeapon;-><init>(Lcom/sns/game/object/GameWeaponLoader;)V

    iput-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    .line 331
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/object/GameWeapon;->createSelf(Lcom/sns/game/database/bean/UserWeaponBean;)V

    .line 332
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->runAction()V

    .line 333
    return-void
.end method

.method public toFire(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "touch"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->isSafeToOpenFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader;->useWeapon:Lcom/sns/game/object/GameWeapon;

    invoke-virtual {v0, p1}, Lcom/sns/game/object/GameWeapon;->shotBullet(Lorg/cocos2d/types/CGPoint;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sns/game/object/GameWeaponLoader;->toFileUpdateLock:Z

    .line 594
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/sns/game/object/GameWeaponLoader;->toFileUpdateLock:Z

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/object/GameWeaponLoader;->toFileUpdateLock:Z

    .line 547
    invoke-direct {p0}, Lcom/sns/game/object/GameWeaponLoader;->toFileUpdateLogic()V

    .line 549
    :cond_0
    return-void
.end method

.method public updateNowUseWeaponCacheData()V
    .locals 6

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v3

    .line 338
    .local v3, "gameWpn":Lcom/sns/game/object/GameWeapon;
    if-nez v3, :cond_1

    .line 350
    .end local v3    # "gameWpn":Lcom/sns/game/object/GameWeapon;
    :cond_0
    :goto_0
    return-void

    .line 339
    .restart local v3    # "gameWpn":Lcom/sns/game/object/GameWeapon;
    :cond_1
    invoke-virtual {v3}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    .line 340
    .local v0, "cacheUwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v1

    .line 343
    .local v1, "dao":Lcom/sns/game/database/dao/UserWeaponDao;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sns/game/database/dao/UserWeaponDao;->findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v4

    .line 344
    .local v4, "storeUwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 345
    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0    # "cacheUwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v1    # "dao":Lcom/sns/game/database/dao/UserWeaponDao;
    .end local v3    # "gameWpn":Lcom/sns/game/object/GameWeapon;
    .end local v4    # "storeUwBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
