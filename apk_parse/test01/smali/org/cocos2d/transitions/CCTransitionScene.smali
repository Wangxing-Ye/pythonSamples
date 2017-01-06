.class public Lorg/cocos2d/transitions/CCTransitionScene;
.super Lorg/cocos2d/layers/CCScene;
.source "CCTransitionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/transitions/CCTransitionScene$TransitionWithInvalidSceneException;,
        Lorg/cocos2d/transitions/CCTransitionScene$tOrientation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final kSceneFade:I = -0x5210522


# instance fields
.field protected duration:F

.field protected inScene:Lorg/cocos2d/layers/CCScene;

.field protected inSceneOnTop:Z

.field protected outScene:Lorg/cocos2d/layers/CCScene;

.field protected sendCleanupToScene:Z

.field private setNewSceneCallback:Lorg/cocos2d/actions/UpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/cocos2d/transitions/CCTransitionScene;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/transitions/CCTransitionScene;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(FLorg/cocos2d/layers/CCScene;)V
    .locals 2
    .param p1, "t"    # F
    .param p2, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cocos2d/layers/CCScene;-><init>()V

    .line 86
    new-instance v0, Lorg/cocos2d/transitions/CCTransitionScene$1;

    invoke-direct {v0, p0}, Lorg/cocos2d/transitions/CCTransitionScene$1;-><init>(Lorg/cocos2d/transitions/CCTransitionScene;)V

    iput-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->setNewSceneCallback:Lorg/cocos2d/actions/UpdateCallback;

    .line 52
    sget-boolean v0, Lorg/cocos2d/transitions/CCTransitionScene;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument scene must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 54
    :cond_0
    iput p1, p0, Lorg/cocos2d/transitions/CCTransitionScene;->duration:F

    .line 57
    iput-object p2, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    .line 58
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getRunningScene()Lorg/cocos2d/layers/CCScene;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    .line 60
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    iget-object v1, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    if-ne v0, v1, :cond_1

    .line 61
    new-instance v0, Lorg/cocos2d/transitions/CCTransitionScene$TransitionWithInvalidSceneException;

    const-string v1, "Incoming scene must be different from the outgoing scene"

    invoke-direct {v0, v1}, Lorg/cocos2d/transitions/CCTransitionScene$TransitionWithInvalidSceneException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->setDispatchEvents(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/cocos2d/transitions/CCTransitionScene;->sceneOrder()V

    .line 67
    return-void
.end method

.method public static transition(FLorg/cocos2d/layers/CCScene;)Lorg/cocos2d/transitions/CCTransitionScene;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 45
    new-instance v0, Lorg/cocos2d/transitions/CCTransitionScene;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/transitions/CCTransitionScene;-><init>(FLorg/cocos2d/layers/CCScene;)V

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lorg/cocos2d/layers/CCScene;->cleanup()V

    .line 164
    iget-boolean v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->sendCleanupToScene:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->cleanup()V

    .line 167
    :cond_0
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inSceneOnTop:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 81
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 96
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 98
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    sget v1, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setScaleX(F)V

    .line 99
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    sget v1, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setScaleY(F)V

    .line 100
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/layers/CCScene;->setAnchorPoint(FF)V

    .line 101
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v2}, Lorg/cocos2d/layers/CCScene;->setRotation(F)V

    .line 102
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCCamera;->restore()V

    .line 104
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 105
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 107
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v2}, Lorg/cocos2d/layers/CCScene;->setRotation(F)V

    .line 108
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCCamera;->restore()V

    .line 110
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->setNewSceneCallback:Lorg/cocos2d/actions/UpdateCallback;

    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCTransitionScene;->schedule(Lorg/cocos2d/actions/UpdateCallback;)V

    .line 111
    return-void
.end method

.method public hideOutShowIn()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 131
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 132
    return-void
.end method

.method public onEnter()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lorg/cocos2d/layers/CCScene;->onEnter()V

    .line 138
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->onEnter()V

    .line 140
    return-void
.end method

.method public onEnterTransitionDidFinish()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lorg/cocos2d/layers/CCScene;->onEnterTransitionDidFinish()V

    .line 157
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lorg/cocos2d/layers/CCScene;->onExit()V

    .line 147
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->onExit()V

    .line 151
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->onEnterTransitionDidFinish()V

    .line 152
    return-void
.end method

.method protected sceneOrder()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inSceneOnTop:Z

    .line 72
    return-void
.end method

.method public setNewScene(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->setNewSceneCallback:Lorg/cocos2d/actions/UpdateCallback;

    invoke-virtual {p0, v0}, Lorg/cocos2d/transitions/CCTransitionScene;->unschedule(Lorg/cocos2d/actions/UpdateCallback;)V

    .line 116
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getSendCleanupToScene()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->sendCleanupToScene:Z

    .line 117
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/transitions/CCTransitionScene;->inScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->replaceScene(Lorg/cocos2d/layers/CCScene;)V

    .line 120
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->setDispatchEvents(Z)V

    .line 123
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene;->outScene:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, v2}, Lorg/cocos2d/layers/CCScene;->setVisible(Z)V

    .line 124
    return-void
.end method
