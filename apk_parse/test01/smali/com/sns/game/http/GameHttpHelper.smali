.class public Lcom/sns/game/http/GameHttpHelper;
.super Ljava/lang/Object;
.source "GameHttpHelper.java"


# static fields
.field private static final ACTION_NAME_ADD:Ljava/lang/String; = "add"

.field private static final ACTION_NAME_RANKING:Ljava/lang/String; = "ranking"

.field private static final ACTION_NAME_SCORE:Ljava/lang/String; = "score"

.field private static final BASE_URL:Ljava/lang/String; = "aHR0cDovLzIxOC4yNDUuMS4xOTg6ODAyMi9zeW5jaHJvbm91c0RhdGEvZ2FtZXMv"

.field public static RANK_GAME_ID:I = 0x0

.field public static final RANK_STYPE_GOLD:I = 0x1

.field public static final RANK_STYPE_KILL:I = 0x2

.field private static helper:Lcom/sns/game/http/GameHttpHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/sns/game/http/GameHttpHelper;->RANK_GAME_ID:I

    .line 36
    new-instance v0, Lcom/sns/game/http/GameHttpHelper;

    invoke-direct {v0}, Lcom/sns/game/http/GameHttpHelper;-><init>()V

    sput-object v0, Lcom/sns/game/http/GameHttpHelper;->helper:Lcom/sns/game/http/GameHttpHelper;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/sns/game/http/GameHttpHelper;->getRankWithGameID()I

    move-result v0

    sput v0, Lcom/sns/game/http/GameHttpHelper;->RANK_GAME_ID:I

    .line 45
    return-void
.end method

