.class Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
.super Ljava/lang/Object;
.source "ConcNodeCachingStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/ConcNodeCachingStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile next:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>.Node<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;-><init>()V

    return-void
.end method
