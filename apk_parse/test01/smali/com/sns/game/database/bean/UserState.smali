.class public Lcom/sns/game/database/bean/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;
    }
.end annotation


# static fields
.field public static final KEY_ACTIVATE_GAME_TAG:Ljava/lang/String; = "activate_game_tag"

.field public static final KEY_CURRET_EXP:Ljava/lang/String; = "curret_exp"

.field public static final KEY_GETGOLD_TAG:Ljava/lang/String; = "to_get_gold"

.field public static final KEY_GETGOLD_TIME:Ljava/lang/String; = "get_gold_time"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_MRLQ_DATE:Ljava/lang/String; = "mrlq_date"

.field public static final KEY_MRLQ_DAY:Ljava/lang/String; = "mrlq_day"

.field public static final KEY_MRLQ_TAG:Ljava/lang/String; = "mrlq_tag"

.field public static final KEY_MUSIC_LOCK:Ljava/lang/String; = "music_lock"

.field public static final KEY_PROGRESS_CJMS_NOW_SEC:Ljava/lang/String; = "progress_cjms_now_sec"

.field public static final KEY_PROGRESS_SHMS_NOW_SEC:Ljava/lang/String; = "progress_shms_now_sec"

.field public static final KEY_SMALLGAME_STAR_COUNT:Ljava/lang/String; = "smallgame_star_count"

.field public static final KEY_USER_TOP:Ljava/lang/String; = "key_user_top"

.field public static final PP_FEE_USELIMIT_MAX_CJMS:I = 0x1

.field public static final PP_FEE_USELIMIT_MAX_SHMS:I = 0x1

.field public static final PP_FEE_USELIMIT_MAX_ZHJL:I = 0x1

.field public static final PROGRESS_CJMS_END_SEC:F = 300.0f

.field public static final PROGRESS_SHMS_END_SEC:F = 360.0f

.field public static final SHARED_NAME:Ljava/lang/String; = "user_state"

.field private static sharedUserState:Landroid/content/SharedPreferences;

.field private static state:Lcom/sns/game/database/bean/UserState;


# instance fields
.field private volatile anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

.field ggTag:I

.field private loginNetWorkTime:Ljava/lang/String;

.field netDateTime:Ljava/lang/String;

.field private netWorkTag:I

.field public uTop:Lcom/sns/game/database/bean/UserTop;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/bean/UserState;->netDateTime:Ljava/lang/String;

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/sns/game/database/bean/UserState;->ggTag:I

    .line 40
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->setUserState()V

    .line 41
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->initSelfUserTop()V

    .line 42
    return-void
.end method

.method private static getUserState()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 758
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 759
    const-string v1, "user_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/activity/GameActivityss;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 758
    return-object v0
.end method

.method private putBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 720
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 721
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 727
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private putFloat(Ljava/lang/String;F)F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 691
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 692
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 698
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v2, -0x1

    .line 677
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 678
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 684
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 682
    :catch_0
    move-exception v0

    .line 683
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

    .line 706
    :try_start_0
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 707
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    sget-object v3, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 713
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-object v2

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static setUserState()V
    .locals 1

    .prologue
    .line 754
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->getUserState()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    .line 755
    return-void
.end method

.method public static sharedState()Lcom/sns/game/database/bean/UserState;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sns/game/database/bean/UserState;->state:Lcom/sns/game/database/bean/UserState;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sns/game/database/bean/UserState;

    invoke-direct {v0}, Lcom/sns/game/database/bean/UserState;-><init>()V

    sput-object v0, Lcom/sns/game/database/bean/UserState;->state:Lcom/sns/game/database/bean/UserState;

    .line 50
    :cond_0
    sget-object v0, Lcom/sns/game/database/bean/UserState;->state:Lcom/sns/game/database/bean/UserState;

    return-object v0
.end method


