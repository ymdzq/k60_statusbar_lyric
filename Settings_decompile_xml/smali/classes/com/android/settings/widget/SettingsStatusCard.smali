.class public Lcom/android/settings/widget/SettingsStatusCard;
.super Landroid/widget/LinearLayout;
.source "SettingsStatusCard.java"


# instance fields
.field private mCardBackground:I

.field private mCardIcon:I

.field private mCardImageView:Landroid/widget/ImageView;

.field private mCardTitle:Ljava/lang/String;

.field private mCardTitleColor:I

.field private mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

.field private mCardValue:Ljava/lang/String;

.field private mCardValueColor:I

.field private mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

.field private mIsChecked:Z

.field private mIsDisable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsStatusCard;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsStatusCard;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsStatusCard;->initView()V

    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/android/settings/R$styleable;->SettingsStatusCard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitle:Ljava/lang/String;

    .line 50
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardTitleColor:I

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->card_view_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleColor:I

    .line 51
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValue:Ljava/lang/String;

    .line 52
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardValueColor:I

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->card_view_value_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueColor:I

    .line 53
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardIcon:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardIcon:I

    .line 54
    sget p2, Lcom/android/settings/R$styleable;->SettingsStatusCard_cardBackground:I

    sget v0, Lcom/android/settings/R$drawable;->card_shape_corner:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardBackground:I

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 59
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->settings_status_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    sget v0, Lcom/android/settings/R$id;->card_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/CustomMarqueeTextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    .line 61
    sget v0, Lcom/android/settings/R$id;->card_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/CustomMarqueeTextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    .line 62
    sget v0, Lcom/android/settings/R$id;->card_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardImageView:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardBackground:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget v1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget v1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardIcon:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    return-object p0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    return-object p0
.end method

.method public setCardImageView(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setCardTitle(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 92
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCardTitle(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCardValue(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 105
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCardValue(Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mIsChecked:Z

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->card_checked_corner:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->card_view_title_checked_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->card_view_value_checked_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->card_shape_corner:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardTitleTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->card_view_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mCardValueTextView:Lcom/android/settings/widget/CustomMarqueeTextView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->card_view_value_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingsStatusCard;->mIsDisable:Z

    if-eqz p1, :cond_0

    const p1, 0x3e99999a    # 0.3f

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
