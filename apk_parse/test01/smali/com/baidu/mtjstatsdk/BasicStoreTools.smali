.class public Lcom/baidu/mtjstatsdk/BasicStoreTools;
.super Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;


# static fields
.field public static final APP_ANALYSIS_EXCEPTION:Ljava/lang/String; = "exceptionanalysisflag"

.field public static final APP_ANALYSIS_EXCEPTION_TAG:Ljava/lang/String; = "exceptionanalysistag"

.field public static final APP_MAC_ADDRESS:Ljava/lang/String; = "mtjsdkmacss_sdk"

.field public static final APP_SET_CHANNEL:Ljava/lang/String; = "setchannelwithcodevalue"

.field public static final APP_SET_CHANNEL_APPKEY:Ljava/lang/String; = "setchannelwithcodevalueandkey"

.field public static final APP_SET_CHANNEL_WITH_CODE:Ljava/lang/String; = "setchannelwithcode"

.field public static final DEVICE_CUID:Ljava/lang/String; = "cuidsec_sdk"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final LAST_SEND_TIME:Ljava/lang/String; = "lastsendtime"

.field public static final ONLY_WIFI:Ljava/lang/String; = "onlywifi"

.field public static final SEND_LOG_TYPE:Ljava/lang/String; = "sendLogtype"

.field public static final TIME_INTERVAL:Ljava/lang/String; = "timeinterval"

.field static a:Lcom/baidu/mtjstatsdk/BasicStoreTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mtjstatsdk/BasicStoreTools;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/BasicStoreTools;->a:Lcom/baidu/mtjstatsdk/BasicStoreTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/BasicStoreTools;->a:Lcom/baidu/mtjstatsdk/BasicStoreTools;

    return-object v0
.end method


# virtual methods
.method protected getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mtjsdkmacss_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAppChannelWithPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setchannelwithcodevalueandkey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadExceptionHeadTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "exceptionanalysistag"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadExceptionTurn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceptionanalysisflag|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "cuidsec_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_id"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadLastSendTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "lastsendtime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadOnlyWifiChannel(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadSendStrategy(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadSendStrategyTime(Landroid/content/Context;)I
    .locals 2

    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAppChannelWithPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setchannelwithcodevalueandkey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mtjsdkmacss_sdk"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptionHeadTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "exceptionanalysistag"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptionTurn(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceptionanalysisflag|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cuid"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "cuidsec_sdk"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastSendTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "lastsendtime"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setOnlyWifi(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSendStrategy(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setSendStrategyTime(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
