.class Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$1;
.super Ljava/lang/Object;
.source "UsbHeadsetUnSupportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
