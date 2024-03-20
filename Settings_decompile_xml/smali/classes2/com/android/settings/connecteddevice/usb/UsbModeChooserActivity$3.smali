.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 370
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    .line 374
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p4, 0x80

    cmp-long p1, p1, p4

    const-string p2, ""

    const-string/jumbo p4, "ro.product.device"

    const/4 p5, 0x1

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 376
    invoke-static {p4, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 377
    sget-object p2, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->MIUI_REVERSE_CHARGE_SWAP_DR:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {p4, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result p2

    if-ne p2, p5, :cond_1

    const-string/jumbo p2, "yudi"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmBackend(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 390
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmDialog(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 393
    :cond_3
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
