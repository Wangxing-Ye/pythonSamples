.class public Lorg/cocos2d/layers/CCMultiplexLayer;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCMultiplexLayer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private enabledLayer:I

.field private layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/cocos2d/layers/CCMultiplexLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/layers/CCMultiplexLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs constructor <init>([Lorg/cocos2d/layers/CCLayer;)V
    .locals 2
    .param p1, "params"    # [Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    .line 32
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCMultiplexLayer;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 33
    return-void
.end method

.method public static varargs node([Lorg/cocos2d/layers/CCLayer;)Lorg/cocos2d/layers/CCMultiplexLayer;
    .locals 1
    .param p0, "params"    # [Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/layers/CCMultiplexLayer;

    invoke-direct {v0, p0}, Lorg/cocos2d/layers/CCMultiplexLayer;-><init>([Lorg/cocos2d/layers/CCLayer;)V

    return-object v0
.end method


# virtual methods
.method public switchTo(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 39
    sget-boolean v0, Lorg/cocos2d/layers/CCMultiplexLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid index passed to MultiplexLayer.switchTo"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/layers/CCMultiplexLayer;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 42
    iput p1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    .line 43
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCMultiplexLayer;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 44
    return-void
.end method

.method public switchToAndReleaseMe(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 51
    sget-boolean v0, Lorg/cocos2d/layers/CCMultiplexLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid index in MultiplexLayer switchTo message"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/layers/CCMultiplexLayer;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 53
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    iput p1, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->enabledLayer:I

    .line 55
    iget-object v0, p0, Lorg/cocos2d/layers/CCMultiplexLayer;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCMultiplexLayer;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 56
    return-void
.end method
