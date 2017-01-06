.class public Lorg/cocos2d/nodes/CCNode;
.super Ljava/lang/Object;
.source "CCNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/nodes/CCNode$CocosNodeSize;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final kCCNodeTagInvalid:I = -0x1

.field private static zOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

.field protected anchorPoint_:Lorg/cocos2d/types/CGPoint;

.field protected boundingBox_:Lorg/cocos2d/types/CGRect;

.field private camera_:Lorg/cocos2d/opengl/CCCamera;

.field protected children_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;"
        }
    .end annotation
.end field

.field protected contentSize_:Lorg/cocos2d/types/CGSize;

.field protected grid_:Lorg/cocos2d/grid/CCGridBase;

.field private inverse_:Lorg/cocos2d/types/CGAffineTransform;

.field private isInverseDirty_:Z

.field private isRelativeAnchorPoint_:Z

.field private isRunning_:Z

.field private isTransformDirty_:Z

.field private isTransformGLDirty_:Z

.field protected parent_:Lorg/cocos2d/nodes/CCNode;

.field protected position_:Lorg/cocos2d/types/CGPoint;

.field protected position_ui:Lorg/cocos2d/types/CGPoint;

.field protected rotation_:F

.field protected scaleX_:F

.field protected scaleY_:F

.field private skewX_:F

.field private skewY_:F

.field private tag_:I

