.class public Lcom/badlogic/gdx/physics/box2d/FixtureDef;
.super Ljava/lang/Object;
.source "FixtureDef.java"


# instance fields
.field public density:F

.field public final filter:Lcom/badlogic/gdx/physics/box2d/Filter;

.field public friction:F

.field public isSensor:Z

.field public restitution:F

.field public shape:Lcom/badlogic/gdx/physics/box2d/Shape;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 33
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 39
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 22
    return-void
.end method
