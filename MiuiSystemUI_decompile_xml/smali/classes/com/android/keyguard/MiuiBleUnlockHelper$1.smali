.class public final Lcom/android/keyguard/MiuiBleUnlockHelper$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->connectBLEDevice()V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 25
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 32
    invoke-virtual {p1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 34
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MiuiBleUnlockHelper"

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_2
    :goto_0
    return-void
    .line 51
.end method
