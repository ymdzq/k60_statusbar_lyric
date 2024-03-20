.class public Lcom/android/settings/device/BorderedBaseDeviceCardItem;
.super Lcom/android/settings/device/BaseDeviceCardItem;
.source "BorderedBaseDeviceCardItem.java"


# instance fields
.field protected mBoardLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/device/BaseDeviceCardItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getmBoardLayout()Landroid/widget/RelativeLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/device/BorderedBaseDeviceCardItem;->mBoardLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method protected init()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->bordered_base_card_item:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    sget v0, Lcom/android/settings/R$id;->board_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/device/BorderedBaseDeviceCardItem;->mBoardLayout:Landroid/widget/RelativeLayout;

    .line 32
    sget v0, Lcom/android/settings/R$id;->card_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mTitleView:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/android/settings/R$id;->card_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/BaseDeviceCardItem;->mValueView:Landroid/widget/TextView;

    return-void
.end method
