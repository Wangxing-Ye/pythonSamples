.class Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
.super Ljava/lang/Object;
.source "ConcNodeCachingLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
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
.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;",
            "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile next:Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;
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
    .line 16
    const-class v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    const-class v1, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;

    const-string v2, "next"

    .line 15
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 14
    sput-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>.Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;-><init>()V

    return-void
.end method


# virtual methods
.method casNext(Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;)Z
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
    .line 19
    .local p0, "this":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue<TE;>.Node<TE;>;"
    .local p1, "cmp":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    .local p2, "val":Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;, "Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node<TE;>;"
    sget-object v0, Lorg/cocos2d/utils/collections/ConcNodeCachingLinkedQueue$Node;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