.field private transformGL_:[F

.field private transform_:Lorg/cocos2d/types/CGAffineTransform;

.field private userData:Ljava/lang/Object;

.field protected vertexZ_:F

.field protected visible_:Z

.field private zOrder_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    .line 96
    const-class v0, Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/nodes/CCNode;->LOG_TAG:Ljava/lang/String;

    .line 1512
    new-instance v0, Lorg/cocos2d/nodes/CCNode$1;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCNode$1;-><init>()V

    sput-object v0, Lorg/cocos2d/nodes/CCNode;->zOrderComparator:Ljava/util/Comparator;

    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transformGL_:[F

    .line 664
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    .line 666
    iput v1, p0, Lorg/cocos2d/nodes/CCNode;->rotation_:F

    .line 667
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    iput v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    .line 668
    iput v1, p0, Lorg/cocos2d/nodes/CCNode;->skewY_:F

    iput v1, p0, Lorg/cocos2d/nodes/CCNode;->skewX_:F

    .line 669
    invoke-static {v1, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    .line 670
    invoke-static {v1, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    .line 672
    invoke-static {}, Lorg/cocos2d/types/CGAffineTransform;->identity()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    .line 673
    invoke-static {}, Lorg/cocos2d/types/CGAffineTransform;->identity()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->inverse_:Lorg/cocos2d/types/CGAffineTransform;

    .line 676
    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isRelativeAnchorPoint_:Z

    .line 678
    invoke-static {v1, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    .line 679
    invoke-static {v1, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    .line 680
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    .line 682
    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 685
    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 688
    iput v4, p0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    .line 689
    iput v1, p0, Lorg/cocos2d/nodes/CCNode;->vertexZ_:F

    .line 690
    iput-object v3, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    .line 691
    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    .line 692
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/nodes/CCNode;->tag_:I

    .line 695
    iput-object v3, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    .line 698
    iput-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    .line 701
    iput-object v3, p0, Lorg/cocos2d/nodes/CCNode;->userData:Ljava/lang/Object;

    .line 702
    return-void
.end method

.method private static final RENDER_IN_SUBPIXEL(F)F
    .locals 0
    .param p0, "f"    # F

    .prologue
    .line 1645
    return p0
.end method

.method private _setZOrder(I)V
    .locals 0
    .param p1, "z"    # I

    .prologue
    .line 622
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    .line 623
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/nodes/CCNode;)I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    return v0
.end method

.method private ccLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;FI)V
    .locals 5
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "distance"    # F
    .param p4, "layoutTag"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 478
    packed-switch p4, :pswitch_data_0

    .line 520
    :goto_0
    :pswitch_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 486
    :pswitch_3
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 487
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 491
    :pswitch_4
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 495
    :pswitch_5
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 499
    :pswitch_6
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 503
    :pswitch_7
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 506
    :pswitch_8
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 509
    :pswitch_9
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto/16 :goto_0

    .line 512
    :pswitch_a
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    goto/16 :goto_0

    .line 515
    :pswitch_b
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    goto/16 :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private childrenAlloc()V
    .locals 2

    .prologue
    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    .line 1510
    return-void
.end method

.method private detachChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "doCleanup"    # Z

    .prologue
    .line 905
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->onExit()V

    .line 910
    :cond_0
    if-eqz p2, :cond_1

    .line 911
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->cleanup()V

    .line 914
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCNode;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 916
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 917
    return-void
.end method

.method private insertChild(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 5
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 1522
    invoke-direct {p1, p2}, Lorg/cocos2d/nodes/CCNode;->_setZOrder(I)V

    .line 1523
    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    sget-object v4, Lorg/cocos2d/nodes/CCNode;->zOrderComparator:Ljava/util/Comparator;

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1525
    .local v0, "ind":I
    if-ltz v0, :cond_2

    .line 1526
    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1530
    .local v2, "size":I
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .line 1531
    .local v1, "prev":Lorg/cocos2d/nodes/CCNode;
    add-int/lit8 v0, v0, 0x1

    .line 1532
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    iget v3, v3, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    iget v4, v1, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    if-eq v3, v4, :cond_0

    .line 1536
    .end local v1    # "prev":Lorg/cocos2d/nodes/CCNode;
    .end local v2    # "size":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1551
    return-void

    .line 1534
    :cond_2
    add-int/lit8 v3, v0, 0x1

    neg-int v0, v3

    goto :goto_0
.end method

.method public static node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 657
    new-instance v0, Lorg/cocos2d/nodes/CCNode;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    return-object v0
.end method

.method private nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 1270
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    if-eqz v2, :cond_8

    .line 1271
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->getZero()Lorg/cocos2d/types/CGPoint;

    move-result-object v13

    .line 1272
    .local v13, "zero":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    invoke-virtual {v2}, Lorg/cocos2d/types/CGAffineTransform;->setToIdentity()V

    .line 1274
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isRelativeAnchorPoint_:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2, v13}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v3, v3

    iget-object v5, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1278
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2, v13}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1279
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v3, v3

    iget-object v5, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1281
    :cond_1
    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->rotation_:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_2

    .line 1282
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    iget v3, p0, Lorg/cocos2d/nodes/CCNode;->rotation_:F

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/types/CGAffineTransform;->rotate(D)V

    .line 1284
    :cond_2
    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->skewX_:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_3

    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->skewY_:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_4

    .line 1286
    :cond_3
    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->skewY_:F

    invoke-static {v2}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Lorg/cocos2d/utils/javolution/MathLib;->tan(D)D

    move-result-wide v2

    iget v4, p0, Lorg/cocos2d/nodes/CCNode;->skewX_:F

    invoke-static {v4}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Lorg/cocos2d/utils/javolution/MathLib;->tan(D)D

    move-result-wide v4

    move-wide v6, v0

    move-wide v10, v8

    invoke-static/range {v0 .. v11}, Lorg/cocos2d/types/CGAffineTransform;->make(DDDDDD)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v12

    .line 1288
    .local v12, "skew":Lorg/cocos2d/types/CGAffineTransform;
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    invoke-virtual {v0, v12}, Lorg/cocos2d/types/CGAffineTransform;->getTransformConcat(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    .line 1291
    .end local v12    # "skew":Lorg/cocos2d/types/CGAffineTransform;
    :cond_4
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_5

    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_6

    .line 1292
    :cond_5
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    iget v1, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    float-to-double v1, v1

    iget v3, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/CGAffineTransform;->scale(DD)V

    .line 1294
    :cond_6
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v13}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1295
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v1, v1

    float-to-double v1, v1

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/CGAffineTransform;->translate(DD)V

    .line 1297
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 1300
    .end local v13    # "zero":Lorg/cocos2d/types/CGPoint;
    :cond_8
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->transform_:Lorg/cocos2d/types/CGAffineTransform;

    return-object v0
.end method

.method private nodeToWorldTransform()Lorg/cocos2d/types/CGAffineTransform;
    .locals 3

    .prologue
    .line 1320
    new-instance v1, Lorg/cocos2d/types/CGAffineTransform;

    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/cocos2d/types/CGAffineTransform;-><init>(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1322
    .local v1, "t":Lorg/cocos2d/types/CGAffineTransform;
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    .local v0, "p":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    if-nez v0, :cond_0

    .line 1327
    return-object v1

    .line 1324
    :cond_0
    invoke-direct {v0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/types/CGAffineTransform;->preConcatenate(Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v1

    .line 1322
    iget-object v0, v0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method private nodeToWorldTransform(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 2
    .param p1, "ret"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 1331
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cocos2d/types/CGAffineTransform;->setTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1333
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    .local v0, "p":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    if-nez v0, :cond_0

    .line 1336
    return-void

    .line 1334
    :cond_0
    invoke-direct {v0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/cocos2d/types/util/CGAffineTransformUtil;->preConcate(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1333
    iget-object v0, v0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public static removeChildren(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "children":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 767
    return-void

    .line 763
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 764
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    goto :goto_0
.end method

.method public static removeChildren(Ljava/util/Collection;Z)V
    .locals 3
    .param p1, "isClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "children":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 787
    if-eqz p1, :cond_1

    .line 788
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 789
    :cond_1
    return-void

    .line 783
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 784
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    goto :goto_0
.end method

.method public static varargs removeChildren([Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p0, "children"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 805
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 809
    return-void

    .line 805
    :cond_0
    aget-object v0, p0, v1

    .line 806
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 805
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private worldToNodeTransform(Lorg/cocos2d/types/CGAffineTransform;)V
    .locals 0
    .param p1, "ret"    # Lorg/cocos2d/types/CGAffineTransform;

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Lorg/cocos2d/nodes/CCNode;->nodeToWorldTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1350
    invoke-static {p1}, Lorg/cocos2d/types/util/CGAffineTransformUtil;->inverse(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1351
    return-void
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 744
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 746
    :cond_0
    iget v0, p1, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    iget v1, p1, Lorg/cocos2d/nodes/CCNode;->tag_:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 734
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 736
    :cond_0
    iget v0, p1, Lorg/cocos2d/nodes/CCNode;->tag_:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "tag"    # I

    .prologue
    .line 714
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 715
    :cond_0
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "child already added. It can\'t be added again"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 717
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-nez v0, :cond_2

    .line 718
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->childrenAlloc()V

    .line 720
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->insertChild(Lorg/cocos2d/nodes/CCNode;I)V

    .line 721
    iput p3, p1, Lorg/cocos2d/nodes/CCNode;->tag_:I

    .line 722
    invoke-virtual {p1, p0}, Lorg/cocos2d/nodes/CCNode;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 723
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->onEnter()V

    .line 726
    :cond_3
    return-object p0
.end method

.method public varargs addChildren(I[Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "z"    # I
    .param p2, "children"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 795
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 799
    return-void

    .line 795
    :cond_0
    aget-object v0, p2, v1

    .line 796
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0, v0, p1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 795
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addChildren(Ljava/lang/Iterable;I)V
    .locals 3
    .param p2, "z"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "children":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 757
    return-void

    .line 753
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 754
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public addChildren(Ljava/util/Collection;I)V
    .locals 3
    .param p2, "z"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 777
    return-void

    .line 773
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 774
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 1559
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V

    .line 1560
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->unscheduleAllSelectors()V

    .line 1563
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1568
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1565
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .line 1566
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->cleanup()V

    .line 1564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z
    .locals 4
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "depthSearch"    # Z

    .prologue
    const/4 v1, 0x1

    .line 932
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-nez v2, :cond_1

    .line 933
    const/4 v1, 0x0

    .line 945
    :cond_0
    :goto_0
    return v1

    .line 935
    :cond_1
    if-nez p2, :cond_2

    .line 936
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 938
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 939
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 940
    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->containsChild(Lorg/cocos2d/nodes/CCNode;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public convertToNodeSpace(FF)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1357
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/types/util/PoolHolder;->getCGAffineTransformPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v0

    .line 1359
    .local v0, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGAffineTransform;>;"
    invoke-virtual {v0}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/types/CGAffineTransform;

    .line 1360
    .local v2, "temp":Lorg/cocos2d/types/CGAffineTransform;
    invoke-direct {p0, v2}, Lorg/cocos2d/nodes/CCNode;->worldToNodeTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1362
    new-instance v1, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v1}, Lorg/cocos2d/types/CGPoint;-><init>()V

    .line 1363
    .local v1, "ret":Lorg/cocos2d/types/CGPoint;
    invoke-static {p1, p2, v2, v1}, Lorg/cocos2d/types/util/CGPointUtil;->applyAffineTransform(FFLorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V

    .line 1365
    invoke-virtual {v0, v2}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1366
    return-object v1
.end method

.method public convertToNodeSpace(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1373
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public convertToNodeSpace(FFLorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1387
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getCGAffineTransformPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v0

    .line 1389
    .local v0, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGAffineTransform;>;"
    invoke-virtual {v0}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/types/CGAffineTransform;

    .line 1390
    .local v1, "temp":Lorg/cocos2d/types/CGAffineTransform;
    invoke-direct {p0, v1}, Lorg/cocos2d/nodes/CCNode;->worldToNodeTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1392
    invoke-static {p1, p2, v1, p3}, Lorg/cocos2d/types/util/CGPointUtil;->applyAffineTransform(FFLorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V

    .line 1394
    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1395
    return-void
.end method

.method public convertToNodeSpace(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1380
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 1381
    return-void
.end method

.method public convertToNodeSpaceAR(FF)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1424
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1425
    .local v0, "nodePoint":Lorg/cocos2d/types/CGPoint;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    return-object v1
.end method

.method public convertToWindowSpace(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p1, "nodePoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1497
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->convertToWorldSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1498
    .local v0, "worldPoint":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCDirector;->convertToUI(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    return-object v1
.end method

.method public convertToWorldSpace(FF)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1401
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1402
    .local v0, "nodePoint":Lorg/cocos2d/types/CGPoint;
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToWorldTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->applyAffineTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    return-object v1
.end method

.method public convertToWorldSpace(FFLorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1409
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getCGAffineTransformPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v0

    .line 1411
    .local v0, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGAffineTransform;>;"
    invoke-virtual {v0}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/types/CGAffineTransform;

    .line 1412
    .local v1, "temp":Lorg/cocos2d/types/CGAffineTransform;
    invoke-direct {p0, v1}, Lorg/cocos2d/nodes/CCNode;->nodeToWorldTransform(Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1414
    invoke-static {p1, p2, v1, p3}, Lorg/cocos2d/types/util/CGPointUtil;->applyAffineTransform(FFLorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V

    .line 1416
    invoke-virtual {v0, v1}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1417
    return-void
.end method

.method public convertToWorldSpaceAR(FF)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1433
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1434
    .local v0, "nodePoint":Lorg/cocos2d/types/CGPoint;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 1435
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->convertToWorldSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    return-object v1
.end method

.method public convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1443
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/types/util/PoolHolder;->getCGPointPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v3

    .line 1444
    .local v3, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    invoke-virtual {v3}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/types/CGPoint;

    .line 1446
    .local v2, "point":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1447
    .local v0, "action":I
    shr-int/lit8 v1, v0, 0x8

    .line 1448
    .local v1, "pid":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_0

    .line 1449
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v6

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    .line 1454
    :goto_0
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .local v4, "x":F
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1455
    .local v5, "y":F
    invoke-virtual {v3, v2}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1457
    invoke-virtual {p0, v4, v5}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    return-object v6

    .line 1451
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public convertTouchToNodeSpace(Landroid/view/MotionEvent;Lorg/cocos2d/types/CGPoint;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1465
    .local v0, "action":I
    shr-int/lit8 v1, v0, 0x8

    .line 1466
    .local v1, "pid":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 1467
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v2

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-virtual {v2, v3, v4, p2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    .line 1472
    :goto_0
    iget v2, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v2, v3, p2}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 1473
    return-void

    .line 1469
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4, p2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public convertTouchToNodeSpaceAR(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1479
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/types/util/PoolHolder;->getCGPointPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v3

    .line 1480
    .local v3, "pool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    invoke-virtual {v3}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/types/CGPoint;

    .line 1482
    .local v2, "point":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1483
    .local v0, "action":I
    shr-int/lit8 v1, v0, 0x8

    .line 1484
    .local v1, "pid":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_0

    .line 1485
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v6

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, Lorg/cocos2d/utils/Util5;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    .line 1490
    :goto_0
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .local v4, "x":F
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1491
    .local v5, "y":F
    invoke-virtual {v3, v2}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1493
    invoke-virtual {p0, v4, v5}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpaceAR(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    return-object v6

    .line 1487
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 963
    return-void
.end method

.method public getAction(I)Lorg/cocos2d/actions/base/CCAction;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 1129
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid tag_"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1131
    :cond_0
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/actions/CCActionManager;->getAction(ILorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorPoint()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorPointInPixels()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorPointRef()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getAnchorPointX()F
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    return v0
.end method

.method public getAnchorPointY()F
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    return v0
.end method

.method public getBoundingBox()Lorg/cocos2d/types/CGRect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v3, v3, v1, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 339
    .local v0, "rect":Lorg/cocos2d/types/CGRect;
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGRect;->applyAffineTransform(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGAffineTransform;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    return-object v1
.end method

.method public getBoundingBoxRef()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->boundingBox_:Lorg/cocos2d/types/CGRect;

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->boundingBox_:Lorg/cocos2d/types/CGRect;

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->boundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getCamera()Lorg/cocos2d/opengl/CCCamera;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Lorg/cocos2d/opengl/CCCamera;

    invoke-direct {v0}, Lorg/cocos2d/opengl/CCCamera;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    return-object v0
.end method

.method public getChildByTag(I)Lorg/cocos2d/nodes/CCNode;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 888
    sget-boolean v2, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Invalid tag_"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 890
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 898
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1

    .line 892
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .line 893
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    iget v2, v1, Lorg/cocos2d/nodes/CCNode;->tag_:I

    if-eq v2, p1, :cond_2

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    return-object v0
.end method

.method public getContentSize()Lorg/cocos2d/types/CGSize;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    return-object v0
.end method

.method public getContentSizeHeight()F
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    return v0
.end method

.method public getContentSizeRef()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public getContentSizeWidth()F
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    return v0
.end method

.method public getGrid()Lorg/cocos2d/grid/CCGridBase;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    return-object v0
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public getPosition()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPositionRef()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getPositionRefX()F
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    return v0
.end method

.method public getPositionRefY()F
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    return v0
.end method

.method public getRelativeAnchorPoint()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRelativeAnchorPoint_:Z

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->rotation_:F

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    iget v1, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 169
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCNode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CCNode#scale. ScaleX != ScaleY. Don\'t know which one to return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    return v0
.end method

.method public getSkewX()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->skewX_:F

    return v0
.end method

.method public getSkewY()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->skewY_:F

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->tag_:I

    return v0
.end method

.method public getUIPosition()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getUIPositionB()F
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getUIPositionR()F
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getUIPositionX()F
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    return v0
.end method

.method public getUIPositionY()F
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getVertexZ()F
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->vertexZ_:F

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    return v0
.end method

.method public getZOrder()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    return v0
.end method

.method public numberOfRunningActions()I
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCActionManager;->numberOfRunningActions(Lorg/cocos2d/nodes/CCNode;)I

    move-result v0

    return v0
.end method

.method public onEnter()V
    .locals 3

    .prologue
    .line 1603
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1607
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->resumeSchedulerAndActions()V

    .line 1609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    .line 1610
    return-void

    .line 1604
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 1605
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->onEnter()V

    goto :goto_0
.end method

.method public onEnterTransitionDidFinish()V
    .locals 3

    .prologue
    .line 1619
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1620
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1623
    :cond_0
    return-void

    .line 1620
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 1621
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->onEnterTransitionDidFinish()V

    goto :goto_0
.end method

.method public onExit()V
    .locals 3

    .prologue
    .line 1633
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->pauseSchedulerAndActions()V

    .line 1634
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    .line 1636
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1640
    :cond_0
    return-void

    .line 1637
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 1638
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->onExit()V

    goto :goto_0
.end method

.method public parentToNodeTransform()Lorg/cocos2d/types/CGAffineTransform;
    .locals 2

    .prologue
    .line 1307
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    if-eqz v0, :cond_0

    .line 1308
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->inverse_:Lorg/cocos2d/types/CGAffineTransform;

    invoke-static {v0, v1}, Lorg/cocos2d/types/util/CGAffineTransformUtil;->inverse(Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGAffineTransform;)V

    .line 1310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    .line 1313
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->inverse_:Lorg/cocos2d/types/CGAffineTransform;

    return-object v0
.end method

.method public pauseSchedulerAndActions()V
    .locals 1

    .prologue
    .line 1261
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCScheduler;->pause(Ljava/lang/Object;)V

    .line 1262
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCActionManager;->pause(Lorg/cocos2d/nodes/CCNode;)V

    .line 1263
    return-void
.end method

.method public removeAllChildren(Z)V
    .locals 3
    .param p1, "cleanup"    # Z

    .prologue
    .line 866
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-nez v2, :cond_0

    .line 881
    :goto_0
    return-void

    .line 869
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 879
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 870
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 871
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v2, :cond_2

    .line 872
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->onExit()V

    .line 874
    :cond_2
    if-eqz p1, :cond_3

    .line 875
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->cleanup()V

    .line 877
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCNode;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "cleanup"    # Z

    .prologue
    .line 839
    if-nez p1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->detachChild(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method public removeChildByTag(IZ)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "cleanup"    # Z

    .prologue
    .line 851
    sget-boolean v1, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid tag"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 853
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCNode;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    .line 854
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    if-nez v0, :cond_1

    .line 855
    sget-object v1, Lorg/cocos2d/nodes/CCNode;->LOG_TAG:Ljava/lang/String;

    const-string v2, "removeChild: child not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method public removeFromParentAndCleanup(Z)V
    .locals 1
    .param p1, "cleanup"    # Z

    .prologue
    .line 817
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 820
    :cond_0
    return-void
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCNode;->removeFromParentAndCleanup(Z)V

    .line 827
    return-void
.end method

.method public reorderChild(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 923
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 925
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->insertChild(Lorg/cocos2d/nodes/CCNode;I)V

    .line 926
    return-void
.end method

.method public resumeSchedulerAndActions()V
    .locals 1

    .prologue
    .line 1253
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCScheduler;->resume(Ljava/lang/Object;)V

    .line 1254
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCActionManager;->resume(Lorg/cocos2d/nodes/CCNode;)V

    .line 1255
    return-void
.end method

.method public reverseVisible()V
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    .line 566
    return-void

    .line 565
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;
    .locals 2
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 1100
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1102
    :cond_0
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v1

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p0, v0}, Lorg/cocos2d/actions/CCActionManager;->addAction(Lorg/cocos2d/actions/base/CCAction;Lorg/cocos2d/nodes/CCNode;Z)V

    .line 1103
    return-object p1

    .line 1102
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public schedule(Ljava/lang/String;)V
    .locals 1
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    .line 1178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCNode;->schedule(Ljava/lang/String;F)V

    .line 1179
    return-void
.end method

.method public schedule(Ljava/lang/String;F)V
    .locals 2
    .param p1, "selector"    # Ljava/lang/String;
    .param p2, "interval"    # F

    .prologue
    .line 1186
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument selector must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1187
    :cond_0
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument interval must be positive"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1189
    :cond_1
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v1

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p0, p2, v0}, Lorg/cocos2d/actions/CCScheduler;->schedule(Ljava/lang/String;Ljava/lang/Object;FZ)V

    .line 1190
    return-void

    .line 1189
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public schedule(Lorg/cocos2d/actions/UpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/cocos2d/actions/UpdateCallback;

    .prologue
    .line 1200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCNode;->schedule(Lorg/cocos2d/actions/UpdateCallback;F)V

    .line 1201
    return-void
.end method

.method public schedule(Lorg/cocos2d/actions/UpdateCallback;F)V
    .locals 2
    .param p1, "callback"    # Lorg/cocos2d/actions/UpdateCallback;
    .param p2, "interval"    # F

    .prologue
    .line 1212
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1213
    :cond_0
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument interval must be positive"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1215
    :cond_1
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v1

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p0, p2, v0}, Lorg/cocos2d/actions/CCScheduler;->schedule(Lorg/cocos2d/actions/UpdateCallback;Ljava/lang/Object;FZ)V

    .line 1216
    return-void

    .line 1215
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scheduleUpdate()V
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCNode;->scheduleUpdate(I)V

    .line 1154
    return-void
.end method

.method public scheduleUpdate(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 1163
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v1

    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isRunning_:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, p1, v0}, Lorg/cocos2d/actions/CCScheduler;->scheduleUpdate(Ljava/lang/Object;IZ)V

    .line 1164
    return-void

    .line 1163
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAnchorPoint(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    .line 291
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 293
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v2

    .line 294
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v2, v3

    .line 293
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 296
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 298
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 301
    :cond_1
    return-void
.end method

.method public setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 287
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 288
    return-void
.end method

.method public setContentSize(FF)V
    .locals 5
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/4 v4, 0x1

    .line 258
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/CGSize;->set(FF)V

    .line 260
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v2

    .line 261
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v2, v3

    .line 260
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 262
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 264
    iput-boolean v4, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 268
    :cond_1
    return-void
.end method

.method public setContentSize(Lorg/cocos2d/types/CGSize;)V
    .locals 2
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 254
    iget v0, p1, Lorg/cocos2d/types/CGSize;->width:F

    iget v1, p1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setContentSize(FF)V

    .line 255
    return-void
.end method

.method public setGrid(Lorg/cocos2d/grid/CCGridBase;)V
    .locals 0
    .param p1, "grid"    # Lorg/cocos2d/grid/CCGridBase;

    .prologue
    .line 549
    iput-object p1, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    .line 550
    return-void
.end method

.method public varargs setLayoutTo(Lorg/cocos2d/nodes/CCNode;[[F)V
    .locals 2
    .param p1, "argNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "args"    # [[F

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getUIPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/cocos2d/nodes/CCNode;->setLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;[[F)V

    .line 459
    :cond_0
    return-void
.end method

.method public varargs setLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;[[F)V
    .locals 4
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "args"    # [[F

    .prologue
    .line 462
    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-lt v0, v1, :cond_2

    .line 466
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCNode;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 464
    :cond_2
    aget-object v1, p3, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    aget-object v2, p3, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/cocos2d/nodes/CCNode;->ccLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;FI)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public varargs setLayoutTo(Lorg/cocos2d/types/CGRect;[[F)V
    .locals 6
    .param p1, "targetRect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "args"    # [[F

    .prologue
    .line 470
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-lt v0, v1, :cond_2

    .line 474
    iget-object v1, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCNode;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    aget-object v3, p2, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    aget-object v4, p2, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCNode;->ccLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;FI)V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 577
    iput-object p1, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    .line 578
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->position_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 375
    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 377
    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 379
    return-void
.end method

.method public setPosition(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 370
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    .line 371
    return-void
.end method

.method public setPositionToUI(FF)V
    .locals 5
    .param p1, "uix"    # F
    .param p2, "uiy"    # F

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "gly":F
    sget-object v2, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v2, p1

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v4, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 426
    .local v0, "glx":F
    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->contentSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v4, p0, Lorg/cocos2d/nodes/CCNode;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 427
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->position_ui:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v2, p1, p2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 428
    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    .line 429
    return-void
.end method

.method public setPositionToUI(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "position_ui"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 420
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPositionToUI(FF)V

    .line 421
    return-void
.end method

.method public setPositionWithCcso(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 386
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/cocos2d/nodes/CCNode;->setPositionWithCcso(Lorg/cocos2d/nodes/CCNode;FF)V

    .line 387
    return-void
.end method

.method public setPositionWithCcso(Lorg/cocos2d/nodes/CCNode;FF)V
    .locals 5
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 396
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 397
    .local v1, "s":Lorg/cocos2d/types/CGSize;
    iget v2, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, v1, Lorg/cocos2d/types/CGSize;->height:F

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    goto :goto_0
.end method

.method public setPositionWithCcso(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "target"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 390
    iget v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPositionWithCcso(Lorg/cocos2d/nodes/CCNode;FF)V

    .line 391
    return-void
.end method

.method public setPositionWithCcso(Lorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p1, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->setPositionWithCcso(Lorg/cocos2d/nodes/CCNode;FF)V

    .line 383
    return-void
.end method

.method public setRelativeAnchorPoint(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    const/4 v0, 0x1

    .line 231
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCNode;->isRelativeAnchorPoint_:Z

    .line 232
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 234
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 236
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rot"    # F

    .prologue
    const/4 v0, 0x1

    .line 114
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->rotation_:F

    .line 115
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 117
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 119
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    const/4 v0, 0x1

    .line 160
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    .line 161
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 163
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 165
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "sx"    # F

    .prologue
    const/4 v0, 0x1

    .line 134
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->scaleX_:F

    .line 135
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 137
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 139
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "sy"    # F

    .prologue
    const/4 v0, 0x1

    .line 149
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->scaleY_:F

    .line 150
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 152
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 154
    return-void
.end method

.method public setSkewX(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    const/4 v0, 0x1

    .line 185
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->skewX_:F

    .line 186
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 188
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 190
    return-void
.end method

.method public setSkewY(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    const/4 v0, 0x1

    .line 200
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->skewY_:F

    .line 201
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isInverseDirty_:Z

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformDirty_:Z

    .line 203
    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 205
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 589
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->tag_:I

    .line 590
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/cocos2d/nodes/CCNode;->userData:Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public setVertexZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 608
    iput p1, p0, Lorg/cocos2d/nodes/CCNode;->vertexZ_:F

    .line 609
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    .line 562
    return-void
.end method

.method public stopAction(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 1120
    sget-boolean v0, Lorg/cocos2d/nodes/CCNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid tag_"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1121
    :cond_0
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/actions/CCActionManager;->removeAction(ILorg/cocos2d/nodes/CCNode;)V

    .line 1122
    return-void
.end method

.method public stopAction(Lorg/cocos2d/actions/base/CCAction;)V
    .locals 1
    .param p1, "action"    # Lorg/cocos2d/actions/base/CCAction;

    .prologue
    .line 1113
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/actions/CCActionManager;->removeAction(Lorg/cocos2d/actions/base/CCAction;)V

    .line 1114
    return-void
.end method

.method public stopAllActions()V
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Lorg/cocos2d/actions/CCActionManager;->sharedManager()Lorg/cocos2d/actions/CCActionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCActionManager;->removeAllActions(Lorg/cocos2d/nodes/CCNode;)V

    .line 1109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "| Tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/nodes/CCNode;->tag_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1020
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    if-eqz v2, :cond_0

    .line 1021
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToParentTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    .line 1022
    .local v0, "t":Lorg/cocos2d/types/CGAffineTransform;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transformGL_:[F

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGAffineTransform;->CGAffineToGL(Lorg/cocos2d/types/CGAffineTransform;[F)V

    .line 1023
    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCNode;->isTransformGLDirty_:Z

    .line 1027
    .end local v0    # "t":Lorg/cocos2d/types/CGAffineTransform;
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->transformGL_:[F

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 1029
    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->vertexZ_:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 1030
    iget v2, p0, Lorg/cocos2d/nodes/CCNode;->vertexZ_:F

    invoke-interface {p1, v4, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1033
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1034
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    .line 1036
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1037
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-static {v2}, Lorg/cocos2d/nodes/CCNode;->RENDER_IN_SUBPIXEL(F)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v3}, Lorg/cocos2d/nodes/CCNode;->RENDER_IN_SUBPIXEL(F)F

    move-result v3

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1039
    :cond_3
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->camera_:Lorg/cocos2d/opengl/CCCamera;

    invoke-virtual {v2, p1}, Lorg/cocos2d/opengl/CCCamera;->locate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1041
    if-eqz v1, :cond_4

    .line 1042
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v2, v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCNode;->RENDER_IN_SUBPIXEL(F)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCNode;->anchorPointInPixels_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v3, v3

    invoke-static {v3}, Lorg/cocos2d/nodes/CCNode;->RENDER_IN_SUBPIXEL(F)F

    move-result v3

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1078
    .end local v1    # "translate":Z
    :cond_4
    return-void

    .line 1034
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public transformAncestors(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->transformAncestors(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1089
    iget-object v0, p0, Lorg/cocos2d/nodes/CCNode;->parent_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->transform(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public unschedule(Ljava/lang/String;)V
    .locals 1
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    .line 1221
    if-nez p1, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1224
    :cond_0
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/actions/CCScheduler;->unschedule(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unschedule(Lorg/cocos2d/actions/UpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/cocos2d/actions/UpdateCallback;

    .prologue
    .line 1235
    if-nez p1, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/actions/CCScheduler;->unschedule(Lorg/cocos2d/actions/UpdateCallback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unscheduleAllSelectors()V
    .locals 1

    .prologue
    .line 1246
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCScheduler;->unscheduleAllSelectors(Ljava/lang/Object;)V

    .line 1247
    return-void
.end method

.method public unscheduleUpdate()V
    .locals 1

    .prologue
    .line 1171
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/actions/CCScheduler;->unscheduleUpdate(Ljava/lang/Object;)V

    .line 1172
    return-void
.end method

.method public visit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 970
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCNode;->visible_:Z

    if-nez v2, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 975
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 976
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v2, p1}, Lorg/cocos2d/grid/CCGridBase;->beforeDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 977
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCNode;->transformAncestors(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 980
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCNode;->transform(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 982
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 983
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 992
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCNode;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 994
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 995
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 1004
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v2}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1005
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v2, p1, p0}, Lorg/cocos2d/grid/CCGridBase;->afterDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/nodes/CCNode;)V

    .line 1008
    :cond_4
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 984
    .restart local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 985
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    iget v2, v0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    if-gez v2, :cond_2

    .line 986
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 996
    .end local v0    # "child":Lorg/cocos2d/nodes/CCNode;
    :cond_6
    iget-object v2, p0, Lorg/cocos2d/nodes/CCNode;->children_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 997
    .restart local v0    # "child":Lorg/cocos2d/nodes/CCNode;
    iget v2, v0, Lorg/cocos2d/nodes/CCNode;->zOrder_:I

    if-ltz v2, :cond_7

    .line 998
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCNode;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 995
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public worldToNodeTransform()Lorg/cocos2d/types/CGAffineTransform;
    .locals 1

    .prologue
    .line 1342
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;->nodeToWorldTransform()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/types/CGAffineTransform;->getTransformInvert()Lorg/cocos2d/types/CGAffineTransform;

    move-result-object v0

    return-object v0
.end method
