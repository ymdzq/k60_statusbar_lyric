.class Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridDialogAdapter"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field private mChooseIndex:I

.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$smgetTitleMiui12(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    .line 443
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 444
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmContext(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->item_usb_grid_dialog1:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 446
    :cond_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmContext(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->item_usb_grid_dialog2:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 450
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {p3}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$smgetTitleMiui12(J)I

    move-result p3

    .line 451
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$mgetIcon(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;J)I

    move-result v0

    .line 453
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->title:Landroid/widget/TextView;

    .line 454
    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->icon:Landroid/widget/ImageView;

    .line 456
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmCurrentModesList(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$misInternalSW(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->this$0:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->-$$Nest$fgetmContext(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/Android Auto"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 461
    :goto_1
    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    iget p0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->mChooseIndex:I

    if-ne p1, p0, :cond_3

    .line 463
    sget p0, Lcom/android/settings/R$drawable;->usb_background_selected_view:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-object p2
.end method

.method public setChooseItem(I)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$GridDialogAdapter;->mChooseIndex:I

    .line 471
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
