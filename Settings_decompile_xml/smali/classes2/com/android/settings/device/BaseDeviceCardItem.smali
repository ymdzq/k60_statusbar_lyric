.class public Lcom/android/settings/device/BaseDeviceCardItem;
.super Landroid/widget/LinearLayout;
.source "BaseDeviceCardItem.java"


# instance fields
.field protected mIconView:Landroid/widget/ImageView;

.field protected mKey:Ljava/lang/String;

.field mLayoutId:I

.field protected mTitleView:Landroid/widget/TextView;

.field protected mValueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p2, ""

    .line 18
    iput-object p2, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mKey:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mLayoutId:I

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/device/BaseDeviceCardItem;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/device/BaseDeviceCardItem;->init()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method protected init()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mLayoutId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$layout;->base_card_item:I

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v0, Lcom/android/settings/R$id;->card_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mIconView:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/android/settings/R$id;->card_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/android/settings/R$id;->card_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mValueView:Landroid/widget/TextView;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Lcom/android/settings/device/DeviceCardInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    sget v0, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    sget v1, Lcom/android/settings/R$id;->card_value:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    sget v2, Lcom/android/settings/R$id;->second_card_value:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getSecondValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getSecondValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, ""

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValueMaxLine(I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
