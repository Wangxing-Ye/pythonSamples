.class public Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCScrollViewTest.java"


# instance fields
.field backgroundLayer:Lorg/cocos2d/layers/CCColorLayer;

.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;


# direct methods
.method constructor <init>()V
    .locals 11

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, 0x42480000    # 50.0f

    const/16 v5, 0x37

    const/high16 v8, 0x447a0000    # 1000.0f

    const/16 v6, 0xff

    .line 50
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 52
    invoke-static {v5, v5, v5, v6}, Lorg/cocos2d/types/ccColor4B;->ccc4(IIII)Lorg/cocos2d/types/ccColor4B;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/layers/CCColorLayer;->node(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/layers/CCColorLayer;

    move-result-object v2

    .line 53
    .local v2, "layer":Lorg/cocos2d/layers/CCColorLayer;
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/extensions/scroll/CCScrollView;->view(Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/extensions/scroll/CCScrollView;

    move-result-object v5

    iput-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->contents:Ljava/util/ArrayList;

    .line 56
    invoke-static {v6, v6, v6, v6}, Lorg/cocos2d/types/ccColor4B;->ccc4(IIII)Lorg/cocos2d/types/ccColor4B;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/layers/CCColorLayer;->node(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/layers/CCColorLayer;

    move-result-object v5

    iput-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->backgroundLayer:Lorg/cocos2d/layers/CCColorLayer;

    .line 57
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    .line 60
    .local v4, "winSize":Lorg/cocos2d/types/CGSize;
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    const/high16 v6, 0x44160000    # 600.0f

    invoke-static {v6, v8}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 62
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/cocos2d/extensions/scroll/CCScrollView;->bounces:Z

    .line 65
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    invoke-virtual {v5}, Lorg/cocos2d/extensions/scroll/CCScrollView;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/layers/CCColorLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 67
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    invoke-virtual {v5, v2}, Lorg/cocos2d/extensions/scroll/CCScrollView;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x64

    if-lt v0, v5, :cond_0

    .line 79
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    iget-object v6, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->backgroundLayer:Lorg/cocos2d/layers/CCColorLayer;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/cocos2d/extensions/scroll/CCScrollView;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 80
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6}, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 82
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    iget v6, v4, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v6, v10

    iget v7, v4, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v7, v10

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setViewSize(Lorg/cocos2d/types/CGSize;)V

    .line 83
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    invoke-static {v9, v9}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/extensions/scroll/CCScrollView;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 89
    return-void

    .line 71
    :cond_0
    const-string v5, "Test"

    const-string v6, ""

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v6, v7}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    .line 73
    .local v1, "label":Lorg/cocos2d/nodes/CCLabel;
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 75
    .local v3, "rnd":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v6, v8

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/nodes/CCLabel;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 76
    iget-object v5, p0, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;->scrollView:Lorg/cocos2d/extensions/scroll/CCScrollView;

    invoke-virtual {v5, v1}, Lorg/cocos2d/extensions/scroll/CCScrollView;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Scene()Lorg/cocos2d/layers/CCScene;
    .locals 5

    .prologue
    .line 29
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v3

    .line 35
    .local v3, "scene":Lorg/cocos2d/layers/CCScene;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-lt v1, v4, :cond_0

    .line 45
    new-instance v4, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;

    invoke-direct {v4}, Lorg/cocos2d/extensions/scroll/tests/CCScrollViewTest;-><init>()V

    invoke-virtual {v3, v4}, Lorg/cocos2d/layers/CCScene;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 47
    return-object v3

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "Icon.png"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "iconName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
