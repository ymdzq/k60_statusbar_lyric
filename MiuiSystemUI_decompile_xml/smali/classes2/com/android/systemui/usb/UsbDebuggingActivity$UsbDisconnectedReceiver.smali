.class public final Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    const-string p1, "connected"

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    :try_start_0
    sget p1, Lcom/android/systemui/usb/UsbDebuggingActivity;->$r8$clinit:I

    .line 24
    const-string p1, "adb"

    .line 26
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 32
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    const-string p2, "UsbDebuggingActivity"

    .line 41
    const-string v0, "Unable to notify Usb service"

    .line 43
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    :cond_1
    return-void
    .line 53
.end method
