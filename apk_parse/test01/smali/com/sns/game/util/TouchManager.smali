.class public Lcom/sns/game/util/TouchManager;
.super Ljava/lang/Object;
.source "TouchManager.java"


# static fields
.field private static manager:Lcom/sns/game/util/TouchManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager()Lcom/sns/game/util/TouchManager;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sns/game/util/TouchManager;->manager:Lcom/sns/game/util/TouchManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/sns/game/util/TouchManager;

    invoke-direct {v0}, Lcom/sns/game/util/TouchManager;-><init>()V

    sput-object v0, Lcom/sns/game/util/TouchManager;->manager:Lcom/sns/game/util/TouchManager;

    .line 19
    :cond_0
    sget-object v0, Lcom/sns/game/util/TouchManager;->manager:Lcom/sns/game/util/TouchManager;

    return-object v0
.end method


# virtual methods
.method public containsPoint(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGPoint;)Z
    .locals 3
    .param p1, "argNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "touchPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getBoundingBoxRef()Lorg/cocos2d/types/CGRect;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeCGPoint(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 24
    .local v0, "touchPoint_":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 25
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCNode;->convertToNodeSpace(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    return-object v1
.end method
