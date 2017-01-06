.class public final Lorg/cocos2d/utils/collections/IntMap$Entry;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/collections/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field final key:I

.field next:Lorg/cocos2d/utils/collections/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Lorg/cocos2d/utils/collections/IntMap$Entry;)V
    .locals 0
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap<TT;>.Entry<TT;>;"
    .local p2, "v":Ljava/lang/Object;, "TT;"
    .local p3, "n":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    .line 243
    iput-object p2, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    .line 244
    iput-object p3, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 245
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/utils/collections/IntMap$Entry;->clone()Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/cocos2d/utils/collections/IntMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/cocos2d/utils/collections/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap<TT;>.Entry<TT;>;"
    const/4 v1, 0x0

    .line 264
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 265
    .local v0, "clone":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;

    invoke-virtual {v2}, Lorg/cocos2d/utils/collections/IntMap$Entry;->clone()Lorg/cocos2d/utils/collections/IntMap$Entry;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lorg/cocos2d/utils/collections/IntMap$Entry;->next:Lorg/cocos2d/utils/collections/IntMap$Entry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :goto_1
    return-object v0

    .restart local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :cond_0
    move-object v2, v1

    .line 265
    goto :goto_0

    .line 267
    .end local v0    # "clone":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<TT;>;"
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 269
    goto :goto_1
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap<TT;>.Entry<TT;>;"
    iget v0, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap<TT;>.Entry<TT;>;"
    iget-object v0, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    .local p0, "this":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap<TT;>.Entry<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->key:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/utils/collections/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
