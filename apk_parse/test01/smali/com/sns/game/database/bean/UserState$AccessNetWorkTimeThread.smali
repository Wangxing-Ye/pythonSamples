.class public Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;
.super Ljava/lang/Thread;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/database/bean/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessNetWorkTimeThread"
.end annotation


# instance fields
.field accessLock:Z

.field final synthetic this$0:Lcom/sns/game/database/bean/UserState;

.field private updateArgs:[Ljava/lang/Object;

.field updateLock:Z

.field private updateSelector:Ljava/lang/String;

.field private updateTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sns/game/database/bean/UserState;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->this$0:Lcom/sns/game/database/bean/UserState;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->accessLock:Z

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateLock:Z

    return-void
.end method

.method private getNetWorkTime()Ljava/lang/String;
    .locals 13

    .prologue
    .line 466
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 467
    .local v7, "pattern":Ljava/lang/String;
    const-string v2, "1970-01-01"

    .line 470
    .local v2, "errorTime":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "http://www.bjtime.cn"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 472
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 474
    .local v8, "uc":Ljava/net/URLConnection;
    const/16 v10, 0x5dc

    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 476
    const/16 v10, 0x5dc

    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 478
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 479
    invoke-virtual {v8}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v3

    .line 480
    .local v3, "ld":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 481
    .local v0, "converDate":Ljava/util/Date;
    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v10}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "netDateTime":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v6, v10, v11

    .line 483
    .local v6, "netYearTime":Ljava/lang/String;
    const-string v10, "1970-01-01"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 485
    const-string v10, "Test"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "errorTime: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->getNetWorkTime()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 498
    .end local v0    # "converDate":Ljava/util/Date;
    .end local v3    # "ld":J
    .end local v5    # "netDateTime":Ljava/lang/String;
    .end local v6    # "netYearTime":Ljava/lang/String;
    .end local v8    # "uc":Ljava/net/URLConnection;
    .end local v9    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 490
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 493
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setNullToTargetUpdateArgs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateTarget:Ljava/lang/Object;

    .line 517
    iput-object v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateSelector:Ljava/lang/String;

    .line 518
    iput-object v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateArgs:[Ljava/lang/Object;

    .line 519
    return-void
.end method

.method private updateUI()V
    .locals 4

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateTarget:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateSelector:Ljava/lang/String;

    iget-object v3, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateArgs:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public isAccessLock()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->accessLock:Z

    return v0
.end method

.method public isUpdateLock()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateLock:Z

    return v0
.end method

.method public killSelf()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setAccessLock(Z)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setUpdateLock(Z)V

    .line 576
    invoke-static {}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->yield()V

    .line 577
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 532
    :try_start_0
    iget-boolean v1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->accessLock:Z

    if-eqz v1, :cond_0

    .line 533
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setAccessLock(Z)V

    .line 534
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->this$0:Lcom/sns/game/database/bean/UserState;

    invoke-direct {p0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->getNetWorkTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserState;->setNetDateTime(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->this$0:Lcom/sns/game/database/bean/UserState;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->modifyGGTag()V

    .line 536
    iget-boolean v1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateLock:Z

    if-eqz v1, :cond_0

    .line 538
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setUpdateLock(Z)V

    .line 539
    invoke-direct {p0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateUI()V

    .line 540
    invoke-direct {p0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->setNullToTargetUpdateArgs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAccessLock(Z)V
    .locals 0
    .param p1, "accessLock"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->accessLock:Z

    .line 441
    return-void
.end method

.method public varargs setTargetUpdateArgs(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "selector"    # Ljava/lang/String;
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateTarget:Ljava/lang/Object;

    .line 523
    iput-object p2, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateSelector:Ljava/lang/String;

    .line 524
    iput-object p3, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateArgs:[Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public setUpdateLock(Z)V
    .locals 0
    .param p1, "updateLock"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->updateLock:Z

    .line 457
    return-void
.end method
