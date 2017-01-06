.class public Lcom/duoku/platform/single/setting/DKSingleSDKSettings;
.super Ljava/lang/Object;


# static fields
.field public static CROSSRECOMMEND_INIT_FINSIH:Z

.field public static GAMEBASE_SDK_INIT_IS_OK:Z

.field public static MNC:Lcom/duoku/platform/single/util/J$a;

.field public static MOBILE_MM_INIT_IS_OK:Z

.field public static PHONE_MNC:Ljava/lang/String;

.field public static PHONE_UA:Ljava/lang/String;

.field public static SCREEN_ORIENT:I

.field public static SDK_APPID:Ljava/lang/String;

.field public static SDK_APPKEY:Ljava/lang/String;

.field public static SDK_APPSECRET:Ljava/lang/String;

.field public static SDK_CHANNELID:Ljava/lang/String;

.field public static strPhoneIdentity:Ljava/lang/String;

.field public static validChannelAmount:Lcom/duoku/platform/single/k/a;

.field public static validChannelAmountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/k/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_UA:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->strPhoneIdentity:Ljava/lang/String;

    const/16 v0, 0x3e7

    sput v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    sput-boolean v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    sput-boolean v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->GAMEBASE_SDK_INIT_IS_OK:Z

    sput-boolean v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Appid,Appkey,Appsecret can not be null or blank."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-object p1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    sput-object p2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    sput-object p3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    sput-object p4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    return-void
.end method
