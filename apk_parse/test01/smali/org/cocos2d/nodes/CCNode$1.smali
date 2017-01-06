.class Lorg/cocos2d/nodes/CCNode$1;
.super Ljava/lang/Object;
.source "CCNode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/cocos2d/nodes/CCNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/cocos2d/nodes/CCNode;

    check-cast p2, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode$1;->compare(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;)I
    .locals 2
    .param p1, "o1"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "o2"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 1516
    # getter for: Lorg/cocos2d/nodes/CCNode;->zOrder_:I
    invoke-static {p1}, Lorg/cocos2d/nodes/CCNode;->access$0(Lorg/cocos2d/nodes/CCNode;)I

    move-result v0

    # getter for: Lorg/cocos2d/nodes/CCNode;->zOrder_:I
    invoke-static {p2}, Lorg/cocos2d/nodes/CCNode;->access$0(Lorg/cocos2d/nodes/CCNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
