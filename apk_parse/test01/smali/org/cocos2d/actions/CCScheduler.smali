.class public Lorg/cocos2d/actions/CCScheduler;
.super Ljava/lang/Object;
.source "CCScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/actions/CCScheduler$SchedulerTimerAlreadyScheduled;,
        Lorg/cocos2d/actions/CCScheduler$SchedulerTimerNotFound;,
        Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;,
        Lorg/cocos2d/actions/CCScheduler$tListEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _sharedScheduler:Lorg/cocos2d/actions/CCScheduler;


# instance fields
.field currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

.field currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

.field currentTargetSalvaged:Z

.field hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;",
            ">;"
        }
    .end annotation
.end field

.field hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private timeScale_:F

.field updateSelector:Ljava/lang/String;

.field updates0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;"
        }
    .end annotation
.end field

.field updatesNeg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;"
        }
    .end annotation
.end field

.field updatesPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/cocos2d/actions/CCScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/CCScheduler;->timeScale_:F

    .line 118
    const-string v0, "update"

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->updateSelector:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    new-instance v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    .line 136
    return-void
.end method

.method public static purgeSharedScheduler()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    .line 112
    return-void
.end method

.method public static sharedScheduler()Lorg/cocos2d/actions/CCScheduler;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-class v1, Lorg/cocos2d/actions/CCScheduler;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lorg/cocos2d/actions/CCScheduler;

    invoke-direct {v0}, Lorg/cocos2d/actions/CCScheduler;-><init>()V

    sput-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    .line 103
    :cond_1
    sget-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public append(Ljava/util/ArrayList;Ljava/lang/Object;Z)V
    .locals 9
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "paused"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/actions/CCScheduler$tListEntry;>;"
    const/4 v8, 0x0

    .line 666
    new-instance v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    invoke-direct {v2, v8}, Lorg/cocos2d/actions/CCScheduler$tListEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tListEntry;)V

    .line 668
    .local v2, "listElement":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iput-object p2, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    .line 669
    iput-boolean p3, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    .line 670
    instance-of v3, p2, Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 671
    check-cast v3, Lorg/cocos2d/actions/UpdateCallback;

    iput-object v3, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    .line 680
    :goto_0
    monitor-enter p1

    .line 681
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    new-instance v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    invoke-direct {v1, v8}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;)V

    .line 686
    .local v1, "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iput-object p2, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    .line 687
    iput-object p1, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->list:Ljava/util/ArrayList;

    .line 688
    iput-object v2, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 689
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void

    .line 674
    .end local v1    # "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->updateSelector:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->impMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCScheduler;->unscheduleAllSelectors()V

    .line 660
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/actions/CCScheduler;->_sharedScheduler:Lorg/cocos2d/actions/CCScheduler;

    .line 662
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 663
    return-void
.end method

.method public getTimeScale()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/cocos2d/actions/CCScheduler;->timeScale_:F

    return v0
.end method

