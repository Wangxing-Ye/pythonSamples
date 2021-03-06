.class public Lcom/badlogic/gdx/physics/box2d/ChainShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "ChainShape.java"


# static fields
.field private static verts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->newChainShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    .line 13
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    .line 21
    return-void
.end method

.method private native jniCreateChain(J[FI)V
.end method

.method private native jniCreateLoop(J[FI)V
.end method

.method private native jniGetVertex(JI[F)V
.end method

.method private native jniGetVertexCount(J)I
.end method

.method private native jniSetNextVertex(JFF)V
.end method

.method private native jniSetPrevVertex(JFF)V
.end method

.method private native newChainShape()J
.end method


# virtual methods
.method public createChain([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 6
    .param p1, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 51
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [F

    .line 52
    .local v2, "verts":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 56
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniCreateChain(J[FI)V

    .line 57
    return-void

    .line 53
    :cond_0
    aget-object v3, p1, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v0

    .line 54
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v2, v3

    .line 52
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createLoop([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 6
    .param p1, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 31
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [F

    .line 32
    .local v2, "verts":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 36
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniCreateLoop(J[FI)V

    .line 37
    return-void

    .line 33
    :cond_0
    aget-object v3, p1, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v0

    .line 34
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v2, v3

    .line 32
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "vertex"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniGetVertex(JI[F)V

    .line 115
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 116
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 117
    return-void
.end method

.method public getVertexCount()I
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public setNextVertex(FF)V
    .locals 2
    .param p1, "nextVertexX"    # F
    .param p2, "nextVertexY"    # F

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniSetNextVertex(JFF)V

    .line 91
    return-void
.end method

.method public setNextVertex(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "nextVertex"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 85
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->setNextVertex(FF)V

    .line 86
    return-void
.end method

.method public setPrevVertex(FF)V
    .locals 2
    .param p1, "prevVertexX"    # F
    .param p2, "prevVertexY"    # F

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniSetPrevVertex(JFF)V

    .line 76
    return-void
.end method

.method public setPrevVertex(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "prevVertex"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 70
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->setPrevVertex(FF)V

    .line 71
    return-void
.end method
