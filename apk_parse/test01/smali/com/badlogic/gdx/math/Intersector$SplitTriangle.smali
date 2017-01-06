.class public Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Intersector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitTriangle"
.end annotation


# instance fields
.field public back:[F

.field backOffset:I

.field edgeSplit:[F

.field public front:[F

.field frontCurrent:Z

.field frontOffset:I

.field public numBack:I

.field public numFront:I

.field public total:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numAttributes"    # I

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontCurrent:Z

    .line 862
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontOffset:I

    .line 863
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->backOffset:I

    .line 871
    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    .line 872
    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    .line 873
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    .line 874
    return-void
.end method


# virtual methods
.method add([FII)V
    .locals 2
    .param p1, "vertex"    # [F
    .param p2, "offset"    # I
    .param p3, "stride"    # I

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontCurrent:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    iget v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontOffset:I

    .line 898
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->backOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 896
    iget v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->backOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->backOffset:I

    goto :goto_0
.end method

.method getSide()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontCurrent:Z

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontCurrent:Z

    .line 902
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontOffset:I

    .line 903
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->backOffset:I

    .line 904
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 905
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 906
    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 907
    return-void
.end method

.method setSide(Z)V
    .locals 0
    .param p1, "front"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->frontCurrent:Z

    .line 884
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitTriangle [front="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", back="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 879
    const-string v1, ", numBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
