.class public final Lorg/cocos2d/types/util/PoolHolder;
.super Ljava/lang/Object;
.source "PoolHolder.java"


# static fields
.field private static instance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/cocos2d/types/util/PoolHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private affineTransformPool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGAffineTransform;",
            ">;"
        }
    .end annotation
.end field

.field private ccQuad2Pool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/ccQuad2;",
            ">;"
        }
    .end annotation
.end field

.field private ccQuad3Pool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/ccQuad3;",
            ">;"
        }
    .end annotation
.end field

.field private objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

.field private pointPool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGPoint;",
            ">;"
        }
    .end annotation
.end field

.field private rectPool:Lorg/cocos2d/utils/pool/OneClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGRect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$1;

    invoke-direct {v0}, Lorg/cocos2d/types/util/PoolHolder$1;-><init>()V

    sput-object v0, Lorg/cocos2d/types/util/PoolHolder;->instance:Ljava/lang/ThreadLocal;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/cocos2d/utils/pool/ObjectPool;

    invoke-direct {v0}, Lorg/cocos2d/utils/pool/ObjectPool;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    .line 44
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$2;

    invoke-direct {v0, p0}, Lorg/cocos2d/types/util/PoolHolder$2;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->pointPool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 50
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    const-class v1, Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/types/util/PoolHolder;->pointPool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/utils/pool/ObjectPool;->registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;

    .line 52
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$3;

    invoke-direct {v0, p0}, Lorg/cocos2d/types/util/PoolHolder$3;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad2Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 58
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    const-class v1, Lorg/cocos2d/types/ccQuad2;

    iget-object v2, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad2Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/utils/pool/ObjectPool;->registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;

    .line 60
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$4;

    invoke-direct {v0, p0}, Lorg/cocos2d/types/util/PoolHolder$4;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad3Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 66
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    const-class v1, Lorg/cocos2d/types/ccQuad3;

    iget-object v2, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad3Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/utils/pool/ObjectPool;->registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;

    .line 68
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$5;

    invoke-direct {v0, p0}, Lorg/cocos2d/types/util/PoolHolder$5;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->rectPool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 74
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    const-class v1, Lorg/cocos2d/types/CGRect;

    iget-object v2, p0, Lorg/cocos2d/types/util/PoolHolder;->rectPool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/utils/pool/ObjectPool;->registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;

    .line 76
    new-instance v0, Lorg/cocos2d/types/util/PoolHolder$6;

    invoke-direct {v0, p0}, Lorg/cocos2d/types/util/PoolHolder$6;-><init>(Lorg/cocos2d/types/util/PoolHolder;)V

    iput-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->affineTransformPool:Lorg/cocos2d/utils/pool/OneClassPool;

    .line 82
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    const-class v1, Lorg/cocos2d/types/CGAffineTransform;

    iget-object v2, p0, Lorg/cocos2d/types/util/PoolHolder;->affineTransformPool:Lorg/cocos2d/utils/pool/OneClassPool;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/utils/pool/ObjectPool;->registerPool(Ljava/lang/Class;Lorg/cocos2d/utils/pool/OneClassPool;)Lorg/cocos2d/utils/pool/OneClassPool;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/types/util/PoolHolder;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/cocos2d/types/util/PoolHolder;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/cocos2d/types/util/PoolHolder;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/cocos2d/types/util/PoolHolder;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/types/util/PoolHolder;

    return-object v0
.end method


# virtual methods
.method public getCGAffineTransformPool()Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGAffineTransform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->affineTransformPool:Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method

.method public getCGPointPool()Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->pointPool:Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method

.method public getCGRectPool()Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/CGRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->rectPool:Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method

.method public getObjectPool()Lorg/cocos2d/utils/pool/ObjectPool;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->objectPool:Lorg/cocos2d/utils/pool/ObjectPool;

    return-object v0
.end method

.method public getccQuad2Pool()Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/ccQuad2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad2Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method

.method public getccQuad3Pool()Lorg/cocos2d/utils/pool/OneClassPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/pool/OneClassPool",
            "<",
            "Lorg/cocos2d/types/ccQuad3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/cocos2d/types/util/PoolHolder;->ccQuad3Pool:Lorg/cocos2d/utils/pool/OneClassPool;

    return-object v0
.end method
