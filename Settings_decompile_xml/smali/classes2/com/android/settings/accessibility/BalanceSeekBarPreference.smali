.class public Lcom/android/settings/accessibility/BalanceSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "BalanceSeekBarPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Lcom/android/settings/R$attr;->preferenceStyle:I

    const v1, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    .line 49
    sget p1, Lcom/android/settings/R$layout;->preference_balance_slider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "master_balance"

    .line 76
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->setMax(I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x10204bd    # @android:id/seven

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/BalanceSeekBar;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mSeekBar:Lcom/android/settings/accessibility/BalanceSeekBar;

    const v0, 0x1020006    # @android:id/icon

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_0
    sget v0, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->init()V

    return-void
.end method
