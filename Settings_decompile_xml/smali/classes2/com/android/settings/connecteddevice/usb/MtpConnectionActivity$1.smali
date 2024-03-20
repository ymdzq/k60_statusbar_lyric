.class Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpConnectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "connected"

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->-$$Nest$fgetmCheckBoxDialog(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
