.class public Lcom/sns/game/database/bean/StoreItemBean;
.super Ljava/lang/Object;
.source "StoreItemBean.java"


# instance fields
.field private desc_icon:Ljava/lang/String;

.field private gold:I

.field private id:I

.field private item_icon:Ljava/lang/String;

.field private item_type:I

.field private name:Ljava/lang/String;

.field private pay_type:I

.field private price:I

.field private recordNo_key:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getGold()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->gold:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->id:I

    return v0
.end method

.method public getItem_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_type()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_type:I

    return v0
.end method

.method public getJbkMoneyImgName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 111
    :try_start_0
    iget-object v5, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    iget-object v6, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "suffix":Ljava/lang/String;
    iget-object v5, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    iget-object v6, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "center":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "split":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 118
    .end local v0    # "center":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 118
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getJbkSpeicalImgName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 124
    :try_start_0
    iget-object v6, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    iget-object v7, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "suffix":Ljava/lang/String;
    iget-object v6, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    iget-object v7, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "center":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "split":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 131
    .end local v0    # "center":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_type()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->pay_type:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->price:I

    return v0
.end method

.method public getRecordNo_key()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->recordNo_key:I

    return v0
.end method

.method public getTotalPrice(I)I
    .locals 1
    .param p1, "payCount"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sns/game/database/bean/StoreItemBean;->getPrice()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method public getWqkBulletNumImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sns/game/database/bean/StoreItemBean;->getJbkMoneyImgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->recordNo_key:I

    .line 140
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->id:I

    .line 141
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_type:I

    .line 142
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->pay_type:I

    .line 143
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->price:I

    .line 144
    iput v0, p0, Lcom/sns/game/database/bean/StoreItemBean;->gold:I

    .line 145
    iput-object v1, p0, Lcom/sns/game/database/bean/StoreItemBean;->name:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_icon:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDesc_icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_icon"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->desc_icon:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setGold(I)V
    .locals 0
    .param p1, "gold"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->gold:I

    .line 80
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->id:I

    .line 56
    return-void
.end method

.method public setItem_icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "item_icon"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_icon:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setItem_type(I)V
    .locals 0
    .param p1, "item_type"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->item_type:I

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPay_type(I)V
    .locals 0
    .param p1, "pay_type"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->pay_type:I

    .line 68
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "price"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->price:I

    .line 74
    return-void
.end method

.method public setRecordNo_key(I)V
    .locals 0
    .param p1, "recordNo_key"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sns/game/database/bean/StoreItemBean;->recordNo_key:I

    .line 50
    return-void
.end method
