.class public final Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
.super Ljava/lang/Object;
.source "ConcurrentArrayHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap",
            "<TK;TV;>.Entry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->this$0:Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/cocos2d/utils/collections/ConcurrentArrayHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
