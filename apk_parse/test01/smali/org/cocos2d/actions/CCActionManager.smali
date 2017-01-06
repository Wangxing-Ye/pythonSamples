.class public Lorg/cocos2d/actions/CCActionManager;
.super Ljava/lang/Object;
.source "CCActionManager.java"

# interfaces
.implements Lorg/cocos2d/actions/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/actions/CCActionManager$HashElement;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static _sharedManager:Lorg/cocos2d/actions/CCActionManager;


# instance fields
.field private pool:Lorg/cocos2d/utils/pool/ConcOneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/ConcOneClassPool",
            "<",
            "Lorg/cocos2d/actions/CCActionManager$HashElement;",
            ">;"
        }
    .end annotation
.end field

.field private final targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            "Lorg/cocos2d/actions/CCActionManager$HashElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/cocos2d/actions/CCActionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    .line 24
    const-class v0, Lorg/cocos2d/actions/CCActionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/actions/CCActionManager;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lorg/cocos2d/actions/CCActionManager;

    invoke-direct {v0}, Lorg/cocos2d/actions/CCActionManager;-><init>()V

    sput-object v0, Lorg/cocos2d/actions/CCActionManager;->_sharedManager:Lorg/cocos2d/actions/CCActionManager;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/cocos2d/actions/CCActionManager$1;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/CCActionManager$1;-><init>(Lorg/cocos2d/actions/CCActionManager;)V

    iput-object v0, p0, Lorg/cocos2d/actions/CCActionManager;->pool:Lorg/cocos2d/utils/pool/ConcOneClassPool;

    .line 74
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lorg/cocos2d/actions/CCScheduler;->scheduleUpdate(Lorg/cocos2d/actions/UpdateCallback;IZ)V

    .line 75
    new-instance v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    .line 76
    return-void
.end method

.method private deleteHashElement(Lorg/cocos2d/actions/CCActionManager$HashElement;)V
    .locals 3
    .param p1, "element"    # Lorg/cocos2d/actions/CCActionManager$HashElement;

    .prologue
    .line 89
    iget-object v2, p1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v1, -0x1

    iput v1, p1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 94
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v2, p1, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1, v2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 96
    .local v0, "removedEl":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    .line 98
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->pool:Lorg/cocos2d/utils/pool/ConcOneClassPool;

    invoke-virtual {v1, v0}, Lorg/cocos2d/utils/pool/ConcOneClassPool;->free(Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void

    .line 89
    .end local v0    # "removedEl":Lorg/cocos2d/actions/CCActionManager$HashElement;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onPauseUpdate(FLorg/cocos2d/actions/CCActionManager$HashElement;)V
    .locals 5
    .param p1, "dt"    # F
    .param p2, "currentTarget"    # Lorg/cocos2d/actions/CCActionManager$HashElement;

    .prologue
    .line 348
    iget-object v3, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 350
    const/4 v2, 0x0

    :try_start_0
    iput v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 351
    :goto_0
    iget v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    iget-object v4, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 370
    const/4 v2, -0x1

    iput v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 348
    monitor-exit v3

    .line 372
    return-void

    .line 354
    :cond_0
    iget-object v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    iget v4, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/base/CCAction;

    .line 355
    .local v0, "currentAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->isCanPause()Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/base/CCAction;->step(F)V

    .line 357
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->stop()V

    .line 361
    iget-object v2, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v4, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2, v4}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 362
    .local v1, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v1, :cond_1

    iget v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    if-ltz v2, :cond_1

    .line 363
    iget v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    invoke-direct {p0, v2, p2}, Lorg/cocos2d/actions/CCActionManager;->removeAction(ILorg/cocos2d/actions/CCActionManager$HashElement;)V

    .line 352
    .end local v1    # "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    :cond_1
    iget v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    goto :goto_0

    .line 348
    .end local v0    # "currentAction":Lorg/cocos2d/actions/base/CCAction;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static purgeSharedManager()V
    .locals 2

    .prologue
    .line 378
    sget-object v0, Lorg/cocos2d/actions/CCActionManager;->_sharedManager:Lorg/cocos2d/actions/CCActionManager;

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/actions/CCActionManager;->_sharedManager:Lorg/cocos2d/actions/CCActionManager;

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    .line 380
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/actions/CCActionManager;->_sharedManager:Lorg/cocos2d/actions/CCActionManager;

    .line 382
    :cond_0
    return-void
