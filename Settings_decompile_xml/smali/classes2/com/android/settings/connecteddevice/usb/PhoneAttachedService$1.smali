.class Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneAttachedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->-$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->-$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 51
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$1;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method