.method public pause(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 565
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "target must be non nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 568
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 569
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_1

    .line 570
    iput-boolean v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    .line 573
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 574
    .local v1, "elementUpdate":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v1, :cond_3

    .line 575
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "pauseTarget: unknown error"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 576
    :cond_2
    invoke-virtual {v1, v3}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->setPaused(Z)V

    .line 579
    :cond_3
    return-void
.end method

.method public priority(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V
    .locals 13
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "priority"    # I
    .param p4, "paused"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;",
            "Ljava/lang/Object;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/actions/CCScheduler$tListEntry;>;"
    new-instance v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/cocos2d/actions/CCScheduler$tListEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tListEntry;)V

    .line 695
    .local v7, "listElement":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iput-object p2, v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    .line 696
    move/from16 v0, p3

    iput v0, v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;->priority:I

    .line 697
    move/from16 v0, p4

    iput-boolean v0, v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    .line 698
    instance-of v8, p2, Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v8, :cond_1

    move-object v8, p2

    .line 699
    check-cast v8, Lorg/cocos2d/actions/UpdateCallback;

    iput-object v8, v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    .line 708
    :goto_0
    monitor-enter p1

    .line 709
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 710
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_0
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    new-instance v4, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;)V

    .line 731
    .local v4, "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iput-object p2, v4, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    .line 732
    iput-object p1, v4, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->list:Ljava/util/ArrayList;

    .line 733
    iput-object v7, v4, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 734
    iget-object v8, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    return-void

    .line 702
    .end local v4    # "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lorg/cocos2d/actions/CCScheduler;->updateSelector:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, v7, Lorg/cocos2d/actions/CCScheduler$tListEntry;->impMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v2

    .line 704
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 712
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    const/4 v1, 0x0

    .line 714
    .local v1, "added":Z
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 715
    .local v6, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v6, :cond_3

    .line 725
    :goto_3
    if-nez v1, :cond_0

    .line 726
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 708
    .end local v1    # "added":Z
    .end local v5    # "i":I
    .end local v6    # "len":I
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 716
    .restart local v1    # "added":Z
    .restart local v5    # "i":I
    .restart local v6    # "len":I
    :cond_3
    :try_start_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 717
    .local v3, "elem":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iget v8, v3, Lorg/cocos2d/actions/CCScheduler$tListEntry;->priority:I

    move/from16 v0, p3

    if-ge v0, v8, :cond_4

    .line 718
    invoke-virtual {p1, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    const/4 v1, 0x1

    .line 720
    goto :goto_3

    .line 715
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 543
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "target must be non nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 546
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 547
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_1

    .line 548
    iput-boolean v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    .line 551
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 552
    .local v1, "elementUpdate":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v1, :cond_3

    .line 553
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "resumeTarget: unknown error"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 554
    :cond_2
    invoke-virtual {v1, v3}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->setPaused(Z)V

    .line 557
    :cond_3
    return-void
.end method

.method public schedule(Ljava/lang/String;Ljava/lang/Object;FZ)V
    .locals 4
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "interval"    # F
    .param p4, "paused"    # Z

    .prologue
    .line 311
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument selector must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 312
    :cond_0
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument target must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 314
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 316
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-nez v0, :cond_4

    .line 317
    new-instance v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .end local v0    # "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;)V

    .line 318
    .restart local v0    # "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iput-object p2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p2, v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    iput-boolean p4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    .line 327
    :cond_2
    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    .line 332
    :cond_3
    new-instance v1, Lorg/cocos2d/actions/CCTimer;

    invoke-direct {v1, p2, p1, p3}, Lorg/cocos2d/actions/CCTimer;-><init>(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 333
    .local v1, "timer":Lorg/cocos2d/actions/CCTimer;
    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    return-void

    .line 324
    .end local v1    # "timer":Lorg/cocos2d/actions/CCTimer;
    :cond_4
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    if-eq v2, p4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "CCScheduler. Trying to schedule a selector with a pause value different than the target"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public schedule(Lorg/cocos2d/actions/UpdateCallback;Ljava/lang/Object;FZ)V
    .locals 4
    .param p1, "callback"    # Lorg/cocos2d/actions/UpdateCallback;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "interval"    # F
    .param p4, "paused"    # Z

    .prologue
    .line 341
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument callback must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 342
    :cond_0
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument target must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 344
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 346
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-nez v0, :cond_4

    .line 347
    new-instance v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .end local v0    # "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;-><init>(Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;)V

    .line 348
    .restart local v0    # "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iput-object p2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    .line 349
    iget-object v2, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v2, p2, v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    iput-boolean p4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    .line 357
    :cond_2
    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    .line 362
    :cond_3
    new-instance v1, Lorg/cocos2d/actions/CCTimer;

    invoke-direct {v1, p2, p1, p3}, Lorg/cocos2d/actions/CCTimer;-><init>(Ljava/lang/Object;Lorg/cocos2d/actions/UpdateCallback;F)V

    .line 363
    .local v1, "timer":Lorg/cocos2d/actions/CCTimer;
    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    return-void

    .line 354
    .end local v1    # "timer":Lorg/cocos2d/actions/CCTimer;
    :cond_4
    sget-boolean v2, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    if-eq v2, p4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "CCScheduler. Trying to schedule a selector with a pause value different than the target"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public scheduleTimer(Lorg/cocos2d/actions/CCTimer;)V
    .locals 2
    .param p1, "timer"    # Lorg/cocos2d/actions/CCTimer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 634
    sget-boolean v0, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not implemented. Use scheduleSelector:forTarget:"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 635
    :cond_0
    return-void
.end method

.method public scheduleUpdate(Ljava/lang/Object;IZ)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "priority"    # I
    .param p3, "paused"    # Z

    .prologue
    .line 589
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 590
    .local v0, "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    sget-boolean v1, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CCScheduler: You can\'t re-schedule an \'update\' selector\'. Unschedule it first"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 595
    :cond_0
    if-nez p2, :cond_1

    .line 596
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p3}, Lorg/cocos2d/actions/CCScheduler;->append(Ljava/util/ArrayList;Ljava/lang/Object;Z)V

    .line 602
    :goto_0
    return-void

    .line 597
    :cond_1
    if-gez p2, :cond_2

    .line 598
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/cocos2d/actions/CCScheduler;->priority(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/cocos2d/actions/CCScheduler;->priority(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method public scheduleUpdate(Lorg/cocos2d/actions/UpdateCallback;IZ)V
    .locals 3
    .param p1, "target"    # Lorg/cocos2d/actions/UpdateCallback;
    .param p2, "priority"    # I
    .param p3, "paused"    # Z

    .prologue
    .line 612
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 613
    .local v0, "hashElement":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    sget-boolean v1, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CCScheduler: You can\'t re-schedule an \'update\' selector\'. Unschedule it first"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 618
    :cond_0
    if-nez p2, :cond_1

    .line 619
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p3}, Lorg/cocos2d/actions/CCScheduler;->append(Ljava/util/ArrayList;Ljava/lang/Object;Z)V

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_1
    if-gez p2, :cond_2

    .line 621
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/cocos2d/actions/CCScheduler;->priority(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/cocos2d/actions/CCScheduler;->priority(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method public setTimeScale(F)V
    .locals 0
    .param p1, "ts"    # F

    .prologue
    .line 89
    iput p1, p0, Lorg/cocos2d/actions/CCScheduler;->timeScale_:F

    .line 90
    return-void
.end method

.method public tick(F)V
    .locals 14
    .param p1, "dt"    # F

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 154
    iget v6, p0, Lorg/cocos2d/actions/CCScheduler;->timeScale_:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 155
    iget v6, p0, Lorg/cocos2d/actions/CCScheduler;->timeScale_:F

    mul-float/2addr p1, v6

    .line 157
    :cond_0
    iput-boolean v12, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    .line 159
    iget-object v7, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    monitor-enter v7

    .line 160
    :try_start_0
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 161
    .local v5, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 182
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 159
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v7, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    monitor-enter v7

    .line 187
    :try_start_1
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 188
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_4

    .line 210
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 186
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    iget-object v7, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    monitor-enter v7

    .line 215
    :try_start_2
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 216
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v5, :cond_7

    .line 237
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 214
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v6}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->firstValue()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v1

    .line 241
    .local v1, "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Ljava/lang/Object;Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;>.Entry;"
    :goto_3
    if-nez v1, :cond_a

    .line 277
    iput-object v13, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 279
    return-void

    .line 162
    .end local v1    # "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Ljava/lang/Object;Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;>.Entry;"
    :cond_1
    :try_start_3
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 163
    .local v0, "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 164
    iget-boolean v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    if-nez v6, :cond_2

    .line 165
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v6, :cond_3

    .line 166
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    invoke-interface {v6, p1}, Lorg/cocos2d/actions/UpdateCallback;->update(F)V

    .line 174
    :goto_4
    iget-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    if-eqz v6, :cond_2

    .line 175
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    add-int/lit8 v4, v4, -0x1

    .line 177
    add-int/lit8 v5, v5, -0x1

    .line 178
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_3
    :try_start_4
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->impMethod:Ljava/lang/reflect/Method;

    iget-object v8, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v0    # "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "len":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 189
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    :cond_4
    :try_start_6
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 190
    .restart local v0    # "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 191
    iget-boolean v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    if-nez v6, :cond_5

    .line 192
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v6, :cond_6

    .line 193
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    invoke-interface {v6, p1}, Lorg/cocos2d/actions/UpdateCallback;->update(F)V

    .line 202
    :goto_5
    iget-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    if-eqz v6, :cond_5

    .line 203
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    add-int/lit8 v4, v4, -0x1

    .line 205
    add-int/lit8 v5, v5, -0x1

    .line 206
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 196
    :cond_6
    :try_start_7
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->impMethod:Ljava/lang/reflect/Method;

    iget-object v8, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 197
    :catch_1
    move-exception v2

    .line 199
    .restart local v2    # "e1":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 186
    .end local v0    # "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 217
    :cond_7
    :try_start_9
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 218
    .restart local v0    # "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iput-object v0, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 219
    iget-boolean v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    if-nez v6, :cond_8

    .line 220
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    if-eqz v6, :cond_9

    .line 221
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->callback:Lorg/cocos2d/actions/UpdateCallback;

    invoke-interface {v6, p1}, Lorg/cocos2d/actions/UpdateCallback;->update(F)V

    .line 229
    :goto_6
    iget-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    if-eqz v6, :cond_8

    .line 230
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    add-int/lit8 v4, v4, -0x1

    .line 232
    add-int/lit8 v5, v5, -0x1

    .line 233
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 216
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 224
    :cond_9
    :try_start_a
    iget-object v6, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->impMethod:Ljava/lang/reflect/Method;

    iget-object v8, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    .line 225
    :catch_2
    move-exception v2

    .line 226
    .restart local v2    # "e1":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 214
    .end local v0    # "e":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v6

    .line 242
    .restart local v1    # "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Ljava/lang/Object;Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;>.Entry;"
    :cond_a
    invoke-virtual {v1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 244
    .local v3, "elt":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iput-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 245
    iput-boolean v12, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    .line 247
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    iget-boolean v6, v6, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    if-nez v6, :cond_b

    iget-object v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    .line 249
    iput v12, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    :goto_7
    iget v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    iget-object v7, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_d

    .line 271
    :cond_b
    iget-boolean v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    iget-object v6, v6, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 273
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v7, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_c
    iget-object v6, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v6, v1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->nextValue(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;)Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v1

    goto/16 :goto_3

    .line 250
    :cond_d
    iget-object v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    iget v7, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/actions/CCTimer;

    iput-object v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    .line 251
    iput-boolean v12, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    .line 253
    iget-object v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    invoke-virtual {v6, p1}, Lorg/cocos2d/actions/CCTimer;->update(F)V

    .line 255
    iget-boolean v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    if-eqz v6, :cond_e

    .line 259
    iput-object v13, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    .line 262
    :cond_e
    iput-object v13, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    .line 249
    iget v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    goto :goto_7
.end method

.method public unschedule(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 372
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-boolean v3, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Target MUST not be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 376
    :cond_2
    sget-boolean v3, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Selector MUST not be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 378
    :cond_3
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v3, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 379
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_0

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 381
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/actions/CCTimer;

    .line 383
    .local v2, "timer":Lorg/cocos2d/actions/CCTimer;
    invoke-virtual {v2}, Lorg/cocos2d/actions/CCTimer;->getSelector()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    if-ne v2, v3, :cond_4

    iget-boolean v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    if-nez v3, :cond_4

    .line 385
    iput-boolean v4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    .line 388
    :cond_4
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    iget v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    if-lt v3, v1, :cond_5

    .line 392
    iget v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    .line 394
    :cond_5
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    if-ne v3, v0, :cond_6

    .line 396
    iput-boolean v4, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    goto :goto_0

    .line 398
    :cond_6
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public unschedule(Lorg/cocos2d/actions/UpdateCallback;Ljava/lang/Object;)V
    .locals 5
    .param p1, "callback"    # Lorg/cocos2d/actions/UpdateCallback;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 417
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    sget-boolean v3, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Target MUST not be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 421
    :cond_2
    sget-boolean v3, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Selector MUST not be null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 423
    :cond_3
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v3, p2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 424
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_0

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 426
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/actions/CCTimer;

    .line 428
    .local v2, "timer":Lorg/cocos2d/actions/CCTimer;
    invoke-virtual {v2}, Lorg/cocos2d/actions/CCTimer;->getCallback()Lorg/cocos2d/actions/UpdateCallback;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 429
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimer:Lorg/cocos2d/actions/CCTimer;

    if-ne v2, v3, :cond_4

    iget-boolean v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    if-nez v3, :cond_4

    .line 430
    iput-boolean v4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    .line 433
    :cond_4
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 436
    iget v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    if-lt v3, v1, :cond_5

    .line 437
    iget v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timerIndex:I

    .line 439
    :cond_5
    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    if-ne v3, v0, :cond_6

    .line 441
    iput-boolean v4, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    goto :goto_0

    .line 443
    :cond_6
    iget-object v3, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v4, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public unscheduleAllSelectors()V
    .locals 6

    .prologue
    .line 517
    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->firstValue()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v0

    .line 518
    .local v0, "e":Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;, "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap<Ljava/lang/Object;Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;>.Entry;"
    :goto_0
    if-nez v0, :cond_0

    .line 526
    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->updates0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 529
    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->updatesNeg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 532
    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->updatesPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 535
    return-void

    .line 519
    :cond_0
    invoke-virtual {v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 521
    .local v1, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    iget-object v3, v1, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    .line 522
    .local v3, "target":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/cocos2d/actions/CCScheduler;->unscheduleAllSelectors(Ljava/lang/Object;)V

    .line 518
    iget-object v4, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v4, v0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->nextValue(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;)Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v0

    goto :goto_0

    .line 526
    .end local v1    # "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    .end local v3    # "target":Ljava/lang/Object;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 527
    .local v2, "entry":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iget-object v5, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v2    # "entry":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 530
    .restart local v2    # "entry":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iget-object v5, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    goto :goto_2

    .line 532
    .end local v2    # "entry":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;

    .line 533
    .restart local v2    # "entry":Lorg/cocos2d/actions/CCScheduler$tListEntry;
    iget-object v5, v2, Lorg/cocos2d/actions/CCScheduler$tListEntry;->target:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public unscheduleAllSelectors(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 484
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-virtual {v1, p1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 490
    .local v0, "element":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_2

    .line 491
    iget-boolean v1, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    if-nez v1, :cond_1

    .line 493
    iput-boolean v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->currentTimerSalvaged:Z

    .line 495
    :cond_1
    iget-object v1, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->timers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->currentTarget:Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    if-ne v1, v0, :cond_3

    .line 498
    iput-boolean v2, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    .line 507
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForSelectors:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public unscheduleAllTimers()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    sget-boolean v0, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not implemented. Use unscheduleAllSelectors"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 655
    :cond_0
    return-void
.end method

.method public unscheduleTimer(Lorg/cocos2d/actions/CCTimer;)V
    .locals 2
    .param p1, "timer"    # Lorg/cocos2d/actions/CCTimer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    sget-boolean v0, Lorg/cocos2d/actions/CCScheduler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not implemented. Use unscheduleSelector:forTarget:"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 644
    :cond_0
    return-void
.end method

.method public unscheduleUpdate(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 460
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;

    .line 463
    .local v0, "entry":Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 467
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->currentEntry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    if-ne v1, v3, :cond_2

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/actions/CCScheduler;->currentTargetSalvaged:Z

    .line 466
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object v1, p0, Lorg/cocos2d/actions/CCScheduler;->hashForUpdates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_2
    :try_start_1
    iget-object v1, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->list:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
