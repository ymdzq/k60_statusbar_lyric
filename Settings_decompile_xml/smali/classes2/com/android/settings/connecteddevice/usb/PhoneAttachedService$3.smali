.class Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$3;
.super Ljava/lang/Object;
.source "PhoneAttachedService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 92
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$3;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/PhoneAttachedService$3;->this$0:Lcom/android/settings/connecteddevice/usb/PhoneAttachedService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
