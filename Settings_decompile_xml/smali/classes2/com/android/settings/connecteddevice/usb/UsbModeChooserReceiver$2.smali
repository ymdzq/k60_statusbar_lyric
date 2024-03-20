.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;
.super Ljava/lang/Object;
.source "UsbModeChooserReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->handlePhoneAttachedAsync(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$device:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    sget-object v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->SUPPORT_VENDOR_IDS:[I

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$minitVidList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;[I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    sget-object v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->SUPPORT_PRODUCT_IDS:[I

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$minitPidList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;[I)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  PID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbModeChooserReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$fgetmSupportVendorIdsList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$fgetmSupportProductIdsList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$device:Landroid/hardware/usb/UsbDevice;

    .line 152
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$mstartPhoneAttachedService(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
