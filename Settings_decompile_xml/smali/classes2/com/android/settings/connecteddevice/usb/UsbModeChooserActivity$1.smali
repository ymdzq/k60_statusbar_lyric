.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "connected"

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "configured"

    .line 135
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "accessory"

    .line 136
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method
