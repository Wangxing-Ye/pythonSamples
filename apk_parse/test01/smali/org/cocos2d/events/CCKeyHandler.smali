.class public Lorg/cocos2d/events/CCKeyHandler;
.super Ljava/lang/Object;
.source "CCKeyHandler.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCKeyDelegateProtocol;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

.field enabledSelectors_:Z

.field private priority_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lorg/cocos2d/events/CCKeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/events/CCKeyHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V
    .locals 2
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCKeyDelegateProtocol;
    .param p2, "priority"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-boolean v0, Lorg/cocos2d/events/CCKeyHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Key delegate may not be nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/events/CCKeyHandler;->enabledSelectors_:Z

    .line 41
    iput p2, p0, Lorg/cocos2d/events/CCKeyHandler;->priority_:I

    .line 42
    return-void
.end method

.method public static makeHandler(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)Lorg/cocos2d/events/CCKeyHandler;
    .locals 1
    .param p0, "delegate"    # Lorg/cocos2d/protocols/CCKeyDelegateProtocol;
    .param p1, "priority"    # I

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/events/CCKeyHandler;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/events/CCKeyHandler;-><init>(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V

    return-object v0
.end method


# virtual methods
.method public ccKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    invoke-interface {v0, p1, p2}, Lorg/cocos2d/protocols/CCKeyDelegateProtocol;->ccKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ccKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    invoke-interface {v0, p1, p2}, Lorg/cocos2d/protocols/CCKeyDelegateProtocol;->ccKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelegate()Lorg/cocos2d/protocols/CCKeyDelegateProtocol;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/cocos2d/events/CCKeyHandler;->delegate_:Lorg/cocos2d/protocols/CCKeyDelegateProtocol;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/cocos2d/events/CCKeyHandler;->priority_:I

    return v0
.end method

.method public getSelectorFlag()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/cocos2d/events/CCKeyHandler;->enabledSelectors_:Z

    return v0
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "prio"    # I

    .prologue
    .line 30
    iput p1, p0, Lorg/cocos2d/events/CCKeyHandler;->priority_:I

    .line 31
    return-void
.end method

.method public setSelectorFlag(Z)V
    .locals 0
    .param p1, "sf"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/cocos2d/events/CCKeyHandler;->enabledSelectors_:Z

    .line 19
    return-void
.end method
