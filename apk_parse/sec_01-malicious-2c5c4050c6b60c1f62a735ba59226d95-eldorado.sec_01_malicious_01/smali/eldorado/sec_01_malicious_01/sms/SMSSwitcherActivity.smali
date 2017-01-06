.class public Leldorado/sec_01_malicious_01/sms/SMSSwitcherActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SMSSwitcherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Leldorado/sec_01_malicious_01/sms/SMSSwitcherActivity;->setContentView(I)V

    .line 15
    return-void
.end method
