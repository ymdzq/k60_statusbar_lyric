.class public final Lcom/android/systemui/usb/UsbDebuggingActivity$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    move p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v0

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    .line 12
    iget-object p2, p2, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 14
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 16
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    move v0, v1

    .line 22
    :cond_1
    const-string p2, "adb"

    .line 23
    if-eqz p1, :cond_2

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 31
    move-result-object p2

    .line 34
    invoke-static {p2}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 35
    move-result-object p2

    .line 38
    invoke-interface {p2, v0, p1}, Landroid/debug/IAdbManager;->allowDebugging(ZLjava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    .line 42
    iput-boolean v1, p1, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDenySwitch:Z

    .line 44
    goto :goto_2

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget p1, Lcom/android/systemui/usb/UsbDebuggingActivity;->$r8$clinit:I

    .line 49
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 51
    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 55
    move-result-object p1

    .line 58
    invoke-interface {p1}, Landroid/debug/IAdbManager;->denyDebugging()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 62
    :goto_1
    const-string p2, "UsbDebuggingActivity"

    .line 63
    const-string v0, "Unable to notify Usb service"

    .line 65
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 72
    return-void
    .line 75
.end method
