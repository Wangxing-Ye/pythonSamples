.class Lorg/cocos2d/transitions/CCTransitionScene$TransitionWithInvalidSceneException;
.super Ljava/lang/RuntimeException;
.source "CCTransitionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/transitions/CCTransitionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionWithInvalidSceneException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18321ef8b8de2bf3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    return-void
.end method
