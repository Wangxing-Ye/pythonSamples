.class Lorg/cocos2d/events/CCTouchDispatcher$1;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/events/CCTouchDispatcher;->addHandler(Lorg/cocos2d/events/CCTouchHandler;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/events/CCTouchDispatcher;

.field private final synthetic val$array:Ljava/util/ArrayList;

.field private final synthetic val$handler:Lorg/cocos2d/events/CCTouchHandler;


# direct methods
.method constructor <init>(Lorg/cocos2d/events/CCTouchDispatcher;Ljava/util/ArrayList;Lorg/cocos2d/events/CCTouchHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    iput-object p2, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$array:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$handler:Lorg/cocos2d/events/CCTouchHandler;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "ind":I
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 142
    iget-object v3, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$array:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$handler:Lorg/cocos2d/events/CCTouchHandler;

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$array:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchHandler;

    .line 136
    .local v0, "h":Lorg/cocos2d/events/CCTouchHandler;
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getPriority()I

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$handler:Lorg/cocos2d/events/CCTouchHandler;

    invoke-virtual {v4}, Lorg/cocos2d/events/CCTouchHandler;->getPriority()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 139
    :cond_1
    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/events/CCTouchDispatcher$1;->val$handler:Lorg/cocos2d/events/CCTouchHandler;

    invoke-virtual {v4}, Lorg/cocos2d/events/CCTouchHandler;->getDelegate()Lorg/cocos2d/protocols/CCTouchDelegateProtocol;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 140
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Delegate already added to touch dispatcher."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
