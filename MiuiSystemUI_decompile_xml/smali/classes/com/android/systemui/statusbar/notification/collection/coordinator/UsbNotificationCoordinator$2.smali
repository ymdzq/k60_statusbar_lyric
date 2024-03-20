.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->SUPPORT_DISABLE_USB_BY_SIM:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "disable_usb_by_sim"

    .line 12
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v4

    .line 24
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mDisableUsbBySim:Z

    .line 25
    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 29
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mDisableUsbBySim:Z

    .line 31
    if-eqz p1, :cond_1

    .line 33
    const-string p1, "UsbNotificationCoordinator"

    .line 35
    const-string v0, "not support disable usb by sim!"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 42
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mDisableUsbBySim:Z

    .line 44
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    move-result-object p1

    .line 51
    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 55
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mDisableUsbBySim:Z

    .line 57
    if-nez v0, :cond_4

    .line 59
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mIsDialogShowing:Z

    .line 61
    if-eqz v0, :cond_2

    .line 63
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mUsbAlert:Lmiuix/appcompat/app/AlertDialog;

    .line 65
    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 72
    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mPlugType:I

    .line 74
    const/4 v0, 0x2

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    goto :goto_1

    .line 79
    :cond_3
    move v3, v4

    .line 80
    :goto_1
    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->-$$Nest$mrefreshWhenUsbConnectChanged(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;Z)V

    .line 81
    :cond_4
    return-void
    .line 84
.end method
