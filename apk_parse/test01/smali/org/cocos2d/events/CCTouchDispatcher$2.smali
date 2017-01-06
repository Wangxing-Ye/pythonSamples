.class Lorg/cocos2d/events/CCTouchDispatcher$2;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/events/CCTouchDispatcher;->removeDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/events/CCTouchDispatcher;

.field private final synthetic val$delegate:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;


# direct methods
.method constructor <init>(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    iput-object p2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->val$delegate:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 164
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 172
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 179
    :goto_3
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 166
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->val$delegate:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-ne v2, v3, :cond_1

    .line 167
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 174
    .restart local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->val$delegate:Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    if-ne v2, v3, :cond_3

    .line 175
    iget-object v2, p0, Lorg/cocos2d/events/CCTouchDispatcher$2;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
