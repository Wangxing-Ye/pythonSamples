.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;
.source "UMGameAgent.java"


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/c;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/umeng/analytics/game/c;

    invoke-direct {v0}, Lcom/umeng/analytics/game/c;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    if-nez p0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bonus(DI)V
    .locals 2

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 259
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    if-lez p2, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 264
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c;->a(DI)V

    goto :goto_0
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .locals 6

    .prologue
    .line 271
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 276
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 277
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    if-lez p4, :cond_3

    const/16 v0, 0x64

    if-lt p4, v0, :cond_4

    .line 282
    :cond_3
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_4
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static buy(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 220
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 226
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method public static failLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 154
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 138
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/umeng/analytics/game/UMGameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static onProfileSignIn(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "MobclickAgent"

    const-string v1, "uid is null"

    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 44
    const-string v0, "MobclickAgent"

    const-string v1, "uid.length > 64"

    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    const-string v1, "_adhoc"

    invoke-virtual {v0, v1, p0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "MobclickAgent"

    const-string v1, "uid is null"

    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 56
    const-string v0, "MobclickAgent"

    const-string v1, "uid.length > 64"

    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    const-string v1, "_adhoc"

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 63
    const-string v0, "MobclickAgent"

    const-string v1, "provider.length > 32"

    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onProfileSignOff()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/c;->c()V

    .line 72
    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 2

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const-string v0, "MobclickAgent"

    const-string v1, "context is null in onShareEvent"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "4"

    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 310
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 2

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, "MobclickAgent"

    const-string v1, "context is null in onShareEvent"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "4"

    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 324
    invoke-static {p0, p1}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static pay(DDI)V
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 175
    if-lez p4, :cond_0

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1

    .line 176
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_1
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_2

    cmpg-double v0, p2, v1

    if-gez v0, :cond_3

    .line 181
    :cond_2
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(DDI)V

    goto :goto_0
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .locals 8

    .prologue
    const-wide/16 v1, 0x0

    .line 196
    if-lez p6, :cond_0

    const/16 v0, 0x64

    if-lt p6, v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 201
    :cond_1
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_2

    if-ltz p3, :cond_2

    cmpg-double v0, p4, v1

    if-gez v0, :cond_3

    .line 202
    :cond_2
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_4
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/c;->a(DLjava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static setPlayerInfo(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public static setPlayerLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 81
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTraceSleepTime(Z)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Z)V

    .line 33
    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 122
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static use(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 239
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 244
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 245
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;ID)V

    goto :goto_0
.end method
