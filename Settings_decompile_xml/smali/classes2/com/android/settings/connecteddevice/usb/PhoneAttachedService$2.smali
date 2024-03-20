.class Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;
.super Ljava/lang/Object;
.source "PhoneAttachedService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->initDialog()V
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

    .line 84
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-static {v0, p2}, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;->-$$Nest$msetMode(Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;I)V

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$2;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
