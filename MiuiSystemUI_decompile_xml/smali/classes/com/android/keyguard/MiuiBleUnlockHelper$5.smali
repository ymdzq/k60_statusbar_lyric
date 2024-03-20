.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$5;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onState(I)V
    .locals 2

    .line 1
    const-string v0, "Ble state change onState: "

    .line 2
    const-string v1, "MiuiBleUnlockHelper"

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$5;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 12
    iget-object v0, p1, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p1, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object p1, p1, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$5;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBleListener:Lcom/android/keyguard/MiuiBleUnlockHelper$7;

    .line 38
    invoke-virtual {p1, p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$5;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 44
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 46
    :cond_1
    :goto_0
    return-void
    .line 49
.end method
