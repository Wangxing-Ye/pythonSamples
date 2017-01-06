.class public Lorg/cocos2d/actions/interval/CCFadeTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCFadeTo.java"


# instance fields
.field fromOpacity:I

.field toOpacity:I


# direct methods
.method protected constructor <init>(FI)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "a"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 22
    iput p2, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->toOpacity:I

    .line 23
    return-void
.end method

.method public static action(FI)Lorg/cocos2d/actions/interval/CCFadeTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "a"    # I

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/interval/CCFadeTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCFadeTo;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCFadeTo;->copy()Lorg/cocos2d/actions/interval/CCFadeTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCFadeTo;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lorg/cocos2d/actions/interval/CCFadeTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->toOpacity:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCFadeTo;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCFadeTo;->copy()Lorg/cocos2d/actions/interval/CCFadeTo;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 33
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    invoke-interface {v0}, Lorg/cocos2d/protocols/CCRGBAProtocol;->getOpacity()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->fromOpacity:I

    .line 34
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/protocols/CCRGBAProtocol;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->fromOpacity:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->toOpacity:I

    iget v3, p0, Lorg/cocos2d/actions/interval/CCFadeTo;->fromOpacity:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 39
    return-void
.end method
