.class public Lcom/android/settings/MiuiBluetoothDeviceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothDeviceActionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 11
    new-instance p0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    const-string p1, ""

    .line 13
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    return-void
.end method
