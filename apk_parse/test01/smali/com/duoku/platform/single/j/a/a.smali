.class public Lcom/duoku/platform/single/j/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/duoku/platform/single/d/d;

.field private b:Ljava/lang/String;

.field private c:Lcom/duoku/platform/single/k/n;

.field private d:Lcom/duoku/platform/single/item/DKCMMdoData;

.field private e:Lcom/duoku/platform/single/item/DKCMMMData;

.field private f:Lcom/duoku/platform/single/item/DKCMGBData;

.field private g:Lcom/duoku/platform/single/item/DKCMYBKData;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/duoku/platform/single/d/d;Ljava/lang/String;Lcom/duoku/platform/single/k/n;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->a:Lcom/duoku/platform/single/d/d;

    iput-object p2, p0, Lcom/duoku/platform/single/j/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/j/a/a;->c:Lcom/duoku/platform/single/k/n;

    iput-object p4, p0, Lcom/duoku/platform/single/j/a/a;->d:Lcom/duoku/platform/single/item/DKCMMdoData;

    iput-object p5, p0, Lcom/duoku/platform/single/j/a/a;->e:Lcom/duoku/platform/single/item/DKCMMMData;

    iput-object p6, p0, Lcom/duoku/platform/single/j/a/a;->f:Lcom/duoku/platform/single/item/DKCMGBData;

    iput-object p7, p0, Lcom/duoku/platform/single/j/a/a;->g:Lcom/duoku/platform/single/item/DKCMYBKData;

    iput-boolean p8, p0, Lcom/duoku/platform/single/j/a/a;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/duoku/platform/single/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/j/a/a;->a:Lcom/duoku/platform/single/d/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/duoku/platform/single/d/d;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->a:Lcom/duoku/platform/single/d/d;

    return-object v0
.end method

.method public a(Lcom/duoku/platform/single/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->a:Lcom/duoku/platform/single/d/d;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMGBData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->f:Lcom/duoku/platform/single/item/DKCMGBData;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMMMData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->e:Lcom/duoku/platform/single/item/DKCMMMData;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMMdoData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->d:Lcom/duoku/platform/single/item/DKCMMdoData;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMYBKData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->g:Lcom/duoku/platform/single/item/DKCMYBKData;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/k/n;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->c:Lcom/duoku/platform/single/k/n;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/j/a/a;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/duoku/platform/single/k/n;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->c:Lcom/duoku/platform/single/k/n;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/a/a;->h:Z

    return v0
.end method

.method public e()Lcom/duoku/platform/single/item/DKCMMdoData;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->d:Lcom/duoku/platform/single/item/DKCMMdoData;

    return-object v0
.end method

.method public f()Lcom/duoku/platform/single/item/DKCMMMData;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->e:Lcom/duoku/platform/single/item/DKCMMMData;

    return-object v0
.end method

.method public g()Lcom/duoku/platform/single/item/DKCMGBData;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->f:Lcom/duoku/platform/single/item/DKCMGBData;

    return-object v0
.end method

.method public h()Lcom/duoku/platform/single/item/DKCMYBKData;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/a/a;->g:Lcom/duoku/platform/single/item/DKCMYBKData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DKPayChannelViewValue [viewType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->a:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smsAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->c:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmMdoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->d:Lcom/duoku/platform/single/item/DKCMMdoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmMMData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->e:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmGBData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->f:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/a/a;->g:Lcom/duoku/platform/single/item/DKCMYBKData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagShowYeeCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/j/a/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