# virtual methods
.method public varargs activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "updateLock"    # Z
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "selector"    # Ljava/lang/String;
    .param p4, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/sns/game/database/bean/UserState$1;

    invoke-direct {v0, p0}, Lcom/sns/game/database/bean/UserState$1;-><init>(Lcom/sns/game/database/bean/UserState;)V

    iput-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    .line 327
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setAccessLock(Z)V

    .line 328
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    invoke-virtual {v0, p1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setUpdateLock(Z)V

    .line 329
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setTargetUpdateArgs(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->start()V

    .line 332
    :cond_0
    return-void
.end method

.method public activateToUpgrade(I)V
    .locals 11
    .param p1, "multipleCostCold"    # I

    .prologue
    const/16 v10, 0x50

    .line 638
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v4

    .line 640
    .local v4, "level":I
    if-eq v4, v10, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getCurrentExp()I

    move-result v1

    .line 643
    .local v1, "currentExp":I
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sns/game/database/dao/UserLevelDao;->getNextFullExp(I)I

    move-result v2

    .line 645
    .local v2, "fullExp":I
    add-int v8, v1, p1

    if-lt v8, v2, :cond_2

    .line 647
    add-int/lit8 v8, v4, 0x1

    if-ne v8, v10, :cond_1

    .line 649
    invoke-virtual {p0, v10}, Lcom/sns/game/database/bean/UserState;->setLevel(I)V

    .line 650
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sns/game/database/dao/UserLevelDao;->getMaxLevelFullExp()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sns/game/database/bean/UserState;->setCurrentExp(I)V

    .line 672
    .end local v1    # "currentExp":I
    .end local v2    # "fullExp":I
    :cond_0
    :goto_0
    return-void

    .line 654
    .restart local v1    # "currentExp":I
    .restart local v2    # "fullExp":I
    :cond_1
    const/4 v5, 0x1

    .line 655
    .local v5, "levelNum":I
    add-int/lit8 v3, v4, 0x1

    .local v3, "i":I
    :goto_1
    if-le v3, v10, :cond_3

    .line 668
    :goto_2
    invoke-virtual {p0, v5}, Lcom/sns/game/database/bean/UserState;->modifyLevel(I)V

    .line 670
    .end local v3    # "i":I
    .end local v5    # "levelNum":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sns/game/database/bean/UserState;->modifyCurrenExp(I)V

    goto :goto_0

    .line 657
    .restart local v3    # "i":I
    .restart local v5    # "levelNum":I
    :cond_3
    add-int v6, v1, p1

    .line 658
    .local v6, "newExp":I
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sns/game/database/dao/UserLevelDao;->getLevelBean(I)Lcom/sns/game/database/bean/UserLevelBean;

    move-result-object v0

    .line 659
    .local v0, "curr":Lcom/sns/game/database/bean/UserLevelBean;
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/sns/game/database/dao/UserLevelDao;->getLevelBean(I)Lcom/sns/game/database/bean/UserLevelBean;

    move-result-object v7

    .line 660
    .local v7, "next":Lcom/sns/game/database/bean/UserLevelBean;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getMax_exp()I

    move-result v8

    if-lt v6, v8, :cond_4

    .line 661
    invoke-virtual {v7}, Lcom/sns/game/database/bean/UserLevelBean;->getMax_exp()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 663
    sub-int v5, v3, v4

    .line 664
    goto :goto_2

    .line 655
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public disposeMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 585
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 586
    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "splitDatas":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v3, v5, v7

    .line 590
    .local v3, "keyTag":Ljava/lang/String;
    const-string v7, "level"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 592
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 593
    .local v4, "level":I
    const-string v7, "level"

    invoke-direct {p0, v7, v4}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 602
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v6

    .line 603
    .local v6, "target":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v6, :cond_0

    .line 604
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v1

    .line 605
    .local v1, "dao":Lcom/sns/game/database/dao/UserLevelDao;
    invoke-virtual {v1, v4}, Lcom/sns/game/database/dao/UserLevelDao;->getLevelBean(I)Lcom/sns/game/database/bean/UserLevelBean;

    move-result-object v0

    .line 607
    .local v0, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    invoke-virtual {v6}, Lcom/sns/game/layer/CCNewGameLayer;->updateLevelAtlas()V

    .line 608
    invoke-virtual {v6, v0}, Lcom/sns/game/layer/CCNewGameLayer;->activateUpGrade(Lcom/sns/game/database/bean/UserLevelBean;)V

    .line 631
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    .end local v1    # "dao":Lcom/sns/game/database/dao/UserLevelDao;
    .end local v3    # "keyTag":Ljava/lang/String;
    .end local v4    # "level":I
    .end local v5    # "splitDatas":[Ljava/lang/String;
    .end local v6    # "target":Lcom/sns/game/layer/CCNewGameLayer;
    :cond_0
    :goto_0
    return-void

    .line 611
    .restart local v3    # "keyTag":Ljava/lang/String;
    .restart local v5    # "splitDatas":[Ljava/lang/String;
    :cond_1
    const-string v7, "curret_exp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 613
    const-string v7, "curret_exp"

    .line 614
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 613
    invoke-direct {p0, v7, v8}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 621
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v6

    .line 622
    .restart local v6    # "target":Lcom/sns/game/layer/CCNewGameLayer;
    if-eqz v6, :cond_0

    .line 623
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sns/game/layer/CCNewGameLayer;->setLevelBarUpdateLock(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    .end local v3    # "keyTag":Ljava/lang/String;
    .end local v5    # "splitDatas":[Ljava/lang/String;
    .end local v6    # "target":Lcom/sns/game/layer/CCNewGameLayer;
    :catch_0
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public editUserState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 734
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 735
    const/4 v2, 0x5

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

    .line 734
    invoke-virtual {v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getActivateGameTag()I
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "activate_game_tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCjmsPrgsNowSec()F
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "progress_cjms_now_sec"

    const/high16 v2, 0x43960000    # 300.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getCurrentExp()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 260
    sget-object v1, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v2, "curret_exp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    const-string v1, "curret_exp"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getGGTag()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/sns/game/database/bean/UserState;->ggTag:I

    return v0
.end method

.method public getGameStarCount()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 286
    sget-object v1, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v2, "smallgame_star_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    const-string v1, "smallgame_star_count"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getGetGoldTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "get_gold_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyGetGoldTag()I
    .locals 3

    .prologue
    .line 351
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "to_get_gold"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 243
    sget-object v1, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v2, "level"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "value":I
    if-ne v0, v3, :cond_0

    const-string v1, "level"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getLoginNetWorkTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->loginNetWorkTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMrlqDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "mrlq_date"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMrlqDay()I
    .locals 3

    .prologue
    .line 221
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "mrlq_day"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMrlqTag()I
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "mrlq_tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMusicLock()Z
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    .line 272
    const-string v1, "music_lock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 271
    return v0
.end method

.method public getNetDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->netDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWorkTag()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/sns/game/database/bean/UserState;->netWorkTag:I

    return v0
.end method

.method public getNextGetGoldTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "beforeTime"    # Ljava/lang/String;

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 411
    .local v0, "calr":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 412
    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 414
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 415
    .local v2, "newDate":Ljava/util/Date;
    invoke-static {v2}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 418
    .end local v0    # "calr":Ljava/util/Calendar;
    .end local v2    # "newDate":Ljava/util/Date;
    :goto_0
    return-object v3

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 418
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getShmsPrgsNowSec()F
    .locals 3

    .prologue
    .line 154
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "progress_shms_now_sec"

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getppFeeUseNumWithCJMS()I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "PP_FEE_USELIMIT_MAX_CJMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getppFeeUseNumWithSHMS()I
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "PP_FEE_USELIMIT_MAX_SHMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getppFeeUseNumWithZHJL()I
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "PP_FEE_USELIMIT_MAX_ZHJL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public initSelfUserTop()V
    .locals 4

    .prologue
    .line 94
    sget-object v1, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v2, "key_user_top"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->isExistSelfUserTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lcom/sns/game/database/bean/UserTop;

    invoke-direct {v1}, Lcom/sns/game/database/bean/UserTop;-><init>()V

    iput-object v1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    .line 98
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v1, v0}, Lcom/sns/game/database/bean/UserTop;->set(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    sget-object v2, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 100
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    sget-object v2, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public isActivateGame()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getActivateGameTag()I

    move-result v0

    .line 308
    .local v0, "tag":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEndPrgsCjms()Z
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getCjmsPrgsNowSec()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    div-float v0, v1, v2

    .line 145
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEndPrgsShms()Z
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getShmsPrgsNowSec()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v0, v1, v2

    .line 169
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExistSelfUserTop()Z
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/sns/game/database/bean/UserState;->sharedUserState:Landroid/content/SharedPreferences;

    const-string v1, "key_user_top"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitPPFeeUseWithCJMS()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getppFeeUseNumWithCJMS()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitPPFeeUseWithSHMS()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getppFeeUseNumWithSHMS()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitPPFeeUseWithZHJL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getppFeeUseNumWithZHJL()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyActivateGameTag(Z)V
    .locals 1
    .param p1, "activateFlag"    # Z

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState;->setActivateGameTag(I)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState;->setActivateGameTag(I)V

    goto :goto_0
.end method

.method public modifyCjmsPrgsNowSec(F)V
    .locals 3
    .param p1, "byValue"    # F

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getCjmsPrgsNowSec()F

    move-result v1

    .line 139
    .local v1, "nowSec":F
    add-float v0, v1, p1

    .line 140
    .local v0, "newSec":F
    const-string v2, "progress_cjms_now_sec"

    invoke-direct {p0, v2, v0}, Lcom/sns/game/database/bean/UserState;->putFloat(Ljava/lang/String;F)F

    .line 141
    return-void
.end method

.method public modifyCurrenExp(I)V
    .locals 2
    .param p1, "exp"    # I

    .prologue
    .line 254
    const-string v0, "curret_exp"

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getCurrentExp()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->editUserState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public modifyGGTag()V
    .locals 3

    .prologue
    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getNetDateTime()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "nowNetDateTime":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sns/game/database/bean/UserState;->setGGTag(I)V

    .line 406
    .end local v1    # "nowNetDateTime":Ljava/lang/String;
    :goto_1
    return-void

    .line 401
    .restart local v1    # "nowNetDateTime":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getKeyGetGoldTag()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 403
    .end local v1    # "nowNetDateTime":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public modifyGameStarCount(I)V
    .locals 2
    .param p1, "addCount"    # I

    .prologue
    .line 281
    const-string v0, "smallgame_star_count"

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getGameStarCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 282
    return-void
.end method

.method public modifyLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 238
    const-string v0, "level"

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->editUserState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public modifyMrlqDay()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 225
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getMrlqDay()I

    move-result v0

    .line 226
    .local v0, "currDay":I
    add-int/lit8 v2, v0, 0x1

    .line 227
    .local v2, "tempDay":I
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 228
    .local v1, "nextDay":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sns/game/database/bean/UserState;->setMrlqDay(I)V

    .line 229
    return-void
.end method

.method public modifyMusicLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 266
    const-string v0, "music_lock"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putBoolean(Ljava/lang/String;Z)Z

    .line 267
    return-void
.end method

.method public modifyShmsPrgsNowSec(F)V
    .locals 3
    .param p1, "byValue"    # F

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->getShmsPrgsNowSec()F

    move-result v1

    .line 163
    .local v1, "nowSec":F
    add-float v0, v1, p1

    .line 164
    .local v0, "newSec":F
    const-string v2, "progress_shms_now_sec"

    invoke-direct {p0, v2, v0}, Lcom/sns/game/database/bean/UserState;->putFloat(Ljava/lang/String;F)F

    .line 165
    return-void
.end method

.method public notifyHandler(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 745
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 746
    const/4 v2, 0x5

    .line 745
    invoke-virtual {v1, v2, p1}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resetPrgsCjmsNowSec()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->isEndPrgsCjms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState;->setCjmsPrgsNowSec(F)V

    .line 151
    :cond_0
    return-void
.end method

.method public resetPrgsShmsNowSec()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserState;->isEndPrgsShms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState;->setShmsPrgsNowSec(F)V

    .line 175
    :cond_0
    return-void
.end method

.method public saveSelfUserTop()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "key_user_top"

    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserTop;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->putString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    return-void
.end method

.method public saveppFeeUseNumWithCJMS()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "PP_FEE_USELIMIT_MAX_CJMS"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 65
    return-void
.end method

.method public saveppFeeUseNumWithSHMS()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "PP_FEE_USELIMIT_MAX_SHMS"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 75
    return-void
.end method

.method public saveppFeeUseNumWithZHJL()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "PP_FEE_USELIMIT_MAX_ZHJL"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 85
    return-void
.end method

.method public setActivateGameTag(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 291
    const-string v0, "activate_game_tag"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 292
    return-void
.end method

.method public setCjmsPrgsNowSec(F)V
    .locals 1
    .param p1, "toValue"    # F

    .prologue
    .line 134
    const-string v0, "progress_cjms_now_sec"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putFloat(Ljava/lang/String;F)F

    .line 135
    return-void
.end method

.method public setCurrentExp(I)V
    .locals 2
    .param p1, "exp"    # I

    .prologue
    .line 249
    const-string v0, "curret_exp"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->editUserState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public setGGTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/sns/game/database/bean/UserState;->ggTag:I

    .line 395
    return-void
.end method

.method public setGameStarCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 276
    const-string v0, "smallgame_star_count"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 277
    return-void
.end method

.method public setGetGoldTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v0, "get_gold_time"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setKeyGetGoldTag(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 347
    const-string v0, "to_get_gold"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 348
    return-void
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 233
    const-string v0, "level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/database/bean/UserState;->editUserState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public setLoginNetWorkTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState;->loginNetWorkTime:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setMrlqDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatDate"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "mrlq_date"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setMrlqDay(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 217
    const-string v0, "mrlq_day"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 218
    return-void
.end method

.method public setMrlqTag(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 209
    const-string v0, "mrlq_tag"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putInt(Ljava/lang/String;I)I

    .line 210
    return-void
.end method

.method public setNetDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "netDateTime"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState;->netDateTime:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setNetWorkTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/sns/game/database/bean/UserState;->netWorkTag:I

    .line 194
    return-void
.end method

.method public setSelfUserTop(Lcom/sns/game/database/bean/UserTop;)V
    .locals 0
    .param p1, "uTop"    # Lcom/sns/game/database/bean/UserTop;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    .line 113
    return-void
.end method

.method public setShmsPrgsNowSec(F)V
    .locals 1
    .param p1, "toValue"    # F

    .prologue
    .line 158
    const-string v0, "progress_shms_now_sec"

    invoke-direct {p0, v0, p1}, Lcom/sns/game/database/bean/UserState;->putFloat(Ljava/lang/String;F)F

    .line 159
    return-void
.end method

.method public stopAnwtThread()V
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->killSelf()V

    .line 338
    iget-object v0, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    .line 339
    .local v0, "tempThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sns/game/database/bean/UserState;->anwtThread:Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 344
    .end local v0    # "tempThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
