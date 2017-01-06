.class final Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/cocos2d/utils/collections/IntMap$Entry",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private cur:Lorg/cocos2d/utils/collections/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field private el:I

.field private idx:I

.field final synthetic this$0:Lorg/cocos2d/utils/collections/IntMap;


# direct methods
.method public constructor <init>(Lorg/cocos2d/utils/collections/IntMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object p1, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->this$0:Lorg/cocos2d/utils/collections/IntMap;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput v1, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->idx:I

    .line 189
    iput v1, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    .line 192
    # getter for: Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;
    invoke-static {p1}, Lorg/cocos2d/utils/collections/IntMap;->access$1(Lorg/cocos2d/utils/collections/IntMap;)[Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    iget-object v1, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->this$0:Lorg/cocos2d/utils/collections/IntMap;

    # getter for: Lorg/cocos2d/utils/collections/IntMap;->size:I
    invoke-static {v1}, Lorg/cocos2d/utils/collections/IntMap;->access$2(Lorg/cocos2d/utils/collections/IntMap;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->next()Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/cocos2d/utils/collections/IntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    iget v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    iget-object v3, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->this$0:Lorg/cocos2d/utils/collections/IntMap;

    # getter for: Lorg/cocos2d/utils/collections/IntMap;->size:I
    invoke-static {v3}, Lorg/cocos2d/utils/collections/IntMap;->access$2(Lorg/cocos2d/utils/collections/IntMap;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 203
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No more elements!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    if-eqz v2, :cond_1

    .line 206
    iget-object v0, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 207
    .local v0, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    iget-object v2, v2, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    iput-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 208
    iget v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    move-object v1, v0

    .line 226
    .end local v0    # "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    .local v1, "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_0
    return-object v1

    .line 221
    .end local v1    # "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->this$0:Lorg/cocos2d/utils/collections/IntMap;

    # getter for: Lorg/cocos2d/utils/collections/IntMap;->table:[Lorg/cocos2d/utils/collections/IntMap$Entry;
    invoke-static {v2}, Lorg/cocos2d/utils/collections/IntMap;->access$1(Lorg/cocos2d/utils/collections/IntMap;)[Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->idx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->idx:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 222
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    if-eqz v2, :cond_1

    .line 223
    iget-object v0, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 224
    .restart local v0    # "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    iget-object v2, v2, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    iput-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->cur:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 225
    iget v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/utils/collections/IntMap$IntMapIterator;->el:I

    move-object v1, v0

    .line 226
    .end local v0    # "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    .restart local v1    # "e":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    goto :goto_0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
