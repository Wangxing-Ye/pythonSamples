.class public Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
.super Ljava/lang/Object;
.source "DeviceInfoKeyValue.java"


# instance fields
.field private deviceInfoKey:Ljava/lang/String;

.field private deviceInfoValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceInfoKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->deviceInfoKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->deviceInfoValue:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceInfoKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceInfoKey"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->deviceInfoKey:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setDeviceInfoValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceInfoValue"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->deviceInfoValue:Ljava/lang/String;

    .line 22
    return-void
.end method
