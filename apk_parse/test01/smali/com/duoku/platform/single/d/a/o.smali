.class public Lcom/duoku/platform/single/d/a/o;
.super Lcom/duoku/platform/single/d/a/u;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# static fields
.field public static a:Lcom/duoku/platform/single/i/c;

.field private static f:Lcom/duoku/platform/single/d/a/o;


# instance fields
.field private b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/duoku/platform/single/util/H;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-class v0, Lcom/duoku/platform/single/d/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/o;->e:Lcom/duoku/platform/single/util/H;

    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->e:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------ price = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "1427278671501398"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "156"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "3600"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "http://dl.m.baidu.com/sdk/pay/juhe/callback.php"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "UTF-8"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    const-string v1, "13"

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    sget-object v2, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    sget-object v4, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    sget-object v5, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v5, v5, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    sget-object v6, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    sget-object v7, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->d:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    const/16 v0, 0x95

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/duoku/platform/single/h/a/n;

    :try_start_0
    iget-object v0, p2, Lcom/duoku/platform/single/h/a/n;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/o;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/duoku/platform/single/h/a/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/o;->e:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5fae\u4fe1\u652f\u4ed8\u62a5\u6587 \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/o;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/o;->d:Landroid/app/Activity;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/duoku/platform/single/i/c;

    sput-object v0, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    sget-object v0, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/o;->b()V

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/o;->a()V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->b:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/o;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/o;->e:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------\u5e26\u7b7e\u540d ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "paydata="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/o;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/MerchantTools;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getWxipayEncrypt"

    const/16 v3, 0x95

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method
