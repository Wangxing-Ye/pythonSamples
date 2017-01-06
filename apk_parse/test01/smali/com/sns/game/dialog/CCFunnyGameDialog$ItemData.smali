.class Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
.super Ljava/lang/Object;
.source "CCFunnyGameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/dialog/CCFunnyGameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemData"
.end annotation


# instance fields
.field public boxName:Ljava/lang/String;

.field public descName:Ljava/lang/String;

.field public gold:I

.field public holdCount:I

.field public imgName:Ljava/lang/String;

.field public itemName:Ljava/lang/String;

.field public tag:I

.field final synthetic this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

.field public wpnId:I


# direct methods
.method private constructor <init>(Lcom/sns/game/dialog/CCFunnyGameDialog;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 693
    iput-object p1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->gold:I

    .line 696
    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->wpnId:I

    iput v0, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->holdCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sns/game/dialog/CCFunnyGameDialog;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;-><init>(Lcom/sns/game/dialog/CCFunnyGameDialog;)V

    return-void
.end method
