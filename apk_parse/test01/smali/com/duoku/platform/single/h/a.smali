.class public Lcom/duoku/platform/single/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:I = 0x2800


# instance fields
.field private a:Lcom/duoku/platform/single/util/H;

.field private b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/h/a;->a:Lcom/duoku/platform/single/util/H;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    iput-boolean v2, p0, Lcom/duoku/platform/single/h/a;->e:Z

    const v0, 0xea60

    iput v0, p0, Lcom/duoku/platform/single/h/a;->g:I

    iput-boolean v2, p0, Lcom/duoku/platform/single/h/a;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/h/a;->o:Z

    iput v2, p0, Lcom/duoku/platform/single/h/a;->p:I

    return-void
.end method

.method private a(JJ)V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/h/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/k;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/h/k$a;->c:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/h/k;->b(J)V

    invoke-virtual {v0, p3, p4}, Lcom/duoku/platform/single/h/k;->a(J)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->b(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/duoku/platform/single/h/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/k;-><init>()V

    iget-boolean v1, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/duoku/platform/single/h/k$a;->e:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/h/k;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->b(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Message;)V

    return-void

    :cond_0
    sget-object v1, Lcom/duoku/platform/single/h/k$a;->b:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/h/k;->a(I)V

    goto :goto_0
.end method

.method private a([B)V
    .locals 5

    new-instance v1, Lcom/duoku/platform/single/h/k;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/k;-><init>()V

    iget-boolean v0, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/h/k$a;->d:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->b(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Message;)V

    return-void

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/h/k$a;->a:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/duoku/platform/single/c/a;->a()Lcom/duoku/platform/single/c/a;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->a:Lcom/duoku/platform/single/util/H;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response data is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/single/h/a;->n:I

    invoke-static {v2, v0}, Lcom/duoku/platform/single/g/b;->a(ILjava/lang/String;)Lcom/duoku/platform/single/h/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const v0, 0xa039

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(I)V

    const-string v0, "parse json error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const v0, 0xa028

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(I)V

    const-string v0, "receive data error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/k;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/h/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/k;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/h/k$a;->f:Lcom/duoku/platform/single/h/k$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->a(Lcom/duoku/platform/single/h/k$a;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/k;->b(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/h/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private m()Ljava/io/OutputStream;
    .locals 5

    iget-boolean v0, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-boolean v0, p0, Lcom/duoku/platform/single/h/a;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method private n()V
    .locals 14

    const/4 v12, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/d;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/h/a;->a(Z)V

    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/h/d;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    iget-boolean v4, p0, Lcom/duoku/platform/single/h/a;->o:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/single/util/E;->d(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/duoku/platform/single/h/a;->m()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    const/16 v5, 0xce

    if-ne v4, v5, :cond_16

    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    const/16 v1, 0x2800

    :try_start_4
    new-array v1, v1, [B

    iget-boolean v9, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/duoku/platform/single/h/a;->o:Z

    if-eqz v9, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/single/util/E;->d(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v7, v5

    :cond_2
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v12, :cond_c

    :goto_2
    iget-boolean v1, p0, Lcom/duoku/platform/single/h/a;->e:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const-string v1, "cancel after read data from pipe"

    invoke-direct {p0, v1}, Lcom/duoku/platform/single/h/a;->g(Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move-object v4, v3

    :cond_4
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v4, :cond_5

    :cond_5
    if-eqz v3, :cond_6

    :cond_6
    :goto_5
    return-void

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/duoku/platform/single/h/d;->a()Lorg/apache/http/client/HttpClient;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    :try_start_6
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    invoke-static {}, Lcom/duoku/platform/single/h/d;->a()Lorg/apache/http/client/HttpClient;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v1

    :try_start_8
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_9
    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->a:Lcom/duoku/platform/single/util/H;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex1 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u6709\u9519\u8bef\uff01"

    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    if-eqz v3, :cond_7

    :cond_7
    if-eqz v3, :cond_6

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/duoku/platform/single/h/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/h/d;->b(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/duoku/platform/single/h/a;->a(Z)V

    new-instance v4, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/duoku/platform/single/h/a;->l:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-boolean v4, p0, Lcom/duoku/platform/single/h/a;->e:Z

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const-string v1, "cancel before write data to pipe"

    invoke-direct {p0, v1}, Lcom/duoku/platform/single/h/a;->g(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_9

    :cond_9
    if-eqz v3, :cond_6

    goto :goto_5

    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/duoku/platform/single/h/a;->a:Lcom/duoku/platform/single/util/H;

    const-string v5, "\u53d1\u8d77\u8bf7\u6c42"

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iget-object v4, p0, Lcom/duoku/platform/single/h/a;->a:Lcom/duoku/platform/single/util/H;

    const-string v5, "\u5f97\u5230\u54cd\u5e94"

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_b
    invoke-static {}, Lcom/duoku/platform/single/h/d;->a()Lorg/apache/http/client/HttpClient;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v1

    :try_start_c
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_d
    invoke-static {}, Lcom/duoku/platform/single/h/d;->a()Lorg/apache/http/client/HttpClient;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v1

    :try_start_e
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_f
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u6709\u9519\u8bef\uff01"

    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v3, :cond_b

    :cond_b
    if-eqz v3, :cond_6

    goto/16 :goto_5

    :cond_c
    :try_start_10
    iget-boolean v10, p0, Lcom/duoku/platform/single/h/a;->e:Z

    if-eqz v10, :cond_e

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    :goto_6
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    const-string v1, "exception happen"

    const/16 v4, 0x3e9

    invoke-direct {p0, v1, v4}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v2, :cond_d

    :cond_d
    if-eqz v3, :cond_6

    goto/16 :goto_5

    :cond_e
    int-to-long v10, v9

    add-long/2addr v5, v10

    :try_start_12
    iget-boolean v10, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-eqz v10, :cond_f

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/duoku/platform/single/h/a;->a(JJ)V

    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_10

    :cond_10
    if-eqz v2, :cond_11

    :cond_11
    throw v1

    :cond_12
    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_15

    cmp-long v1, v5, v7

    if-eqz v1, :cond_13

    :try_start_13
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u6709\u9519\u8bef\uff01"

    const/16 v5, 0x3e9

    invoke-direct {p0, v1, v5}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_13
    cmp-long v1, v5, v7

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/duoku/platform/single/h/a;->i:Z

    if-nez v1, :cond_14

    move-object v0, v2

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_8
    invoke-direct {p0, v1}, Lcom/duoku/platform/single/h/a;->a([B)V

    goto/16 :goto_3

    :cond_14
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v1, v3

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v1

    const-string v5, "response data length is -1"

    invoke-virtual {v1, v5}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    const-string v1, "content len is error"

    const/16 v5, 0x3e9

    invoke-direct {p0, v1, v5}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    :cond_16
    const/16 v5, 0x12d

    if-eq v4, v5, :cond_17

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_18

    :cond_17
    :try_start_14
    const-string v4, "location"

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/h/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a;->n()V

    move-object v4, v3

    goto/16 :goto_3

    :cond_18
    const/16 v5, 0x1f8

    if-ne v4, v5, :cond_19

    const-string v1, "connect time out"

    const/16 v4, 0x1198

    invoke-direct {p0, v1, v4}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V

    move-object v4, v3

    goto/16 :goto_3

    :cond_19
    if-ne v4, v12, :cond_1a

    iget v5, p0, Lcom/duoku/platform/single/h/a;->p:I

    if-nez v5, :cond_1a

    const/4 v1, 0x1

    iput v1, p0, Lcom/duoku/platform/single/h/a;->p:I

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a;->n()V

    move-object v4, v3

    goto/16 :goto_3

    :cond_1a
    const-string v5, "Net Error Code: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Net Error Msg: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/duoku/platform/single/util/H;->b(Ljava/lang/String;)V

    const-string v1, "net error"

    const/16 v4, 0x3e9

    invoke-direct {p0, v1, v4}, Lcom/duoku/platform/single/h/a;->a(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_1b
    move-object v4, v3

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto/16 :goto_7

    :catchall_2
    move-exception v1

    goto/16 :goto_7

    :catchall_3
    move-exception v1

    move-object v13, v2

    move-object v2, v3

    move-object v3, v13

    goto/16 :goto_7

    :catch_7
    move-exception v1

    move-object v2, v3

    goto/16 :goto_6

    :catch_8
    move-exception v1

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_6

    :cond_1c
    move-object v3, v2

    goto/16 :goto_4
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a;->n:I

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->m:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/duoku/platform/single/h/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/h/a;->i:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a;->n:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/h/a;->i:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->h:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/h/a;->e:Z

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/h/a;->e:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a;->g:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/h/a;->i:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/h/a;->n()V

    goto :goto_0
.end method