.end method

.method private removeAction(ILorg/cocos2d/actions/CCActionManager$HashElement;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/cocos2d/actions/CCActionManager$HashElement;

    .prologue
    .line 103
    iget-object v1, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    iget v0, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    if-lt v0, p1, :cond_0

    .line 107
    iget v0, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 109
    :cond_0
    iget-object v0, p2, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, p2}, Lorg/cocos2d/actions/CCActionManager;->deleteHashElement(Lorg/cocos2d/actions/CCActionManager$HashElement;)V

    .line 103
    :cond_1
    monitor-exit v1

    .line 114
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sharedManager()Lorg/cocos2d/actions/CCActionManager;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/cocos2d/actions/CCActionManager;->_sharedManager:Lorg/cocos2d/actions/CCActionManager;

    return-object v0
.end method


# virtual methods
.method public addAction(Lorg/cocos2d/actions/base/CCAction;Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 4
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCAction;
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "paused"    # Z

    .prologue
    .line 144
    sget-boolean v1, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Argument action must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 145
    :cond_0
    sget-boolean v1, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Argument target must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 147
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 148
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-nez v0, :cond_2

    .line 149
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->pool:Lorg/cocos2d/utils/pool/ConcOneClassPool;

    invoke-virtual {v1}, Lorg/cocos2d/utils/pool/ConcOneClassPool;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 151
    .restart local v0    # "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    iput-object p2, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    .line 152
    iput-boolean p3, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->paused:Z

    .line 154
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_2
    iget-object v2, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 159
    :try_start_0
    sget-boolean v1, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "runAction: Action already running"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    :cond_3
    :try_start_1
    iget-object v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {p1, p2}, Lorg/cocos2d/actions/base/CCAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 166
    return-void
.end method

.method public getAction(ILorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/base/CCAction;
    .locals 6
    .param p1, "tag"    # I
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 256
    sget-boolean v4, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Invalid tag"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 258
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 259
    .local v1, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v1, :cond_1

    .line 260
    iget-object v5, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 261
    :try_start_0
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 262
    .local v3, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 260
    monitor-exit v5

    .line 272
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 263
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_2
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/base/CCAction;

    .line 264
    .local v0, "a":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->getTag()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 265
    monitor-exit v5

    goto :goto_1

    .line 260
    .end local v0    # "a":Lorg/cocos2d/actions/base/CCAction;
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 262
    .restart local v0    # "a":Lorg/cocos2d/actions/base/CCAction;
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public numberOfRunningActions(Lorg/cocos2d/nodes/CCNode;)I
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 282
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 283
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_0

    .line 284
    iget-object v2, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 285
    :try_start_0
    iget-object v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v2

    .line 289
    :goto_0
    return v1

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 289
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 342
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 343
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->paused:Z

    .line 345
    :cond_0
    return-void
.end method

.method public pauseAllActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/CCActionManager;->pause(Lorg/cocos2d/nodes/CCNode;)V

    .line 126
    return-void
.end method

.method public removeAction(ILorg/cocos2d/nodes/CCNode;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 233
    sget-boolean v4, Lorg/cocos2d/actions/CCActionManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Invalid tag"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 235
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 236
    .local v1, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v1, :cond_1

    .line 237
    iget-object v5, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 238
    :try_start_0
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 239
    .local v3, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 237
    monitor-exit v5

    .line 248
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :cond_1
    return-void

    .line 240
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_2
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/base/CCAction;

    .line 241
    .local v0, "a":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->getTag()I

    move-result v4

    if-ne v4, p1, :cond_3

    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->getOriginalTarget()Lorg/cocos2d/nodes/CCNode;

    move-result-object v4

    if-ne v4, p2, :cond_3

    .line 242
    invoke-direct {p0, v2, v1}, Lorg/cocos2d/actions/CCActionManager;->removeAction(ILorg/cocos2d/actions/CCActionManager$HashElement;)V

    .line 239
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "a":Lorg/cocos2d/actions/base/CCAction;
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeAction(Lorg/cocos2d/actions/base/CCAction;)V
    .locals 4
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {p1}, Lorg/cocos2d/actions/base/CCAction;->getOriginalTarget()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 215
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_2

    .line 217
    iget-object v3, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v2, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 220
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 221
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/actions/CCActionManager;->removeAction(ILorg/cocos2d/actions/CCActionManager$HashElement;)V

    .line 217
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 225
    :cond_2
    sget-object v2, Lorg/cocos2d/actions/CCActionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "removeAction: target not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllActions()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->firstValue()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v0

    .line 174
    .local v0, "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/actions/CCActionManager$HashElement;>.Entry;"
    :goto_0
    if-nez v0, :cond_0

    .line 180
    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 177
    .local v1, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v1, :cond_1

    .line 178
    iget-object v2, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v2}, Lorg/cocos2d/actions/CCActionManager;->removeAllActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 174
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->nextValue(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;)Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public removeAllActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 192
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lorg/cocos2d/actions/CCActionManager;->deleteHashElement(Lorg/cocos2d/actions/CCActionManager$HashElement;)V

    goto :goto_0
.end method

.method public resume(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 336
    iget-object v1, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 337
    .local v0, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v0, :cond_0

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/cocos2d/actions/CCActionManager$HashElement;->paused:Z

    .line 339
    :cond_0
    return-void
.end method

.method public resumeAllActions(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/CCActionManager;->resume(Lorg/cocos2d/nodes/CCNode;)V

    .line 136
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "dt"    # F

    .prologue
    .line 295
    iget-object v4, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->firstValue()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v2

    .line 296
    .local v2, "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/actions/CCActionManager$HashElement;>.Entry;"
    :goto_0
    if-nez v2, :cond_0

    .line 333
    return-void

    .line 297
    :cond_0
    invoke-virtual {v2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 298
    .local v1, "currentTarget":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-nez v1, :cond_2

    .line 296
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4, v2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->nextValue(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;)Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v2

    goto :goto_0

    .line 301
    :cond_2
    iget-boolean v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->paused:Z

    if-nez v4, :cond_3

    .line 302
    iget-object v5, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 304
    const/4 v4, 0x0

    :try_start_0
    iput v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 305
    :goto_2
    iget v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    iget-object v6, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_4

    .line 323
    const/4 v4, -0x1

    iput v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 302
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_3
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    invoke-direct {p0, v1}, Lorg/cocos2d/actions/CCActionManager;->deleteHashElement(Lorg/cocos2d/actions/CCActionManager$HashElement;)V

    goto :goto_1

    .line 308
    :cond_4
    :try_start_1
    iget-object v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    iget v6, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/base/CCAction;

    .line 310
    .local v0, "currentAction":Lorg/cocos2d/actions/base/CCAction;
    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/base/CCAction;->step(F)V

    .line 311
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->isDone()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    invoke-virtual {v0}, Lorg/cocos2d/actions/base/CCAction;->stop()V

    .line 315
    iget-object v4, p0, Lorg/cocos2d/actions/CCActionManager;->targets:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v6, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v4, v6}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/actions/CCActionManager$HashElement;

    .line 316
    .local v3, "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    if-eqz v3, :cond_5

    iget v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    if-ltz v4, :cond_5

    .line 317
    iget v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    invoke-direct {p0, v4, v1}, Lorg/cocos2d/actions/CCActionManager;->removeAction(ILorg/cocos2d/actions/CCActionManager$HashElement;)V

    .line 306
    .end local v3    # "element":Lorg/cocos2d/actions/CCActionManager$HashElement;
    :cond_5
    iget v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    goto :goto_2

    .line 302
    .end local v0    # "currentAction":Lorg/cocos2d/actions/base/CCAction;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
