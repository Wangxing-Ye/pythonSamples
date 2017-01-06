.class public Lorg/cocos2d/events/CCKeyDispatcher;
.super Ljava/lang/Object;
.source "CCKeyDispatcher.java"


# static fields
.field private static _sharedDispatcher:Lorg/cocos2d/events/CCKeyDispatcher; = null

.field public static final kEventHandled:Z = true

.field public static final kEventIgnored:Z


# instance fields
.field private dispatchEvents:Z

.field private final eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private keyHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/events/CCKeyHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/events/CCKeyDispatcher;

    invoke-direct {v0}, Lorg/cocos2d/events/CCKeyDispatcher;-><init>()V

    sput-object v0, Lorg/cocos2d/events/CCKeyDispatcher;->_sharedDispatcher:Lorg/cocos2d/events/CCKeyDispatcher;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCKeyDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/events/CCKeyDispatcher;->dispatchEvents:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method private addHandler(Lorg/cocos2d/events/CCKeyHandler;)V
    .locals 6
    .param p1, "handler"    # Lorg/cocos2d/events/CCKeyHandler;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "i":I
    iget-object v4, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 40
    const/4 v2, 0x0

    .local v2, "ind":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 47
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    monitor-exit v4

    .line 49
    :goto_1
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCKeyHandler;

    .line 42
    .local v0, "h":Lorg/cocos2d/events/CCKeyHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyHandler;->getPriority()I

    move-result v3

    invoke-virtual {p1}, Lorg/cocos2d/events/CCKeyHandler;->getPriority()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    :cond_1
    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyHandler;->getDelegate()Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    move-result-object v3

    invoke-virtual {p1}, Lorg/cocos2d/events/CCKeyHandler;->getDelegate()Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 45
    monitor-exit v4

    goto :goto_1

    .line 39
    .end local v0    # "h":Lorg/cocos2d/events/CCKeyHandler;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 40
    .restart local v0    # "h":Lorg/cocos2d/events/CCKeyHandler;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/cocos2d/events/CCKeyDispatcher;->_sharedDispatcher:Lorg/cocos2d/events/CCKeyDispatcher;

    return-object v0
.end method


# virtual methods
.method public addDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V
    .locals 1
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCKeyDelegateProtocol;
    .param p2, "prio"    # I

    .prologue
    .line 52
    new-instance v0, Lorg/cocos2d/events/CCKeyHandler;

    invoke-direct {v0, p1, p2}, Lorg/cocos2d/events/CCKeyHandler;-><init>(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V

    invoke-direct {p0, v0}, Lorg/cocos2d/events/CCKeyDispatcher;->addHandler(Lorg/cocos2d/events/CCKeyHandler;)V

    .line 53
    return-void
.end method

.method public getDispatchEvents()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/cocos2d/events/CCKeyDispatcher;->dispatchEvents:Z

    return v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 97
    iget-boolean v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_1

    .line 99
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 100
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 99
    :cond_0
    monitor-exit v3

    .line 107
    .end local v1    # "ind":I
    :cond_1
    return-void

    .line 101
    .restart local v1    # "ind":I
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCKeyHandler;

    .line 102
    .local v0, "handler":Lorg/cocos2d/events/CCKeyHandler;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/cocos2d/events/CCKeyHandler;->ccKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "handler":Lorg/cocos2d/events/CCKeyHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    iget-boolean v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_1

    .line 111
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 112
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 111
    :cond_0
    monitor-exit v3

    .line 119
    .end local v1    # "ind":I
    :cond_1
    return-void

    .line 113
    .restart local v1    # "ind":I
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCKeyHandler;

    .line 114
    .local v0, "handler":Lorg/cocos2d/events/CCKeyHandler;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/cocos2d/events/CCKeyHandler;->ccKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "handler":Lorg/cocos2d/events/CCKeyHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public queueMotionEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 77
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 79
    .local v0, "eventForQueue":Landroid/view/KeyEvent;
    iget-object v1, p0, Lorg/cocos2d/events/CCKeyDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-virtual {v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->push(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public removeAllDelegates()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    return-void
.end method

.method public removeDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;)V
    .locals 4
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 59
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 58
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 60
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCKeyHandler;

    .line 61
    .local v0, "handler":Lorg/cocos2d/events/CCKeyHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyHandler;->getDelegate()Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 62
    iget-object v2, p0, Lorg/cocos2d/events/CCKeyDispatcher;->keyHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setDispatchEvents(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/cocos2d/events/CCKeyDispatcher;->dispatchEvents:Z

    .line 23
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 84
    :goto_0
    iget-object v1, p0, Lorg/cocos2d/events/CCKeyDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-virtual {v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, "event":Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 94
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/events/CCKeyDispatcher;->onKeyDown(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/cocos2d/events/CCKeyDispatcher;->onKeyUp(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
