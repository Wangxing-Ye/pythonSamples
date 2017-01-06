.class public Lcom/sns/game/database/bean/GameSceneSystem;
.super Ljava/lang/Object;
.source "GameSceneSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    }
.end annotation


# static fields
.field public static final KEY_MULTIPLE:Ljava/lang/String; = "multiple"

.field public static final KEY_WEAPON_SKILL:Ljava/lang/String; = "weaponSkill"

.field public static final MAX_MULTIPLE:I = 0x50

.field public static final SP_NAME:Ljava/lang/String; = "Game_Scene_SP"

.field private static multiples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static system:Lcom/sns/game/database/bean/GameSceneSystem;


# instance fields
.field private multiple:I

.field private sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    iput-object v0, p0, Lcom/sns/game/database/bean/GameSceneSystem;->sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/database/bean/GameSceneSystem;->multiple:I

    .line 33
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->setPreferences()V

    .line 34
    invoke-direct {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->putDataToSP()V

    .line 35
    return-void
.end method

.method private varargs addMultiples([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/Integer;

    .prologue
    .line 70
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 73
    return-void

    .line 70
    :cond_0
    aget-object v0, p1, v1

    .line 71
    .local v0, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->multiples:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private nextMultiple()I
    .locals 7

    .prologue
    const/16 v4, 0x8

    .line 120
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    .line 121
    .local v1, "currLevel":I
    if-ge v1, v4, :cond_0

    move v4, v1

    .line 122
    .local v4, "userLevel":I
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v3

    .line 123
    .local v3, "currMultiple":I
    add-int/lit8 v0, v4, -0x1

    .line 124
    .local v0, "curLevelMaxMulIdx":I
    sget-object v5, Lcom/sns/game/database/bean/GameSceneSystem;->multiples:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 125
    .local v2, "currMulNextIdx":I
    if-le v2, v0, :cond_1

    const/4 v2, 0x0

    .line 126
    :cond_1
    sget-object v5, Lcom/sns/game/database/bean/GameSceneSystem;->multiples:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5
.end method

.method private putDataToSP()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sns/game/database/bean/GameSceneSystem;->multiples:Ljava/util/ArrayList;

    .line 57
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x6

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sns/game/database/bean/GameSceneSystem;->addMultiples([Ljava/lang/Integer;)V

    .line 59
    sget-object v2, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/sns/game/database/bean/GameSceneSystem;->multiples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 62
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    .local v1, "key":Ljava/lang/Integer;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5000,0"

    invoke-direct {p0, v0, v3, v4}, Lcom/sns/game/database/bean/GameSceneSystem;->putString(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v2, -0x1

    .line 223
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 230
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 238
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-object v2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private putString(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static setPreferences()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    .line 47
    return-void
.end method

.method private static sharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 51
    const-string v1, "Game_Scene_SP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/activity/GameActivityss;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public static sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sns/game/database/bean/GameSceneSystem;->system:Lcom/sns/game/database/bean/GameSceneSystem;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/sns/game/database/bean/GameSceneSystem;

    invoke-direct {v0}, Lcom/sns/game/database/bean/GameSceneSystem;-><init>()V

    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem;->system:Lcom/sns/game/database/bean/GameSceneSystem;

    .line 42
    :cond_0
    sget-object v0, Lcom/sns/game/database/bean/GameSceneSystem;->system:Lcom/sns/game/database/bean/GameSceneSystem;

    return-object v0
.end method


# virtual methods
.method public activate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 261
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 262
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public activateToSkill(I)V
    .locals 3
    .param p1, "defWeaponCostGold"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getCurrSkillExp()I

    move-result v0

    .line 208
    .local v0, "currExp":I
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getCurrSkillFullExp()I

    move-result v1

    .line 209
    .local v1, "fullExp":I
    if-ge v0, v1, :cond_0

    .line 211
    add-int v2, v0, p1

    if-lt v2, v1, :cond_1

    .line 213
    invoke-virtual {p0, v1}, Lcom/sns/game/database/bean/GameSceneSystem;->setCurrSkillExp(I)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sns/game/database/bean/GameSceneSystem;->updateCurrSkillExp(I)V

    goto :goto_0
.end method

.method public disposeMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 174
    iget v11, p1, Landroid/os/Message;->what:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "splitDatas":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v2, v6, v10

    .line 178
    .local v2, "keyTag":Ljava/lang/String;
    const-string v10, "multiple"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 180
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 181
    .local v4, "multiple":I
    const-string v8, "multiple"

    invoke-direct {p0, v8, v4}, Lcom/sns/game/database/bean/GameSceneSystem;->putInt(Ljava/lang/String;I)I

    .line 183
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v8

    const-string v9, "muleNumAnim_CallBack"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v8, v9, v10}, Lcom/sns/game/database/bean/GameSceneSystem;->updateUI(Lorg/cocos2d/layers/CCLayer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .end local v2    # "keyTag":Ljava/lang/String;
    .end local v4    # "multiple":I
    .end local v6    # "splitDatas":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v2    # "keyTag":Ljava/lang/String;
    .restart local v6    # "splitDatas":[Ljava/lang/String;
    :cond_1
    const-string v10, "weaponSkill"

    const-string v11, "_"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 187
    const-string v10, "_"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v7, v10, v11

    .line 188
    .local v7, "toMultipleKey":Ljava/lang/String;
    sget-object v10, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "skillData":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "currSkillExp":I
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    .local v3, "maxSkillExp":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Lcom/sns/game/database/bean/GameSceneSystem;->putString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v10

    const-string v11, "updateSkillBarByWeapon_CallBack"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-virtual {p0, v10, v11, v12}, Lcom/sns/game/database/bean/GameSceneSystem;->updateUI(Lorg/cocos2d/layers/CCLayer;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0    # "currSkillExp":I
    .end local v2    # "keyTag":Ljava/lang/String;
    .end local v3    # "maxSkillExp":I
    .end local v5    # "skillData":Ljava/lang/String;
    .end local v6    # "splitDatas":[Ljava/lang/String;
    .end local v7    # "toMultipleKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currSkillExp":I
    .restart local v2    # "keyTag":Ljava/lang/String;
    .restart local v3    # "maxSkillExp":I
    .restart local v5    # "skillData":Ljava/lang/String;
    .restart local v6    # "splitDatas":[Ljava/lang/String;
    .restart local v7    # "toMultipleKey":Ljava/lang/String;
    :cond_2
    move v8, v9

    .line 193
    goto :goto_1
.end method

.method public getCurrSkillExp()I
    .locals 5

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "value":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 148
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCurrSkillFullExp()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "value":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 161
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getMultiple()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 115
    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem;->sPreferences:Landroid/content/SharedPreferences;

    const-string v2, "multiple"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    const-string v1, "multiple"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sns/game/database/bean/GameSceneSystem;->putInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getSceneTag()Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sns/game/database/bean/GameSceneSystem;->sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    return-object v0
.end method

.method public isCurrFullExp()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getCurrSkillExp()I

    move-result v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getCurrSkillFullExp()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrSkillExp(I)V
    .locals 2
    .param p1, "exp"    # I

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weaponSkill_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/GameSceneSystem;->activate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public setMultiple(I)V
    .locals 2
    .param p1, "multiple"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sns/game/database/bean/GameSceneSystem;->sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v0, v1, :cond_0

    .line 103
    const-string v0, "multiple"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/GameSceneSystem;->activate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setSceneTag(Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;)V
    .locals 0
    .param p1, "gameSceneTag"    # Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sns/game/database/bean/GameSceneSystem;->sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    .line 97
    return-void
.end method

.method public updateCurrSkillExp(I)V
    .locals 2
    .param p1, "exp"    # I

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weaponSkill_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getMultiple()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->getCurrSkillExp()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/GameSceneSystem;->activate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public updateMultiple()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sns/game/database/bean/GameSceneSystem;->sceneTag:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    if-ne v0, v1, :cond_0

    .line 110
    const-string v0, "multiple"

    invoke-direct {p0}, Lcom/sns/game/database/bean/GameSceneSystem;->nextMultiple()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/GameSceneSystem;->activate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public varargs updateUI(Lorg/cocos2d/layers/CCLayer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "layer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "cb"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 274
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
