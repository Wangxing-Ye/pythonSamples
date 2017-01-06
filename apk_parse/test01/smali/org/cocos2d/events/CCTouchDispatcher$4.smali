.class Lorg/cocos2d/events/CCTouchDispatcher$4;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/events/CCTouchDispatcher;->setPriority(ILorg/cocos2d/events/CCTouchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/events/CCTouchDispatcher;

.field private final synthetic val$delegate:Lorg/cocos2d/events/CCTouchHandler;

.field private final synthetic val$priority:I


# direct methods
.method constructor <init>(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/events/CCTouchHandler;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    iput-object p2, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$delegate:Lorg/cocos2d/events/CCTouchHandler;

    iput p3, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$priority:I

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "handler":Lorg/cocos2d/events/CCTouchHandler;
    const/4 v3, 0x0

    .line 235
    .local v3, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 236
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 244
    :goto_1
    if-nez v3, :cond_4

    .line 245
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 253
    :goto_3
    if-nez v3, :cond_4

    .line 254
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Touch delegate not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 238
    .restart local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$delegate:Lorg/cocos2d/events/CCTouchHandler;

    if-ne v4, v5, :cond_1

    .line 239
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->targetedHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$0(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 240
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 236
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 246
    :cond_2
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 247
    .restart local v0    # "handler":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$delegate:Lorg/cocos2d/events/CCTouchHandler;

    if-ne v4, v5, :cond_3

    .line 248
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # getter for: Lorg/cocos2d/events/CCTouchDispatcher;->touchHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/cocos2d/events/CCTouchDispatcher;->access$1(Lorg/cocos2d/events/CCTouchDispatcher;)Ljava/util/ArrayList;

    move-result-object v3

    .line 249
    goto :goto_3

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    :cond_4
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getPriority()I

    move-result v4

    iget v5, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$priority:I

    if-eq v4, v5, :cond_5

    .line 258
    iget v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->val$priority:I

    invoke-virtual {v0, v4}, Lorg/cocos2d/events/CCTouchHandler;->setPriority(I)V

    .line 260
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$4;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    # invokes: Lorg/cocos2d/events/CCTouchDispatcher;->addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V
    invoke-static {v4, v0, v3}, Lorg/cocos2d/events/CCTouchDispatcher;->access$2(Lorg/cocos2d/events/CCTouchDispatcher;Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V

    .line 263
    :cond_5
    return-void
.end method
