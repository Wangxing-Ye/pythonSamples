.class Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;
.super Lorg/cocos2d/utils/pool/OneClassPool;
.source "ConcurrentArrayHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cocos2d/utils/pool/OneClassPool",
        "<",
        "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
        "<TK;TV;>.Entry;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;


# direct methods
.method constructor <init>(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;->this$0:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    .line 21
    invoke-direct {p0}, Lorg/cocos2d/utils/pool/OneClassPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allocate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;->allocate()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected allocate()Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;

    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$1;->this$0:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-direct {v0, v1}, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;-><init>(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;)V

    return-object v0
.end method
