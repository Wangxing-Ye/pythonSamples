.class public abstract Lorg/cocos2d/actions/base/CCAction;
.super Ljava/lang/Object;
.source "CCAction.java"

# interfaces
.implements Lorg/cocos2d/types/Copyable;


# static fields
.field public static final kCCActionTagInvalid:I = -0x1


# instance fields
.field private canPause:Z

.field private originalTarget:Lorg/cocos2d/nodes/CCNode;

.field private tag:I

.field public target:Lorg/cocos2d/nodes/CCNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/actions/base/CCAction;->canPause:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/base/CCAction;->originalTarget:Lorg/cocos2d/nodes/CCNode;

    iput-object v0, p0, Lorg/cocos2d/actions/base/CCAction;->target:Lorg/cocos2d/nodes/CCNode;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/actions/base/CCAction;->tag:I

    .line 71
    return-void
.end method

.method public static action()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCAction;->copy()Lorg/cocos2d/actions/base/CCAction;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lorg/cocos2d/actions/base/CCAction;
.end method

.method public getOriginalTarget()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCAction;->originalTarget:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/cocos2d/actions/base/CCAction;->tag:I

    return v0
.end method

.method public getTarget()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCAction;->target:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public isCanPause()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/cocos2d/actions/base/CCAction;->canPause:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public setCanPause(Z)V
    .locals 0
    .param p1, "canPause"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/cocos2d/actions/base/CCAction;->canPause:Z

    .line 60
    return-void
.end method

.method public setOriginalTarget(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "value"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCAction;->originalTarget:Lorg/cocos2d/nodes/CCNode;

    .line 36
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 51
    iput p1, p0, Lorg/cocos2d/actions/base/CCAction;->tag:I

    .line 52
    return-void
.end method

.method public setTarget(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "value"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCAction;->target:Lorg/cocos2d/nodes/CCNode;

    .line 44
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCAction;->target:Lorg/cocos2d/nodes/CCNode;

    iput-object p1, p0, Lorg/cocos2d/actions/base/CCAction;->originalTarget:Lorg/cocos2d/nodes/CCNode;

    .line 79
    return-void
.end method

.method public abstract step(F)V
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public abstract update(F)V
.end method
