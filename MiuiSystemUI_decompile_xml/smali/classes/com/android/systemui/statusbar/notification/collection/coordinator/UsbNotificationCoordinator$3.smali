.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 15
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mPlugType:I

    .line 17
    const-string v2, "plugged"

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p2

    .line 24
    iput p2, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mPlugType:I

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 27
    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mPlugType:I

    .line 29
    const/4 p2, 0x2

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    move p1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v1

    .line 37
    :goto_0
    if-ne v0, p2, :cond_1

    .line 38
    move v1, v2

    .line 40
    :cond_1
    if-eq p1, v1, :cond_6

    .line 41
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->-$$Nest$mrefreshWhenUsbConnectChanged(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;Z)V

    .line 43
    goto :goto_2

    .line 46
    :cond_2
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 55
    const-string p1, "connected"

    .line 57
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 59
    move-result p1

    .line 62
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->-$$Nest$mrefreshWhenUsbConnectChanged(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;Z)V

    .line 63
    goto :goto_2

    .line 66
    :cond_3
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    sget-boolean p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->SUPPORT_DISABLE_USB_BY_SIM:Z

    .line 75
    if-eqz p1, :cond_6

    .line 77
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    .line 83
    move-result p1

    .line 86
    move p2, v1

    .line 87
    move v0, p2

    .line 88
    :goto_1
    if-ge p2, p1, :cond_5

    .line 89
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 91
    move-result-object v2

    .line 94
    invoke-virtual {v2, p2}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    .line 95
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 103
    goto :goto_1

    .line 105
    :cond_5
    if-lez v0, :cond_6

    .line 106
    const-string p1, "UsbNotificationCoordinator"

    .line 108
    const-string p2, "has sim"

    .line 110
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    move-result-object p0

    .line 122
    const-string p1, "disable_usb_by_sim"

    .line 123
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    :cond_6
    :goto_2
    return-void
    .line 128
.end method
