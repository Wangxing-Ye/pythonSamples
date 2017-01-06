.class public Lcom/sns/game/database/dao/StoreItemDao;
.super Ljava/lang/Object;
.source "StoreItemDao.java"


# static fields
.field public static final ITEM_JBK_ID_PRICE_10:I = 0x2728

.field public static final ITEM_JBK_ID_PRICE_2:I = 0x2725

.field public static final ITEM_JBK_ID_PRICE_5:I = 0x2726

.field public static final ITEM_JBK_ID_PRICE_8:I = 0x2727

.field public static final ITEM_PAYTYPE_FREE:I = 0x0

.field public static final ITEM_PAYTYPE_GOLD:I = 0x1

.field public static final ITEM_PAYTYPE_MONEY:I = 0x2

.field public static final ITEM_TYPE_DEFAULT:I = 0x0

.field public static final ITEM_TYPE_GIFT_JBK:I = 0x4

.field public static final ITEM_TYPE_NORMAL_JBK:I = 0x3

.field public static final ITEM_TYPE_WEAPON:I = 0x1

.field public static final ITEM_TYPE_XSJBLB:I = -0x1

.field public static final SELLGOLD_ID_10029:I = 0x272d

.field public static final SELLGOLD_ID_10030:I = 0x272e

.field public static final SELLGOLD_ID_10031:I = 0x272f

.field public static final SELLGOLD_ID_10032:I = 0x2730

.field private static itemDao:Lcom/sns/game/database/dao/StoreItemDao;


# instance fields
.field private cacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sns/game/database/dao/StoreItemDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/StoreItemDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/StoreItemDao;->itemDao:Lcom/sns/game/database/dao/StoreItemDao;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lcom/sns/game/database/dao/StoreItemDao;->initCacheList()V

    .line 54
    return-void
.end method

.method private initCacheList()V
    .locals 6

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "select * from store order by store.[id];"

    .line 79
    .local v3, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 88
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 90
    .end local v3    # "sql":Ljava/lang/String;
    :goto_1
    return-void

    .line 81
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sns/game/database/dao/StoreItemDao;->createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v0

    .line 82
    .local v0, "bean":Lcom/sns/game/database/bean/StoreItemBean;
    iget-object v4, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "bean":Lcom/sns/game/database/bean/StoreItemBean;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 86
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 88
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 89
    throw v4
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/StoreItemDao;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sns/game/database/dao/StoreItemDao;->itemDao:Lcom/sns/game/database/dao/StoreItemDao;

    return-object v0
.end method


# virtual methods
.method public cleareCache()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    .line 72
    :cond_0
    return-void
.end method

