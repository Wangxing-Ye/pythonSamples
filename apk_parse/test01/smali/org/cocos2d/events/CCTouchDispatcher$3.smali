.class Lorg/cocos2d/events/CCTouchDispatcher$3;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/events/CCTouchDispatcher;->removeAllDelegates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/events/CCTouchDispatcher;


# direct methods
.method constructor <init>(Lorg/cocos2d/events/CCTouchDispatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchDispatcher$3;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher$3;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lorg/cocos2d/events/CCTouchDispatcher$3;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    return-void
.end method
