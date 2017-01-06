.class Lorg/cocos2d/types/util/PoolHolder$4;
.super Lorg/cocos2d/utils/pool/OneClassPool;
.source "PoolHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/types/util/PoolHolder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cocos2d/utils/pool/OneClassPool",
        "<",
        "Lorg/cocos2d/types/ccQuad3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/types/util/PoolHolder;


# direct methods
.method constructor <init>(Lorg/cocos2d/types/util/PoolHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/types/util/PoolHolder$4;->this$0:Lorg/cocos2d/types/util/PoolHolder;

    .line 60
    invoke-direct {p0}, Lorg/cocos2d/utils/pool/OneClassPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allocate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/types/util/PoolHolder$4;->allocate()Lorg/cocos2d/types/ccQuad3;

    move-result-object v0

    return-object v0
.end method

.method protected allocate()Lorg/cocos2d/types/ccQuad3;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v0}, Lorg/cocos2d/types/ccQuad3;-><init>()V

    return-object v0
.end method
