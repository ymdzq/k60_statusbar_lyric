.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->initDialog()V
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

    .line 331
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 334
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    const-string v1, ""

    const-string/jumbo v2, "ro.product.device"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 336
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 337
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 338
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_REVERSE_CHARGE_SWAP_DR:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 339
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "yudi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 351
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 352
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    :cond_3
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
