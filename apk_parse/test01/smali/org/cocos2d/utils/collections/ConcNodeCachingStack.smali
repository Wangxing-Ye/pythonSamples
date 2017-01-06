.class public Lorg/cocos2d/utils/collections/ConcNodeCachingStack;
.super Ljava/lang/Object;
.source "ConcNodeCachingStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final freeNodeUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile head:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    const-string v2, "head"

    .line 22
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 21
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    const-string v2, "freeNode"

    .line 38
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 37
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNodeUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 32
    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 9
    return-void
.end method

.method private casHead(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNodeUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private freeNode(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    .local p1, "node":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->item:Ljava/lang/Object;

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 71
    .local v0, "oldNew":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    iput-object v0, p1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 72
    invoke-direct {p0, v0, p1}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z

    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 73
    return-void
.end method

.method private newNode()Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 54
    .local v1, "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .end local v1    # "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;-><init>(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)V

    .line 58
    :goto_0
    return-object v1

    .line 56
    .restart local v1    # "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    :cond_1
    iget-object v0, v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 57
    .local v0, "newFree":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z

    move-result v2

    .line 52
    if-eqz v2, :cond_0

    goto :goto_0
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
    .line 92
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 93
    .local v1, "oldHead":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    if-nez v1, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 95
    :cond_1
    iget-object v0, v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 96
    .local v0, "newHead":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->casHead(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z

    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 97
    iget-object v2, v1, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->item:Ljava/lang/Object;

    .line 98
    .local v2, "ret":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->freeNode(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)V

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingStack;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->newNode()Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    move-result-object v0

    .line 79
    .local v0, "newHead":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    iput-object p1, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->item:Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 84
    .local v1, "oldHead":Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node<TT;>;"
    iput-object v1, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;

    .line 85
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingStack;->casHead(Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingStack$Node;)Z

    move-result v2

    .line 82
    if-eqz v2, :cond_0

    .line 86
    return-void
.end method
