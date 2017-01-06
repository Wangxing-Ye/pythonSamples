.class public Lorg/cocos2d/types/CGRect;
.super Ljava/lang/Object;
.source "CGRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/types/CGRect$Edge;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$cocos2d$types$CGRect$Edge:[I

.field private static final ZERO_RECT:Lorg/cocos2d/types/CGRect;

.field private static rRect:Lorg/cocos2d/types/CGRect;

.field private static sRect:Lorg/cocos2d/types/CGRect;


# instance fields
.field public origin:Lorg/cocos2d/types/CGPoint;

.field public size:Lorg/cocos2d/types/CGSize;


# direct methods
.method static synthetic $SWITCH_TABLE$org$cocos2d$types$CGRect$Edge()[I
    .locals 3

    .prologue
    .line 3
    sget-object v0, Lorg/cocos2d/types/CGRect;->$SWITCH_TABLE$org$cocos2d$types$CGRect$Edge:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/types/CGRect$Edge;->values()[Lorg/cocos2d/types/CGRect$Edge;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MaxXEdge:Lorg/cocos2d/types/CGRect$Edge;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGRect$Edge;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MaxYEdge:Lorg/cocos2d/types/CGRect$Edge;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGRect$Edge;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MinXEdge:Lorg/cocos2d/types/CGRect$Edge;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGRect$Edge;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MinYEdge:Lorg/cocos2d/types/CGRect$Edge;

    invoke-virtual {v1}, Lorg/cocos2d/types/CGRect$Edge;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/cocos2d/types/CGRect;->$SWITCH_TABLE$org$cocos2d$types$CGRect$Edge:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Lorg/cocos2d/types/CGRect;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    sput-object v0, Lorg/cocos2d/types/CGRect;->ZERO_RECT:Lorg/cocos2d/types/CGRect;

    .line 211
    new-instance v0, Lorg/cocos2d/types/CGRect;

    invoke-direct {v0}, Lorg/cocos2d/types/CGRect;-><init>()V

    sput-object v0, Lorg/cocos2d/types/CGRect;->sRect:Lorg/cocos2d/types/CGRect;

    .line 212
    new-instance v0, Lorg/cocos2d/types/CGRect;

    invoke-direct {v0}, Lorg/cocos2d/types/CGRect;-><init>()V

    sput-object v0, Lorg/cocos2d/types/CGRect;->rRect:Lorg/cocos2d/types/CGRect;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    .line 9
    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    .line 38
    invoke-static {p3, p4}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)V
    .locals 4
    .param p1, "origin"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 12
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    .line 13
    return-void
.end method

.method public static applyAffineTransform(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGRect;
    .locals 11
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;
    .param p1, "matrix"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-static {v5, v5, v5, v5}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v4

    .line 114
    .local v4, "r":Lorg/cocos2d/types/CGRect;
    new-array v3, v9, [Lorg/cocos2d/types/CGPoint;

    .line 116
    .local v3, "p":[Lorg/cocos2d/types/CGPoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 120
    const/4 v5, 0x1

    aget-object v5, v3, v5

    iget v6, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v7, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->x:F

    .line 121
    const/4 v5, 0x2

    aget-object v5, v3, v5

    iget v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v7, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 122
    aget-object v5, v3, v10

    iget v6, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v7, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->x:F

    .line 123
    aget-object v5, v3, v10

    iget v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v7, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 125
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v9, :cond_1

    .line 129
    aget-object v5, v3, v8

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    aget-object v6, v3, v8

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 130
    .local v2, "min":Lorg/cocos2d/types/CGPoint;
    aget-object v5, v3, v8

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    aget-object v6, v3, v8

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 131
    .local v1, "max":Lorg/cocos2d/types/CGPoint;
    const/4 v0, 0x1

    :goto_2
    if-lt v0, v9, :cond_2

    .line 138
    iget-object v5, v4, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v5, v4, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iput v6, v5, Lorg/cocos2d/types/CGPoint;->y:F

    .line 139
    iget-object v5, v4, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v5, v4, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/types/CGSize;->height:F

    .line 141
    return-object v4

    .line 117
    .end local v1    # "max":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "min":Lorg/cocos2d/types/CGPoint;
    :cond_0
    iget-object v5, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v6, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    aput-object v5, v3, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    aget-object v5, v3, v0

    invoke-static {v5, p1}, Lorg/cocos2d/types/CGPoint;->applyAffineTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    aput-object v5, v3, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .restart local v1    # "max":Lorg/cocos2d/types/CGPoint;
    .restart local v2    # "min":Lorg/cocos2d/types/CGPoint;
    :cond_2
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->x:F

    aget-object v6, v3, v0

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 133
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    aget-object v6, v3, v0

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 134
    iget v5, v1, Lorg/cocos2d/types/CGPoint;->x:F

    aget-object v6, v3, v0

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 135
    iget v5, v1, Lorg/cocos2d/types/CGPoint;->y:F

    aget-object v6, v3, v0

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static varargs containsPoint(Lorg/cocos2d/types/CGPoint;[Lorg/cocos2d/types/CGRect;)Z
    .locals 7
    .param p0, "aPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "aRects"    # [Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v4, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "containsCount":I
    array-length v3, p1

    .line 80
    .local v3, "rectsCount":I
    array-length v6, p1

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_1

    .line 85
    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 80
    :cond_1
    aget-object v0, p1, v5

    .line 82
    .local v0, "aRect":Lorg/cocos2d/types/CGRect;
    invoke-static {v0, p0}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v1

    .line 83
    .local v1, "contains":Z
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 80
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z
    .locals 2
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;
    .param p1, "aPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 71
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->minX(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 72
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->minY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 73
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 74
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 71
    goto :goto_0
.end method

.method public static containsRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z
    .locals 2
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;
    .param p1, "bRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 99
    invoke-static {p1}, Lorg/cocos2d/types/CGRect;->isEmptyRect(Lorg/cocos2d/types/CGRect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->minX(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    invoke-static {p1}, Lorg/cocos2d/types/CGRect;->minX(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 101
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->minY(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    invoke-static {p1}, Lorg/cocos2d/types/CGRect;->minY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 102
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    invoke-static {p1}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 103
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    invoke-static {p1}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 99
    goto :goto_0
.end method

.method public static divideRect(Lorg/cocos2d/types/CGRect;[Lorg/cocos2d/types/CGRect;[Lorg/cocos2d/types/CGRect;FLorg/cocos2d/types/CGRect$Edge;)V
    .locals 6
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;
    .param p1, "slice"    # [Lorg/cocos2d/types/CGRect;
    .param p2, "remainder"    # [Lorg/cocos2d/types/CGRect;
    .param p3, "amount"    # F
    .param p4, "edge"    # Lorg/cocos2d/types/CGRect$Edge;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    new-array p1, v1, [Lorg/cocos2d/types/CGRect;

    .line 218
    sget-object v0, Lorg/cocos2d/types/CGRect;->sRect:Lorg/cocos2d/types/CGRect;

    aput-object v0, p1, v5

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-array p2, v1, [Lorg/cocos2d/types/CGRect;

    .line 223
    sget-object v0, Lorg/cocos2d/types/CGRect;->rRect:Lorg/cocos2d/types/CGRect;

    aput-object v0, p2, v5

    .line 226
    :cond_1
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->isEmptyRect(Lorg/cocos2d/types/CGRect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {v3, v3, v3, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p1, v5

    .line 228
    invoke-static {v3, v3, v3, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    .line 307
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-static {}, Lorg/cocos2d/types/CGRect;->$SWITCH_TABLE$org$cocos2d$types$CGRect$Edge()[I

    move-result-object v0

    invoke-virtual {p4}, Lorg/cocos2d/types/CGRect$Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 235
    aput-object p0, p1, v5

    .line 236
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    .line 237
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 239
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 236
    invoke-static {v0, v1, v3, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 242
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 244
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 241
    invoke-static {v0, v1, p3, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p1, v5

    .line 245
    aget-object v0, p1, v5

    invoke-static {v0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    .line 246
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 247
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v2

    aget-object v3, p1, v5

    invoke-static {v3}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 248
    iget-object v3, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 245
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    .line 253
    aput-object p0, p1, v5

    .line 254
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 255
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    .line 256
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 254
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 259
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 260
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 258
    invoke-static {v0, v1, v2, p3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p1, v5

    .line 262
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 263
    aget-object v1, p1, v5

    invoke-static {v1}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    .line 264
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 265
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v3

    aget-object v4, p1, v5

    invoke-static {v4}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 262
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    .line 270
    aput-object p0, p1, v5

    .line 271
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 272
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 274
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 271
    invoke-static {v0, v1, v3, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto/16 :goto_0

    .line 276
    :cond_5
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxX(Lorg/cocos2d/types/CGRect;)F

    move-result v0

    sub-float/2addr v0, p3

    .line 277
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 279
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 276
    invoke-static {v0, v1, p3, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p1, v5

    .line 280
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 281
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 282
    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/cocos2d/types/CGRect;->minX(Lorg/cocos2d/types/CGRect;)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v2, v3

    .line 283
    iget-object v3, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 280
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto/16 :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_6

    .line 288
    aput-object p0, p1, v5

    .line 289
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 290
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 291
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 289
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto/16 :goto_0

    .line 294
    :cond_6
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 295
    invoke-static {p0}, Lorg/cocos2d/types/CGRect;->maxY(Lorg/cocos2d/types/CGRect;)F

    move-result v1

    sub-float/2addr v1, p3

    .line 296
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 294
    invoke-static {v0, v1, v2, p3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p1, v5

    .line 298
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 299
    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 300
    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 301
    aget-object v3, p1, v5

    invoke-static {v3}, Lorg/cocos2d/types/CGRect;->minY(Lorg/cocos2d/types/CGRect;)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    .line 298
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    aput-object v0, p2, v5

    goto/16 :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static equalToRect(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z
    .locals 2
    .param p0, "r1"    # Lorg/cocos2d/types/CGRect;
    .param p1, "r2"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->equalToSize(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZero()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/cocos2d/types/CGRect;->ZERO_RECT:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public static height(Lorg/cocos2d/types/CGRect;)F
    .locals 1
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    return v0
.end method

.method public static intersects(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)Z
    .locals 4
    .param p0, "a"    # Lorg/cocos2d/types/CGRect;
    .param p1, "b"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 108
    goto :goto_0
.end method

.method public static isEmptyRect(Lorg/cocos2d/types/CGRect;)Z
    .locals 2
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static make(FFFF)Lorg/cocos2d/types/CGRect;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "w"    # F
    .param p3, "h"    # F

    .prologue
    .line 29
    new-instance v0, Lorg/cocos2d/types/CGRect;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    return-object v0
.end method

.method public static make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;
    .locals 5
    .param p0, "origin"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/types/CGRect;

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, p1, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, p1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    return-object v0
.end method

.method public static make(Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/types/CGRect;
    .locals 3
    .param p0, "r"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/types/CGRect;

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/CGRect;-><init>(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)V

    return-object v0
.end method

.method public static maxX(Lorg/cocos2d/types/CGRect;)F
    .locals 2
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static maxY(Lorg/cocos2d/types/CGRect;)F
    .locals 2
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static midX(Lorg/cocos2d/types/CGRect;)F
    .locals 5
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static midY(Lorg/cocos2d/types/CGRect;)F
    .locals 5
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static minX(Lorg/cocos2d/types/CGRect;)F
    .locals 1
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    return v0
.end method

.method public static minY(Lorg/cocos2d/types/CGRect;)F
    .locals 1
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    return v0
.end method

.method public static varargs noContainsPoint(Lorg/cocos2d/types/CGPoint;[Lorg/cocos2d/types/CGRect;)Z
    .locals 7
    .param p0, "aPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "aRects"    # [Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "containsCount":I
    array-length v2, p1

    .line 91
    .local v2, "rectsCount":I
    array-length v5, p1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 95
    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 91
    :cond_1
    aget-object v0, p1, v4

    .line 92
    .local v0, "aRect":Lorg/cocos2d/types/CGRect;
    invoke-static {v0, p0}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 91
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static width(Lorg/cocos2d/types/CGRect;)F
    .locals 1
    .param p0, "aRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    return v0
.end method

.method public static zero()Lorg/cocos2d/types/CGRect;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lorg/cocos2d/types/CGRect;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/cocos2d/types/CGRect;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 52
    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 48
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, p3, p4}, Lorg/cocos2d/types/CGSize;->set(FF)V

    .line 49
    return-void
.end method

.method public set(Lorg/cocos2d/types/CGRect;)V
    .locals 2
    .param p1, "r"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 43
    iget-object v0, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGSize;->set(Lorg/cocos2d/types/CGSize;)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
