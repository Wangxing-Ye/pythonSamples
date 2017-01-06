.class public Lorg/cocos2d/events/CCTargetedTouchHandler;
.super Lorg/cocos2d/events/CCTouchHandler;
.source "CCTargetedTouchHandler.java"


# instance fields
.field private claimedSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field swallowsTouches:Z


# direct methods
.method public constructor <init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;IZ)V
    .locals 1
    .param p1, "delegate"    # Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
    .param p2, "priority"    # I
    .param p3, "swallow"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/events/CCTouchHandler;-><init>(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V

    .line 15
    iput-boolean p3, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->swallowsTouches:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method addClaimed(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

.method hasClaimed(I)Z
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeClaimed(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 26
    iget-object v1, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 27
    .local v0, "ind":I
    iget-object v1, p0, Lorg/cocos2d/events/CCTargetedTouchHandler;->claimedSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    return-void
.end method
