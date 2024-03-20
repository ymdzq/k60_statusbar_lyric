.class public Lcom/android/settings/widget/BaseSettingsCard;
.super Landroid/widget/LinearLayout;
.source "BaseSettingsCard.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/android/settings/widget/BaseSettingsCard;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/android/settings/widget/BaseSettingsCard;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/android/settings/widget/BaseSettingsCard;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/android/settings/widget/BaseSettingsCard;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/settings/widget/BaseSettingsCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->base_settings_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    sget v0, Lcom/android/settings/R$id;->base_settings_card_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/widget/BaseSettingsCard;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method
