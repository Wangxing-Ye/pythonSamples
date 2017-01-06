.class public Lcom/baidu/mtjstatsdk/DataCoreObject;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lorg/json/JSONObject;

.field c:Lorg/json/JSONArray;

.field d:Lorg/json/JSONArray;

.field e:Lorg/json/JSONArray;

.field f:Lorg/json/JSONArray;

.field g:Z

.field h:Lcom/baidu/mtjstatsdk/HeadObject;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    iput v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->e:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    new-instance v0, Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    return v0
.end method

.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/HeadObject;->setCuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/baidu/android/bba/common/util/CommonParam;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/HeadObject;->setCuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    return-void
.end method
