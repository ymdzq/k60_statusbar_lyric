.class public Lcom/android/settings/OtgSettings$USBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtgSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OtgSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "USBReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OtgSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/OtgSettings;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/OtgSettings$USBReceiver;->this$0:Lcom/android/settings/OtgSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OtgSettings"

    const-string p2, "ACTION_USB_PORT_CHANGED"

    .line 174
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/settings/OtgSettings$USBReceiver;->this$0:Lcom/android/settings/OtgSettings;

    invoke-static {p0}, Lcom/android/settings/OtgSettings;->-$$Nest$mpostUsbChangeRefreshMsg(Lcom/android/settings/OtgSettings;)V

    :cond_1
    return-void
.end method
