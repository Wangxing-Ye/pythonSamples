.class Lcom/duoku/platform/single/n/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/n/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/n/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/n/a$a;->a:Lcom/duoku/platform/single/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/n/a;Lcom/duoku/platform/single/n/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/n/a$a;-><init>(Lcom/duoku/platform/single/n/a;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/duoku/platform/single/util/H;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