.method private varargs createParams([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v6, 0x0

    .line 147
    .local v6, "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local v7, "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_1
    array-length v9, p1

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "index":I
    array-length v9, p1

    div-int/lit8 v3, v9, 0x2

    .line 151
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    move-object v6, v7

    .line 163
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "len":I
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    return-object v6

    .line 152
    .end local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "len":I
    .restart local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    aget-object v4, p1, v2

    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 153
    aget-object v8, p1, v2

    .local v8, "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 154
    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    .line 155
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v4, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v5, "nvObject":Lorg/apache/http/message/BasicNameValuePair;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .end local v5    # "nvObject":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "value":Ljava/lang/String;
    .restart local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    goto :goto_2

    .end local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    move-object v6, v7

    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6    # "pList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    goto :goto_1
.end method

.method public static gHelper()Lcom/sns/game/http/GameHttpHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sns/game/http/GameHttpHelper;->helper:Lcom/sns/game/http/GameHttpHelper;

    return-object v0
.end method

.method private varargs response4Server(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v7, "aHR0cDovLzIxOC4yNDUuMS4xOTg6ODAyMi9zeW5jaHJvbm91c0RhdGEvZ2FtZXMv"

    invoke-static {v7}, Lorg/cocos2d/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 123
    .local v0, "deocdeBaseUrl":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0, p2}, Lcom/sns/game/http/GameHttpHelper;->createParams([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v5, v7, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 127
    .local v5, "httpentity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 131
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 133
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 134
    .local v6, "statusCode":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 135
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 141
    .end local v0    # "deocdeBaseUrl":Ljava/lang/String;
    .end local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpentity":Lorg/apache/http/HttpEntity;
    .end local v6    # "statusCode":I
    :goto_0
    return-object v7

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateShowUnable2ConnectNetDialog(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 9
    .param p1, "conrfimCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p2, "retryCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 110
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 111
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const/4 v1, 0x1

    const-string v2, ""

    .line 112
    const-string v3, "\u8fde\u63a5\u5f02\u5e38,\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u65b0\u8fde\u63a5."

    const-string v4, "\u9000\u51fa"

    const-string v5, "\u91cd\u8bd5"

    move-object v6, p1

    move-object v7, p2

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/sns/game/activity/GameActivityss;->activateGameAlertDialog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public asu2cnDialogWithCallBack(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "conrfimCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p2, "retryCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 100
    new-instance v0, Lcom/sns/game/http/GameHttpHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/http/GameHttpHelper$1;-><init>(Lcom/sns/game/http/GameHttpHelper;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    return-object v0
.end method

.method public doRegisterNickNameWithResponse(Ljava/lang/String;)Lcom/sns/game/database/bean/UserTop;
    .locals 10
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    :try_start_0
    const-string v5, "add"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "UName"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string v8, "GID"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    sget v9, Lcom/sns/game/http/GameHttpHelper;->RANK_GAME_ID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/sns/game/http/GameHttpHelper;->response4Server(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "resultData":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 62
    .end local v1    # "resultData":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 51
    .restart local v1    # "resultData":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "serverId":I
    new-instance v3, Lcom/sns/game/database/bean/UserTop;

    invoke-direct {v3}, Lcom/sns/game/database/bean/UserTop;-><init>()V

    .line 54
    .local v3, "uTop":Lcom/sns/game/database/bean/UserTop;
    invoke-virtual {v3, v2}, Lcom/sns/game/database/bean/UserTop;->setServerId(I)V

    .line 55
    invoke-virtual {v3, p1}, Lcom/sns/game/database/bean/UserTop;->setNickName(Ljava/lang/String;)V

    .line 56
    sget-object v5, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 57
    sget-object v5, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v5}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "resultData":Ljava/lang/String;
    .end local v2    # "serverId":I
    .end local v3    # "uTop":Lcom/sns/game/database/bean/UserTop;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v3, v4

    .line 62
    goto :goto_0
.end method

.method public doUpLoadScoreWithResponse(IIII)Z
    .locals 8
    .param p1, "serverUserId"    # I
    .param p2, "sType"    # I
    .param p3, "nowScore"    # I
    .param p4, "isM"    # I

    .prologue
    .line 67
    :try_start_0
    const-string v4, "score"

    const/16 v3, 0xa

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 68
    const-string v6, "UID"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    .line 69
    const-string v6, "GID"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    sget v7, Lcom/sns/game/http/GameHttpHelper;->RANK_GAME_ID:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    .line 70
    const-string v6, "SType"

    aput-object v6, v5, v3

    const/4 v3, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x6

    .line 71
    const-string v6, "Score"

    aput-object v6, v5, v3

    const/4 v3, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v6, 0x8

    .line 72
    const/4 v3, -0x1

    if-eq p4, v3, :cond_0

    const-string v3, "IsM"

    :goto_0
    aput-object v3, v5, v6

    const/16 v6, 0x9

    const/4 v3, -0x1

    if-eq p4, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v5, v6

    .line 67
    invoke-direct {p0, v4, v5}, Lcom/sns/game/http/GameHttpHelper;->response4Server(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "resultData":Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v3, 0x0

    .line 79
    .end local v1    # "resultData":Ljava/lang/String;
    :goto_2
    return v3

    .line 72
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 74
    .restart local v1    # "resultData":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    .local v2, "upLoadTag":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 76
    .end local v1    # "resultData":Ljava/lang/String;
    .end local v2    # "upLoadTag":I
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 79
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public doUpdateRankingWithResponse(II)Lorg/json/JSONObject;
    .locals 10
    .param p1, "serverUserId"    # I
    .param p2, "sType"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "jObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "ranking"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 86
    const-string v8, "UID"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 87
    const-string v8, "GID"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    sget v9, Lcom/sns/game/http/GameHttpHelper;->RANK_GAME_ID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 88
    const-string v8, "SType"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 85
    invoke-direct {p0, v5, v6}, Lcom/sns/game/http/GameHttpHelper;->response4Server(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "resultData":Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v2, v4

    .line 95
    .end local v3    # "resultData":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 90
    .restart local v3    # "resultData":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jObject":Lorg/json/JSONObject;
    .local v2, "jObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 91
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 92
    .end local v3    # "resultData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v2, v4

    .line 95
    goto :goto_0
.end method

.method public getRankWithGameID()I
    .locals 3

    .prologue
    .line 168
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 169
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->getRankWithGameID()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 173
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :goto_0
    return v2

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 173
    const/4 v2, -0x1

    goto :goto_0
.end method
