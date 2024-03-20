.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;
.super Ljava/lang/Object;
.source "UsbModeChooserReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->handlePhoneAttached(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;->-$$Nest$mstartPhoneAttachedService(Lcom/android/settings/connecteddevice/usb/UsbModeChooserReceiver;Landroid/content/Context;)V

    return-void
.end method
