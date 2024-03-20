.class public Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 2
    return-void
    .line 5
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    const/high16 v1, 0x80000

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 8
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const-string/jumbo p1, "service.adb.tcp.port"

    .line 14
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 31
    const v0, 0x7f130c0b    # @string/usb_debugging_secondary_user_title 'USB debugging not allowed'

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 40
    const v0, 0x7f130c0a    # @string/usb_debugging_secondary_user_message 'The user currently signed in to this device can't turn on USB debugging. To use this feature, switch ...'

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 49
    const v0, 0x104000a    # @android:string/ok

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 58
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 62
    return-void
    .line 65
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 18
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "adb"

    .line 11
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "UsbDebuggingSecondaryUserActivity"

    .line 26
    const-string v2, "Unable to notify Usb service"

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 33
    return-void
    .line 36
.end method
