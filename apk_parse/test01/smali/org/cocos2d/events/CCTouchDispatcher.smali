.class public Lorg/cocos2d/events/CCTouchDispatcher;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/events/CCTouchDispatcher$ccTouchHandlerHelperData;,
        Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;
    }
.end annotation


# static fields
.field private static _sharedDispatcher:Lorg/cocos2d/events/CCTouchDispatcher; = null

.field public static final ccTouchBegan:I = 0x0

.field public static final ccTouchCancelled:I = 0x3

.field public static final ccTouchEnded:I = 0x2

.field public static final ccTouchMax:I = 0x4

.field public static final ccTouchMoved:I = 0x1

.field public static final kEventHandled:Z = true

.field public static final kEventIgnored:Z


# instance fields
.field private dispatchEvents:Z

.field private final eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private motionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/protocols/CCMotionEventProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private targetedHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/events/CCTargetedTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private touchHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/events/CCTouchHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher;

    invoke-direct {v0}, Lorg/cocos2d/events/CCTouchDispatcher;-><init>()V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher;->_sharedDispatcher:Lorg/cocos2d/events/CCTouchDispatcher;

    .line 35
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/events/CCTouchDispatcher;->addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V

    return-void
.end method

.method private addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "handler"    # Lorg/cocos2d/events/CCTouchHandler;
    .param p2, "array"    # Ljava/util/ArrayList;

    .prologue
    .line 130
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/events/CCTouchDispatcher$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2d/events/CCTouchDispatcher$1;-><init>(Lorg/cocos2d/events/CCTouchDispatcher;Ljava/util/ArrayList;Lorg/cocos2d/events/CCTouchHandler;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 145
    return-void
.end method

.method private proccessTouches(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 415
    monitor-exit v2

    .line 420
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/protocols/CCMotionEventProtocol;

    invoke-interface {v1, p1}, Lorg/cocos2d/protocols/CCMotionEventProtocol;->onTouch(Landroid/view/MotionEvent;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/cocos2d/events/CCTouchDispatcher;->_sharedDispatcher:Lorg/cocos2d/events/CCTouchDispatcher;

    return-object v0
.end method

.method private touchesBegan(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    iget-boolean v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_0

    .line 371
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 378
    .end local v1    # "ind":I
    :cond_0
    return-void

    .line 372
    .restart local v1    # "ind":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 373
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCTouchHandler;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private touchesCancelled(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 403
    iget-boolean v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_0

    .line 404
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 411
    .end local v1    # "ind":I
    :cond_0
    return-void

    .line 405
    .restart local v1    # "ind":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 406
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCTouchHandler;->ccTouchesCancelled(Landroid/view/MotionEvent;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private touchesEnded(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget-boolean v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_0

    .line 393
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 400
    .end local v1    # "ind":I
    :cond_0
    return-void

    .line 394
    .restart local v1    # "ind":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 395
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCTouchHandler;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private touchesMoved(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    iget-boolean v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v2, :cond_0

    .line 382
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 389
    .end local v1    # "ind":I
    :cond_0
    return-void

    .line 383
    .restart local v1    # "ind":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 384
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCTouchHandler;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V
    .locals 2
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .param p2, "prio"    # I

    .prologue
    .line 148
    new-instance v0, Lorg/cocos2d/events/CCTouchHandler;

    invoke-direct {v0, p1, p2}, Lorg/cocos2d/events/CCTouchHandler;-><init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V

    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V

    .line 149
    return-void
.end method

.method public addMotionListener(Lorg/cocos2d/protocols/CCMotionEventProtocol;)V
    .locals 2
    .param p1, "listener"    # Lorg/cocos2d/protocols/CCMotionEventProtocol;

    .prologue
    .line 198
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    monitor-exit v1

    .line 202
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTargetedDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V
    .locals 2
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .param p2, "prio"    # I
    .param p3, "swallowsTouches"    # Z

    .prologue
    .line 152
    new-instance v0, Lorg/cocos2d/events/CCTargetedTouchHandler;

    invoke-direct {v0, p1, p2, p3}, Lorg/cocos2d/events/CCTargetedTouchHandler;-><init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V

    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V

    .line 153
    return-void
.end method

.method public getDispatchEvents()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    return v0
.end method

.method public queueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    iget-boolean v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v1, :cond_0

    .line 272
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 274
    .local v0, "eventForQueue":Landroid/view/MotionEvent;
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-virtual {v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->push(Ljava/lang/Object;)V

    .line 276
    .end local v0    # "eventForQueue":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public removeAllDelegates()V
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/events/CCTouchDispatcher$3;

    invoke-direct {v1, p0}, Lorg/cocos2d/events/CCTouchDispatcher$3;-><init>(Lorg/cocos2d/events/CCTouchDispatcher;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 194
    return-void
.end method

.method public removeAllMotionListeners()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    monitor-exit v1

    .line 218
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V
    .locals 2
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/events/CCTouchDispatcher$2;

    invoke-direct {v1, p0, p1}, Lorg/cocos2d/events/CCTouchDispatcher$2;-><init>(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    goto :goto_0
.end method

.method public removeMotionListener(Lorg/cocos2d/protocols/CCMotionEventProtocol;)V
    .locals 2
    .param p1, "listener"    # Lorg/cocos2d/protocols/CCMotionEventProtocol;

    .prologue
    .line 206
    iget-object v1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher;->motionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1

    .line 210
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDispatchEvents(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    .line 99
    return-void
.end method

.method public setPriority(ILorg/cocos2d/events/CCTouchHandler;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "delegate"    # Lorg/cocos2d/events/CCTouchHandler;

    .prologue
    .line 224
    if-nez p2, :cond_0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Got null touch delegate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/events/CCTouchDispatcher$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2d/events/CCTouchDispatcher$4;-><init>(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/events/CCTouchHandler;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 265
    return-void
.end method

.method public update()V
    .locals 10

    .prologue
    .line 281
    :goto_0
    iget-object v8, p0, Lorg/cocos2d/events/CCTouchDispatcher;->eventQueue:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    invoke-virtual {v8}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    .local v3, "event":Landroid/view/MotionEvent;
    if-nez v3, :cond_0

    .line 364
    return-void

    .line 283
    :cond_0
    iget-boolean v8, p0, Lorg/cocos2d/events/CCTouchDispatcher;->dispatchEvents:Z

    if-eqz v8, :cond_2

    .line 285
    invoke-direct {p0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->proccessTouches(Landroid/view/MotionEvent;)V

    .line 287
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 289
    .local v1, "actionCode":I
    shr-int/lit8 v6, v0, 0x8

    .line 291
    .local v6, "pid":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x5

    if-lt v8, v9, :cond_1

    .line 292
    invoke-static {v3, v6}, Lorg/cocos2d/utils/Util5;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 295
    :cond_1
    const/4 v7, 0x0

    .line 297
    .local v7, "swallowed":Z
    const/4 v5, 0x0

    .local v5, "ind":I
    :goto_1
    iget-object v8, p0, Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 340
    :goto_2
    if-nez v7, :cond_2

    .line 342
    packed-switch v1, :pswitch_data_0

    .line 362
    .end local v0    # "action":I
    .end local v1    # "actionCode":I
    .end local v5    # "ind":I
    .end local v6    # "pid":I
    .end local v7    # "swallowed":Z
    :cond_2
    :goto_3
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 298
    .restart local v0    # "action":I
    .restart local v1    # "actionCode":I
    .restart local v5    # "ind":I
    .restart local v6    # "pid":I
    .restart local v7    # "swallowed":Z
    :cond_3
    iget-object v8, p0, Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/events/CCTargetedTouchHandler;

    .line 300
    .local v4, "handler":Lorg/cocos2d/events/CCTargetedTouchHandler;
    const/4 v2, 0x0

    .line 302
    .local v2, "claimed":Z
    packed-switch v1, :pswitch_data_1

    .line 334
    :cond_4
    :goto_4
    :pswitch_1
    if-eqz v2, :cond_5

    iget-boolean v8, v4, Lorg/cocos2d/events/CCTargetedTouchHandler;->swallowsTouches:Z

    if-eqz v8, :cond_5

    .line 335
    const/4 v7, 0x1

    .line 336
    goto :goto_2

    .line 305
    :pswitch_2
    invoke-virtual {v4, v3}, Lorg/cocos2d/events/CCTargetedTouchHandler;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 306
    if-eqz v2, :cond_4

    .line 307
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->addClaimed(I)V

    goto :goto_4

    .line 311
    :pswitch_3
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->hasClaimed(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 312
    const/4 v2, 0x1

    .line 313
    invoke-virtual {v4, v3}, Lorg/cocos2d/events/CCTargetedTouchHandler;->ccTouchesCancelled(Landroid/view/MotionEvent;)Z

    .line 314
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->removeClaimed(I)V

    goto :goto_4

    .line 318
    :pswitch_4
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->hasClaimed(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 319
    const/4 v2, 0x1

    .line 320
    invoke-virtual {v4, v3}, Lorg/cocos2d/events/CCTargetedTouchHandler;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 325
    :pswitch_5
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->hasClaimed(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 326
    const/4 v2, 0x1

    .line 327
    invoke-virtual {v4, v3}, Lorg/cocos2d/events/CCTargetedTouchHandler;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    .line 328
    invoke-virtual {v4, v6}, Lorg/cocos2d/events/CCTargetedTouchHandler;->removeClaimed(I)V

    goto :goto_4

    .line 297
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 345
    .end local v2    # "claimed":Z
    .end local v4    # "handler":Lorg/cocos2d/events/CCTargetedTouchHandler;
    :pswitch_6
    invoke-direct {p0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->touchesBegan(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 348
    :pswitch_7
    invoke-direct {p0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->touchesCancelled(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 351
    :pswitch_8
    invoke-direct {p0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->touchesMoved(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 355
    :pswitch_9
    invoke-direct {p0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->touchesEnded(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