.method public createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 312
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 313
    .local v3, "mTool":Lcom/sns/game/database/DBTool;
    const/4 v1, 0x0

    .line 315
    .local v1, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :try_start_0
    new-instance v2, Lcom/sns/game/database/bean/StoreItemBean;

    invoke-direct {v2}, Lcom/sns/game/database/bean/StoreItemBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    .local v2, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :try_start_1
    const-string v4, "recordNo_key"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setRecordNo_key(I)V

    .line 317
    const-string v4, "id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setId(I)V

    .line 318
    const-string v4, "item_type"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setItem_type(I)V

    .line 319
    const-string v4, "pay_type"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setPay_type(I)V

    .line 320
    const-string v4, "price"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setPrice(I)V

    .line 321
    const-string v4, "gold"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setGold(I)V

    .line 322
    const-string v4, "name"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setName(Ljava/lang/String;)V

    .line 323
    const-string v4, "item_icon"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setItem_icon(Ljava/lang/String;)V

    .line 324
    const-string v4, "desc_icon"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sns/game/database/bean/StoreItemBean;->setDesc_icon(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 329
    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    .restart local v1    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :goto_0
    return-object v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    .line 327
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    .restart local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    .restart local v1    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    goto :goto_1
.end method

.method public findAllWqkItemBeans()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 143
    .local v1, "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_0
    const-string v5, "select * from store where store.[item_type] in (0, 1) order by store.[id];"

    .line 146
    .local v5, "sql":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v2, "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 148
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    .line 159
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 162
    .end local v2    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_1
    return-object v1

    .line 150
    .end local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v2    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sns/game/database/dao/StoreItemDao;->createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v0

    .line 151
    .local v0, "bean":Lcom/sns/game/database/bean/StoreItemBean;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 154
    .end local v0    # "bean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 155
    .end local v2    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .end local v5    # "sql":Ljava/lang/String;
    .restart local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 156
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 158
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 159
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 160
    throw v6

    .line 158
    .end local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v2    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v1    # "beanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    goto :goto_3

    .line 154
    .end local v5    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public findStoreItem(I)Lcom/sns/game/database/bean/StoreItemBean;
    .locals 6
    .param p1, "storeItemId"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 291
    .local v2, "storeItemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select * from store where store.id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/StoreItemDao;->createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 300
    :cond_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 302
    :goto_0
    return-object v2

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 298
    :try_start_1
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 300
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 301
    throw v3
.end method

.method public findStoreItemListByPayType(I)Ljava/util/List;
    .locals 8
    .param p1, "payType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 205
    .local v3, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v4, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from store where store.pay_type = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    const-string v7, " order by store.item_type;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 219
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 221
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_1
    return-object v3

    .line 210
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/StoreItemDao;->createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v2

    .line 211
    .local v2, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 215
    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 216
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 217
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 219
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 220
    throw v5

    .line 218
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    goto :goto_3

    .line 215
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public findStoreItemListToWeaponCard()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 228
    .local v5, "tool":Lcom/sns/game/database/DBTool;
    const/4 v3, 0x0

    .line 230
    .local v3, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    .line 231
    const-string v7, "select store.id, store.item_icon from store where pay_type = 1 and item_type = 1 or item_type = 0 order by id;"

    .line 230
    invoke-virtual {v6, v7}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v4, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    .line 249
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 251
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_1
    return-object v3

    .line 238
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :cond_0
    :try_start_2
    new-instance v2, Lcom/sns/game/database/bean/StoreItemBean;

    invoke-direct {v2}, Lcom/sns/game/database/bean/StoreItemBean;-><init>()V

    .line 239
    .local v2, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    const-string v6, "id"

    invoke-virtual {v5, v0, v6}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/StoreItemBean;->setId(I)V

    .line 240
    const-string v6, "item_icon"

    invoke-virtual {v5, v0, v6}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/StoreItemBean;->setItem_icon(Ljava/lang/String;)V

    .line 242
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 245
    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 246
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 247
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 249
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 250
    throw v6

    .line 248
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    goto :goto_3

    .line 245
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public findStoreItemListToZombieCard()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 257
    .local v5, "tool":Lcom/sns/game/database/DBTool;
    const/4 v3, 0x0

    .line 259
    .local v3, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    .line 260
    const-string v7, "select store.id, store.item_icon from store where pay_type = 1 and item_type = 2 order by id;"

    .line 259
    invoke-virtual {v6, v7}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v4, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    .line 277
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 279
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_1
    return-object v3

    .line 266
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :cond_0
    :try_start_2
    new-instance v2, Lcom/sns/game/database/bean/StoreItemBean;

    invoke-direct {v2}, Lcom/sns/game/database/bean/StoreItemBean;-><init>()V

    .line 267
    .local v2, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    const-string v6, "id"

    invoke-virtual {v5, v0, v6}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/StoreItemBean;->setId(I)V

    .line 268
    const-string v6, "item_icon"

    invoke-virtual {v5, v0, v6}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sns/game/database/bean/StoreItemBean;->setItem_icon(Ljava/lang/String;)V

    .line 270
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 273
    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 274
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 275
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 277
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 278
    throw v6

    .line 276
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    goto :goto_3

    .line 273
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public finsAllStoreItemList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/StoreItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 178
    .local v3, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v4, "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 180
    const-string v6, "select * from store order by store.item_type;"

    .line 179
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 181
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 191
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 193
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_1
    return-object v3

    .line 182
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/StoreItemDao;->createStoreItemBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/StoreItemBean;

    move-result-object v2

    .line 183
    .local v2, "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    if-eqz v2, :cond_0

    .line 184
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 187
    .end local v2    # "itemBean":Lcom/sns/game/database/bean/StoreItemBean;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 188
    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 189
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 191
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 192
    throw v5

    .line 190
    .end local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    .restart local v3    # "storeItemBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/StoreItemBean;>;"
    goto :goto_3

    .line 187
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public get4Cache(I)Lcom/sns/game/database/bean/StoreItemBean;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/database/dao/StoreItemDao;->cacheList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/database/bean/StoreItemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method
