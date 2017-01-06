.class public Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;
.super Ljava/lang/Object;
.source "ConcNodeCachingLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
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
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile head:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile tail:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    const-string v2, "tail"

    .line 28
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 27
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    const-string v2, "head"

    .line 34
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 33
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 66
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    const-string v2, "freeNode"

    .line 65
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 64
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNodeUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    invoke-direct {v0, v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;-><init>(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)V

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 53
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    iput-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tail:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 59
    iput-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 5
    return-void
.end method

.method private casHead(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNodeUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tailUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private freeNode(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    .local p1, "node":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 98
    .local v0, "oldNew":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iput-object v0, p1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 99
    invoke-direct {p0, v0, p1}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 100
    return-void
.end method

.method private newNode()Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNode:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 81
    .local v1, "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_1

    .line 82
    new-instance v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .end local v1    # "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;-><init>(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)V

    .line 85
    :goto_0
    return-object v1

    .line 83
    .restart local v1    # "ret":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    :cond_1
    iget-object v0, v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 84
    .local v0, "newFree":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casNewNode(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    move-result v2

    .line 79
    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    const/4 v4, 0x0

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 129
    .local v1, "h":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tail:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 130
    .local v3, "t":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iget-object v0, v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 131
    .local v0, "first":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iget-object v5, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->head:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    if-ne v1, v5, :cond_0

    .line 132
    if-ne v1, v3, :cond_2

    .line 133
    if-nez v0, :cond_1

    move-object v2, v4

    .line 142
    :goto_1
    return-object v2

    .line 136
    :cond_1
    invoke-direct {p0, v3, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casTail(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casHead(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-direct {p0, v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->freeNode(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)V

    .line 139
    iget-object v2, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 140
    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 141
    iput-object v4, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->item:Ljava/lang/Object;

    goto :goto_1
.end method

.method public push(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->newNode()Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    move-result-object v0

    .line 107
    .local v0, "n":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iput-object p1, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 108
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 111
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tail:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 112
    .local v2, "t":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iget-object v1, v2, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    .line 113
    .local v1, "s":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->tail:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    if-ne v2, v3, :cond_0

    .line 114
    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v2, v1, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->casNext(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-direct {p0, v2, v0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casTail(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    .line 117
    return-void

    .line 120
    :cond_1
    invoke-direct {p0, v2, v1}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;->casTail(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z

    goto :goto_0
.end method
