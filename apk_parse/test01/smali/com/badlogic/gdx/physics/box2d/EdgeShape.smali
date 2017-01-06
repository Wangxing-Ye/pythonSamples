.class public Lcom/badlogic/gdx/physics/box2d/EdgeShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "EdgeShape.java"


# static fields
.field static final vertex:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->newEdgeShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 15
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 23
    return-void
.end method

.method private native jniGetVertex1(J[F)V
.end method

.method private native jniGetVertex2(J[F)V
.end method

.method private native jniSet(JFFFF)V
.end method

.method private native newEdgeShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex1(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex1(J[F)V

    .line 44
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 45
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 46
    return-void
.end method

.method public getVertex2(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex2(J[F)V

    .line 56
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 57
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 58
    return-void
.end method

.method public set(FFFF)V
    .locals 7
    .param p1, "v1X"    # F
    .param p2, "v1Y"    # F
    .param p3, "v2X"    # F
    .param p4, "v2Y"    # F

    .prologue
    .line 32
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSet(JFFFF)V

    .line 33
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 27
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->set(FFFF)V

    .line 28
    return-void
.end method
