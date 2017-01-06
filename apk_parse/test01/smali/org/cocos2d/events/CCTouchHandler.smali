.class public Lorg/cocos2d/events/CCTouchHandler;
.super Ljava/lang/Object;
.source "CCTouchHandler.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCTouchDelegateProtocol;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

.field enabledSelectors_:I

.field private priority_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/cocos2d/events/CCTouchHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/events/CCTouchHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V
    .locals 2
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .param p2, "priority"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lorg/cocos2d/events/CCTouchHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Touch delegate may not be nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    .line 56
    iput p2, p0, Lorg/cocos2d/events/CCTouchHandler;->priority_:I

    .line 57
    sget-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorNoneBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->getFlag()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/events/CCTouchHandler;->enabledSelectors_:I

    .line 58
    return-void
.end method

.method public static makeHandler(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)Lorg/cocos2d/events/CCTouchHandler;
    .locals 1
    .param p0, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .param p1, "priority"    # I

    .prologue
    .line 49
    new-instance v0, Lorg/cocos2d/events/CCTouchHandler;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/events/CCTouchHandler;-><init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V

    return-object v0
.end method


# virtual methods
.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCTouchDelegateProtocol;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesCancelled(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCTouchDelegateProtocol;->ccTouchesCancelled(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCTouchDelegateProtocol;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    invoke-interface {v0, p1}, Lorg/cocos2d/protocols/CCTouchDelegateProtocol;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchHandler;->delegate_:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/cocos2d/events/CCTouchHandler;->priority_:I

    return v0
.end method

.method public getSelectorFlag()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/cocos2d/events/CCTouchHandler;->enabledSelectors_:I

    return v0
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "prio"    # I

    .prologue
    .line 36
    iput p1, p0, Lorg/cocos2d/events/CCTouchHandler;->priority_:I

    .line 37
    return-void
.end method

.method public setSelectorFlag(I)V
    .locals 0
    .param p1, "sf"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/cocos2d/events/CCTouchHandler;->enabledSelectors_:I

    .line 41
    return-void
.end method
