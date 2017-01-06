.class Leldorado/sec_01_malicious_01/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leldorado/sec_01_malicious_01/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leldorado/sec_01_malicious_01/MainActivity;


# direct methods
.method constructor <init>(Leldorado/sec_01_malicious_01/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Leldorado/sec_01_malicious_01/MainActivity;

    .prologue
    .line 65
    iput-object p1, p0, Leldorado/sec_01_malicious_01/MainActivity$4;->this$0:Leldorado/sec_01_malicious_01/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    # getter for: Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;
    invoke-static {}, Leldorado/sec_01_malicious_01/MainActivity;->access$100()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    # getter for: Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;
    invoke-static {}, Leldorado/sec_01_malicious_01/MainActivity;->access$100()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v0, v1, v2

    .line 69
    .local v0, "sms_no":Ljava/lang/String;
    const-string v1, "Hello World! \n send SMS Direct Insert"

    invoke-static {v0, v1}, Leldorado/sec_01_malicious_01/Utility;->sendSMSDirectInsert(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
