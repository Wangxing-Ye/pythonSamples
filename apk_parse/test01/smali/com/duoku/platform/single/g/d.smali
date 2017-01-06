.class public final Lcom/duoku/platform/single/g/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "JSONParser"


# instance fields
.field private b:Lcom/duoku/platform/single/util/H;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/g/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag 149 json is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/n;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/n;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/n;->e(I)V

    const-string v2, "wxPayInfoEncrypt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/single/h/a/n;->a:Ljava/lang/String;

    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag145 json is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/r;

    invoke-direct {v1, v0}, Lcom/duoku/platform/single/h/a/r;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/r;->e(I)V

    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/r;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/h/a/r;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/h/a/r;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/h/a/r;->e(I)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/r;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/u;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/u;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/u;->f(I)V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orderstatus"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v4}, Lcom/duoku/platform/single/h/a/u;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/u;->a(I)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/u;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/u;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/u;->e(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/u;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/q;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/q;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->f(I)V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orderstatus"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "orderid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/q;->k(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/duoku/platform/single/h/a/q;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/duoku/platform/single/h/a/q;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/duoku/platform/single/h/a/q;->a(I)V

    const-string v2, "orderprice"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "orderprice"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/q;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->e(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/q;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/q;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->f(I)V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orderstatus"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "orderid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/q;->k(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/duoku/platform/single/h/a/q;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/q;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/duoku/platform/single/h/a/q;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->e(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/q;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 9

    iget-object v0, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-response data tag 46 is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/h/a/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/b;-><init>()V

    new-instance v2, Lcom/duoku/platform/single/item/e;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/e;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errorcode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errormsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v5, "accept_time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/h/a/b;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/b;->k(Ljava/lang/String;)V

    const-string v3, "main_page_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/e;->c(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "main_page_data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/e;->a(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/h/a/b;->a(Lcom/duoku/platform/single/item/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v6, Lcom/duoku/platform/single/item/i;

    invoke-direct {v6}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "game_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    const-string v8, "game_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    const-string v8, "game_icon_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    const-string v8, "game_download_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    const-string v8, "apk_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    const-string v8, "apk_size"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    const-string v8, "packagename"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    const-string v8, "vercode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->a(I)V

    const-string v8, "downloaded"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    const-string v8, "hdown_flag"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/duoku/platform/single/item/i;->b(I)V

    const-string v8, "hdown_apkname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    const-string v4, "-json exception :tag 46 main page data is null"

    invoke-virtual {v1, v4}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public h(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 14

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/duoku/platform/single/h/a/b;

    invoke-direct {v3}, Lcom/duoku/platform/single/h/a/b;-><init>()V

    new-instance v4, Lcom/duoku/platform/single/item/e;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/e;-><init>()V

    :try_start_0
    const-string v1, "errorcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "errormsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const-string v6, "accept_time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-virtual {v3, v5}, Lcom/duoku/platform/single/h/a/b;->k(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/duoku/platform/single/h/a/b;->l(Ljava/lang/String;)V

    const-string v1, "main_page_type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/item/e;->c(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "main_page_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v0

    :goto_1
    if-lt v1, v7, :cond_3

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/e;->a(Ljava/util/List;)V

    const-string v1, "flag_show_exit_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/item/e;->b(I)V

    const-string v1, "luck_flag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/item/e;->d(I)V

    const-string v1, "downshowflag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/item/e;->e(I)V

    const-string v1, "exit_page_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "flag_point_recommend"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/e;->a(I)V

    const-string v5, "more_game_url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/e;->a(Ljava/lang/String;)V

    const-string v5, "games_point_recommend_list"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v0

    :goto_2
    if-lt v1, v7, :cond_4

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/e;->b(Ljava/util/List;)V

    :cond_1
    const-string v1, "hdown_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "hdown_gameid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hdown_pkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/item/e;->e(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/e;->f(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/e;->g(Ljava/lang/String;)V

    const-string v1, "logo_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "logo_url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    new-instance v6, Lcom/duoku/platform/single/item/l;

    invoke-direct {v6, v1, v5}, Lcom/duoku/platform/single/item/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/e;->a(Lcom/duoku/platform/single/item/l;)V

    :cond_2
    const-string v1, "ads_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "bannerads"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v1, "insertads"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v1, "an_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v8, Lcom/duoku/platform/single/item/c;

    invoke-direct {v8}, Lcom/duoku/platform/single/item/c;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v1, v0

    :goto_3
    if-lt v1, v10, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_4
    if-lt v0, v6, :cond_6

    new-instance v0, Lcom/duoku/platform/single/item/f;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/f;-><init>()V

    const-string v6, "an_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->a(I)V

    const-string v6, "an_text"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->a(Ljava/lang/String;)V

    const-string v6, "an_img"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->b(Ljava/lang/String;)V

    const-string v6, "an_gid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->c(Ljava/lang/String;)V

    const-string v6, "an_gname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->d(Ljava/lang/String;)V

    const-string v6, "an_gdl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->e(Ljava/lang/String;)V

    const-string v6, "an_apkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->f(Ljava/lang/String;)V

    const-string v6, "an_apksize"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->g(Ljava/lang/String;)V

    const-string v6, "hdown_flag"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->b(I)V

    const-string v6, "hdown_apkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->h(Ljava/lang/String;)V

    const-string v6, "dldesc"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->i(Ljava/lang/String;)V

    const-string v6, "packagename"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/f;->j(Ljava/lang/String;)V

    const-string v6, "an_lottery"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/item/f;->c(I)V

    const-string v2, "adstime"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/duoku/platform/single/item/c;->a(I)V

    invoke-virtual {v8, v9}, Lcom/duoku/platform/single/item/c;->a(Ljava/util/List;)V

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/item/c;->b(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Lcom/duoku/platform/single/item/e;->a(Lcom/duoku/platform/single/item/c;)V

    invoke-virtual {v4, v0}, Lcom/duoku/platform/single/item/e;->a(Lcom/duoku/platform/single/item/f;)V

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/h/a/b;->a(Lcom/duoku/platform/single/item/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xbb8

    invoke-virtual {v3, v1}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v8, Lcom/duoku/platform/single/item/i;

    invoke-direct {v8}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "game_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    const-string v10, "game_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    const-string v10, "game_icon_url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    const-string v10, "game_download_url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    const-string v10, "apk_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    const-string v10, "apk_size"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    const-string v10, "packagename"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    const-string v10, "vercode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->a(I)V

    const-string v10, "downloaded"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    const-string v10, "hdown_flag"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->b(I)V

    const-string v10, "hdown_apkname"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    const-string v10, "dldesc"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/duoku/platform/single/item/g;

    invoke-direct {v9}, Lcom/duoku/platform/single/item/g;-><init>()V

    const-string v10, "game_id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->a(Ljava/lang/String;)V

    const-string v10, "game_title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->b(Ljava/lang/String;)V

    const-string v10, "game_content"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->c(Ljava/lang/String;)V

    const-string v10, "game_img_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->d(Ljava/lang/String;)V

    const-string v10, "game_download_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->e(Ljava/lang/String;)V

    const-string v10, "style_index"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->a(I)V

    const-string v10, "apk_name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->f(Ljava/lang/String;)V

    const-string v10, "apk_size"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->g(Ljava/lang/String;)V

    const-string v10, "packagename"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->h(Ljava/lang/String;)V

    const-string v10, "vercode"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->b(I)V

    const-string v10, "hdown_flag"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->c(I)V

    const-string v10, "hdown_apkname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->i(Ljava/lang/String;)V

    const-string v10, "dldesc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/duoku/platform/single/item/g;->j(Ljava/lang/String;)V

    const-string v10, "downloadNum"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/duoku/platform/single/item/g;->d(I)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/duoku/platform/single/item/b;

    invoke-direct {v12}, Lcom/duoku/platform/single/item/b;-><init>()V

    const-string v13, "ban_style"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->a(I)V

    const-string v13, "ban_time"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->b(I)V

    const-string v13, "ban_icon"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->a(Ljava/lang/String;)V

    const-string v13, "ban_dl"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->b(Ljava/lang/String;)V

    const-string v13, "ban_gname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->c(Ljava/lang/String;)V

    const-string v13, "ban_gid"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->d(Ljava/lang/String;)V

    const-string v13, "ban_apkname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->e(Ljava/lang/String;)V

    const-string v13, "ban_apksize"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->f(Ljava/lang/String;)V

    const-string v13, "hdown_flag"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->c(I)V

    const-string v13, "hdown_apkname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->g(Ljava/lang/String;)V

    const-string v13, "dldesc"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->h(Ljava/lang/String;)V

    const-string v13, "packagename"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/duoku/platform/single/item/b;->i(Ljava/lang/String;)V

    const-string v13, "ban_lottery"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/duoku/platform/single/item/b;->d(I)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/duoku/platform/single/item/d;

    invoke-direct {v11}, Lcom/duoku/platform/single/item/d;-><init>()V

    const-string v12, "adsid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->a(Ljava/lang/String;)V

    const-string v12, "adsicon"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->b(Ljava/lang/String;)V

    const-string v12, "adsdl"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->c(Ljava/lang/String;)V

    const-string v12, "adsgname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->d(Ljava/lang/String;)V

    const-string v12, "adsgid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->e(Ljava/lang/String;)V

    const-string v12, "adsapkname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->f(Ljava/lang/String;)V

    const-string v12, "adsapksize"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->g(Ljava/lang/String;)V

    const-string v12, "hdown_flag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->a(I)V

    const-string v12, "hdown_apkname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->h(Ljava/lang/String;)V

    const-string v12, "dldesc"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->i(Ljava/lang/String;)V

    const-string v12, "packagename"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/duoku/platform/single/item/d;->j(Ljava/lang/String;)V

    const-string v12, "adslottery"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/duoku/platform/single/item/d;->b(I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method

.method public i(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/s;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/s;-><init>()V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/s;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/s;->k(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/s;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/s;->e(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duoku/platform/single/g/d;->b:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--tag 144 json parser = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/duoku/platform/single/h/a/o;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/o;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->a(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->d(I)V

    const-string v4, "mm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->a(I)V

    const-string v4, "mm_dmax"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->d(I)V

    const-string v4, "gb_sdk"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->g(I)V

    const-string v4, "gb_sdk_dmax"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->h(I)V

    const-string v4, "payorder"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->a(Ljava/lang/String;)V

    const-string v4, "ybkcm_dmax"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/h/a/o;->j(I)V

    const-string v4, "ybkcm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/o;->i(I)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/h/a/o;->e(I)V

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/h/a/o;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/duoku/platform/single/h/a/p;

    invoke-direct {v8}, Lcom/duoku/platform/single/h/a/p;-><init>()V

    :try_start_0
    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v1, "errormsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_0

    const-string v1, "accept_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/h/a/p;->l(Ljava/lang/String;)V

    const-string v1, "mdo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/h/a/p;->a(I)V

    const-string v1, "dmax"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/h/a/p;->b(I)V

    const-string v1, "props"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v12, :cond_1

    invoke-virtual {v8, v13}, Lcom/duoku/platform/single/h/a/p;->a(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {v8, v9}, Lcom/duoku/platform/single/h/a/p;->e(I)V

    invoke-virtual {v8, v10}, Lcom/duoku/platform/single/h/a/p;->k(Ljava/lang/String;)V

    :goto_1
    return-object v8

    :cond_1
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v0, "propsid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "price"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "channel"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    :try_start_2
    const-string v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "dest"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/duoku/platform/single/item/h;

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/duoku/platform/single/item/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "mdo"

    const-string v5, "JSONParser"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v1, 0xbb8

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/h/a/p;->e(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public l(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/j;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/j;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/j;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->l(Ljava/lang/String;)V

    const-string v2, "isneedverifycode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isneedverifycode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->a(Z)V

    :cond_0
    const-string v2, "verifycode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "verifycode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->a(Ljava/lang/String;)V

    :cond_1
    const-string v2, "paymentresult"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "paymentresult"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->b(Ljava/lang/String;)V

    :cond_2
    const-string v2, "orderid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "orderid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/j;->c(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public m(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/duoku/platform/single/h/a/h;

    invoke-direct {v2}, Lcom/duoku/platform/single/h/a/h;-><init>()V

    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/h/a/h;->e(I)V

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/h/a/h;->k(Ljava/lang/String;)V

    const-string v1, "accept_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/h/a/h;->l(Ljava/lang/String;)V

    const-string v1, "bindlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "bindlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/duoku/platform/single/h/a/h;->a(Ljava/util/List;)V

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "bindId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/duoku/platform/single/item/o;

    invoke-direct {v6}, Lcom/duoku/platform/single/item/o;-><init>()V

    const-string v0, "bindId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/duoku/platform/single/item/o;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/duoku/platform/single/item/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v7, "cardLast"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/o;->c(Ljava/lang/String;)V

    const-string v7, "cardName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/o;->b(Ljava/lang/String;)V

    const-string v7, "payType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/o;->d(Ljava/lang/String;)V

    const-string v7, "cardType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/duoku/platform/single/item/o;->a(I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/i;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/i;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/i;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/i;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/i;->l(Ljava/lang/String;)V

    const-string v2, "bankname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/i;->d(Ljava/lang/String;)V

    const-string v2, "cardnumber"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/i;->b(Ljava/lang/String;)V

    const-string v2, "cardtype"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/i;->c(Ljava/lang/String;)V

    const-string v2, "isvalid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/i;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public o(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/k;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/k;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/k;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/k;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/k;->l(Ljava/lang/String;)V

    const-string v2, "bindid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/k;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public p(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/j;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/j;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/j;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/j;->l(Ljava/lang/String;)V

    const-string v2, "paymentresult"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/j;->b(Ljava/lang/String;)V

    return-object v1
.end method

.method public q(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/duoku/platform/single/h/a/g;

    invoke-direct {v2}, Lcom/duoku/platform/single/h/a/g;-><init>()V

    const-string v0, "errorcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "errormsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->e(I)V

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/h/a/g;->k(Ljava/lang/String;)V

    const-string v0, "accept_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->l(Ljava/lang/String;)V

    const-string v0, "chosenitem"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chosenitem"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_c

    :cond_0
    const-string v0, "awarditem"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/duoku/platform/single/item/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/a;-><init>()V

    const-string v3, "awarditem"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/a;->a(I)V

    :cond_1
    const-string v4, "des"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "des"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    :cond_2
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->a(Lcom/duoku/platform/single/item/a;)V

    :cond_4
    const-string v0, "stm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "stm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->a(Ljava/lang/String;)V

    :cond_5
    const-string v0, "etm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "etm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->b(Ljava/lang/String;)V

    :cond_6
    const-string v0, "toEndTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "toEndTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/single/h/a/g;->a(J)V

    :cond_7
    const-string v0, "confirmflag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "confirmflag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->a(I)V

    :cond_8
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->c(Ljava/lang/String;)V

    :cond_9
    const-string v0, "lottery_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "lottery_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->b(I)V

    :cond_a
    const-string v0, "chanceCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "chanceCount"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/h/a/g;->c(I)V

    :cond_b
    return-object v2

    :cond_c
    new-instance v4, Lcom/duoku/platform/single/item/a;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    :cond_d
    const-string v6, "des"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "des"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    :cond_e
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v2}, Lcom/duoku/platform/single/h/a/g;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public r(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/e;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/e;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/e;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/e;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/e;->l(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/e;->a(I)V

    :cond_0
    const-string v2, "resultAward"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/duoku/platform/single/item/p;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/p;-><init>()V

    const-string v3, "resultAward"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "baiduid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "baiduid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/String;)V

    :cond_1
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->b(Ljava/lang/String;)V

    :cond_2
    const-string v3, "desc1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "desc1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->c(Ljava/lang/String;)V

    :cond_3
    const-string v3, "desc2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "desc2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->f(Ljava/lang/String;)V

    :cond_4
    const-string v3, "desc3"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "desc3"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->d(Ljava/lang/String;)V

    :cond_5
    const-string v3, "desc4"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "desc4"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->g(Ljava/lang/String;)V

    :cond_6
    const-string v3, "desc5"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "desc5"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/p;->e(Ljava/lang/String;)V

    :cond_7
    const-string v3, "singleRecGame"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "singleRecGame"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/e;->a(Lcom/duoku/platform/single/item/p;)V

    :cond_9
    return-object v1
.end method

.method public s(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/g;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/g;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/g;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/g;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/g;->l(Ljava/lang/String;)V

    const-string v2, "awarditem"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/duoku/platform/single/item/a;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/a;-><init>()V

    const-string v3, "awarditem"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/duoku/platform/single/item/a;->a(I)V

    :cond_0
    const-string v4, "des"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "des"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    :cond_1
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    :cond_2
    const-string v4, "needVerifycode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "needVerifycode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/a;->b(I)V

    :cond_3
    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/g;->a(Lcom/duoku/platform/single/item/a;)V

    :cond_4
    const-string v2, "lottery_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "lottery_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/g;->b(I)V

    :cond_5
    return-object v1
.end method

.method public t(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/duoku/platform/single/h/a/f;

    invoke-direct {v3}, Lcom/duoku/platform/single/h/a/f;-><init>()V

    const-string v0, "errorcode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "errormsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/duoku/platform/single/h/a/f;->e(I)V

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/h/a/f;->k(Ljava/lang/String;)V

    const-string v0, "accept_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/duoku/platform/single/h/a/f;->l(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "total"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "total"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/duoku/platform/single/h/a/f;->a(I)V

    :cond_1
    const-string v0, "chances"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "chances"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v0, v6, :cond_4

    invoke-virtual {v3, v5}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/util/List;)V

    :cond_2
    const-string v0, "historyawards"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "historyawards"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_8

    invoke-virtual {v3, v2}, Lcom/duoku/platform/single/h/a/f;->b(Ljava/util/List;)V

    :cond_3
    return-object v3

    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/duoku/platform/single/h/a/f$a;

    invoke-direct {v7}, Lcom/duoku/platform/single/h/a/f$a;-><init>()V

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/duoku/platform/single/h/a/f$a;->a:I

    :cond_5
    const-string v8, "stm"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "stm"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    :cond_6
    const-string v8, "etm"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "etm"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/duoku/platform/single/h/a/f$a;->c:Ljava/lang/String;

    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    new-instance v4, Lcom/duoku/platform/single/item/k;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/k;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "lottery_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "lottery_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->c(I)V

    :cond_9
    const-string v6, "lottery_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "lottery_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->d(Ljava/lang/String;)V

    :cond_a
    const-string v6, "des"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "des"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->a(Ljava/lang/String;)V

    :cond_b
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->b(Ljava/lang/String;)V

    :cond_c
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->a(I)V

    :cond_d
    const-string v6, "result"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "result"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->b(I)V

    :cond_e
    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->c(Ljava/lang/String;)V

    :cond_f
    const-string v6, "needVerifycode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "needVerifycode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->d(I)V

    :cond_10
    const-string v6, "historyResultAward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, "historyResultAward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/duoku/platform/single/item/p;

    invoke-direct {v6}, Lcom/duoku/platform/single/item/p;-><init>()V

    const-string v7, "baiduid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "baiduid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/String;)V

    :cond_11
    const-string v7, "phone"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->b(Ljava/lang/String;)V

    :cond_12
    const-string v7, "desc1"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "desc1"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->c(Ljava/lang/String;)V

    :cond_13
    const-string v7, "desc2"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "desc2"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->f(Ljava/lang/String;)V

    :cond_14
    const-string v7, "desc3"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "desc3"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->d(Ljava/lang/String;)V

    :cond_15
    const-string v7, "desc4"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "desc4"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->g(Ljava/lang/String;)V

    :cond_16
    const-string v7, "desc5"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "desc5"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/duoku/platform/single/item/p;->e(Ljava/lang/String;)V

    :cond_17
    const-string v7, "singleRecGame"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "singleRecGame"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/k;->a(Lcom/duoku/platform/single/item/p;)V

    :cond_19
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public u(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/b;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/b;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/b;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/b;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/b;->l(Ljava/lang/String;)V

    new-instance v2, Lcom/duoku/platform/single/item/e;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/e;-><init>()V

    const-string v3, "games_lottery_rec_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_0
    if-lt v0, v5, :cond_0

    invoke-virtual {v2, v4}, Lcom/duoku/platform/single/item/e;->b(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/b;->a(Lcom/duoku/platform/single/item/e;)V

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/duoku/platform/single/item/g;

    invoke-direct {v7}, Lcom/duoku/platform/single/item/g;-><init>()V

    const-string v8, "game_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->a(Ljava/lang/String;)V

    const-string v8, "game_title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->b(Ljava/lang/String;)V

    const-string v8, "game_content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->c(Ljava/lang/String;)V

    const-string v8, "game_img_url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->d(Ljava/lang/String;)V

    const-string v8, "game_download_url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->e(Ljava/lang/String;)V

    const-string v8, "style_index"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->a(I)V

    const-string v8, "apk_name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->f(Ljava/lang/String;)V

    const-string v8, "apk_size"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->g(Ljava/lang/String;)V

    const-string v8, "packagename"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->h(Ljava/lang/String;)V

    const-string v8, "vercode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->b(I)V

    const-string v8, "hdown_flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->c(I)V

    const-string v8, "hdown_apkname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->i(Ljava/lang/String;)V

    const-string v8, "dldesc"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/item/g;->j(Ljava/lang/String;)V

    const-string v8, "downloadNum"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/duoku/platform/single/item/g;->d(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/b;->a(Lcom/duoku/platform/single/item/e;)V

    goto/16 :goto_1
.end method

.method public v(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/t;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/t;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/t;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/t;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/t;->l(Ljava/lang/String;)V

    :cond_0
    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/t;->f(I)V

    const-string v2, "thirdpay_benefit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "thirdpay_benefit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/t;->a(Ljava/util/List;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/duoku/platform/single/item/q;

    invoke-direct {v5}, Lcom/duoku/platform/single/item/q;-><init>()V

    const-string v6, "channel"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "channel"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->a(Ljava/lang/String;)V

    :cond_3
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->b(Ljava/lang/String;)V

    :cond_4
    const-string v6, "discount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "discount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->c(Ljava/lang/String;)V

    :cond_5
    const-string v6, "extra"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "extra"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->e(Ljava/lang/String;)V

    :cond_6
    const-string v6, "freeq"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "freeq"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->g(Ljava/lang/String;)V

    :cond_7
    const-string v6, "uploadkey"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "uploadkey"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/q;->f(Ljava/lang/String;)V

    :cond_8
    const-string v6, "valid_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "valid_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/duoku/platform/single/item/q;->d(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public w(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/h/a/m;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/m;-><init>()V

    const-string v1, "errorcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "errormsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/m;->e(I)V

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/h/a/m;->k(Ljava/lang/String;)V

    const-string v1, "accept_time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "accept_time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/m;->l(Ljava/lang/String;)V

    :cond_0
    const-string v1, "yeepaylist"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "yeepaylist"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[]"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/m;->a(Ljava/lang/String;)V

    :cond_3
    const-string v1, "checkId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "checkId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/m;->b(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/duoku/platform/single/e/k;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/duoku/platform/single/h/a/m;->a(Ljava/lang/String;Z)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public x(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/c;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/c;-><init>()V

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/c;->e(I)V

    :cond_0
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/c;->k(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/c;->l(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/c;->f(I)V

    :cond_3
    sget-object v2, Lcom/duoku/platform/single/h/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/c;->a(I)V

    :cond_4
    sget-object v2, Lcom/duoku/platform/single/h/a/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/c;->a(Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public y(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/l;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/l;-><init>()V

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->e(I)V

    :cond_0
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->k(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->l(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/duoku/platform/single/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/duoku/platform/single/h/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->f(I)V

    :cond_3
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->a(I)V

    :cond_4
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->a(Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->b(Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->c(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/l;->d(Ljava/lang/String;)V

    :cond_8
    sget-object v2, Lcom/duoku/platform/single/h/a/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/duoku/platform/single/h/a/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/l;->e(Ljava/lang/String;)V

    :cond_9
    return-object v1
.end method

.method public z(Ljava/lang/String;)Lcom/duoku/platform/single/h/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/a;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/a;->e(I)V

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/h/a/a;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/h/a/a;->l(Ljava/lang/String;)V

    :cond_0
    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/a;->f(I)V

    return-object v1
.end method
