.class public Leldorado/sec_01_malicious_01/PocApp;
.super Landroid/app/Application;
.source "PocApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field public static onGoingPackages:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Leldorado/sec_01_malicious_01/PocApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leldorado/sec_01_malicious_01/PocApp;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Leldorado/sec_01_malicious_01/PocApp;->context:Landroid/content/Context;

    .line 13
    const-string v0, ""

    sput-object v0, Leldorado/sec_01_malicious_01/PocApp;->onGoingPackages:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Leldorado/sec_01_malicious_01/PocApp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getOnGoingPackages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Leldorado/sec_01_malicious_01/PocApp;->onGoingPackages:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-virtual {p0}, Leldorado/sec_01_malicious_01/PocApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Leldorado/sec_01_malicious_01/PocApp;->context:Landroid/content/Context;

    .line 18
    return-void
.end method
