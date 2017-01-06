.class public Lorg/cocos2d/utils/collections/ConcArrayStack;
.super Ljava/lang/Object;
.source "ConcArrayStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcArrayStack;, "Lorg/cocos2d/utils/collections/ConcArrayStack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->array:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcArrayStack;, "Lorg/cocos2d/utils/collections/ConcArrayStack<TT;>;"
    const/4 v0, 0x0

    .line 25
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 27
    iget-object v2, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28
    .local v1, "s":I
    if-lez v1, :cond_0

    .line 29
    iget-object v2, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->array:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcArrayStack;, "Lorg/cocos2d/utils/collections/ConcArrayStack<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcArrayStack;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    return-void
.end method
