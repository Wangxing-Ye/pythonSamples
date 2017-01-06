.class public Lcom/baidu/mtjstatsdk/HeadObject;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Android"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "h9YLQoINGWyOBYYk"

    const-string v2, "h9YLQoINGWyOBYYk"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/mtjstatsdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=secretValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imei=null,mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMacID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6=mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized constructHeader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907id\u4e3a\u7a7a\uff0c\u7cfb\u7edf\u751f\u6210id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/HeadObject;->getMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-static {}, Lcom/baidu/mtjstatsdk/b/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v1, :cond_a

    new-instance v1, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    :goto_4
    :try_start_8
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "statsdk"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    iget v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, ""

    if-eq v0, v1, :cond_f

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    :try_start_a
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    if-nez v0, :cond_11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "====APP Key\u4e22\u5931||can\'t find app key."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_11
    :try_start_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    const-string v0, "0.1"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_13
    :goto_7
    :try_start_c
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_14
    :goto_8
    :try_start_d
    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_15
    :goto_9
    :try_start_e
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_16
    :goto_a
    :try_start_f
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_10
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_11
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_7

    :cond_17
    :try_start_12
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    :catch_8
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_8

    :cond_18
    :try_start_14
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    :try_start_15
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_9

    :cond_19
    :try_start_16
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_a

    :catch_a
    move-exception v0

    :try_start_17
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_a
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getappChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/baidu/mtjstatsdk/HeadObject;->constructHeader(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installHeader appkey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v1, "o"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "2"

    :goto_1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "k"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_3
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "i"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "v"

    const-string v1, "1.1"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->f:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_4
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mc"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_5
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bm"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_6
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dd"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_7
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ii"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_8
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "w"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->i:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "h"

    iget v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->j:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_9
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "op"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_a
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_b
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cl"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gl"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wl"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_d
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_e
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sq"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "statsdk"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->s:Ljava/lang/String;

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->r:Ljava/lang/String;

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->h:Ljava/lang/String;

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    goto/16 :goto_9

    :cond_c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->l:Ljava/lang/String;

    goto/16 :goto_a

    :cond_d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->m:Ljava/lang/String;

    goto :goto_b

    :cond_e
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->o:Ljava/lang/String;

    goto :goto_c

    :cond_f
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->p:Ljava/lang/String;

    goto :goto_d

    :cond_10
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/HeadObject;->q:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "header ini error"

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->k:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->g:Ljava/lang/String;

    return-void
.end method

.method public setCuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/HeadObject;->e:Ljava/lang/String;

    return-void
.end method
