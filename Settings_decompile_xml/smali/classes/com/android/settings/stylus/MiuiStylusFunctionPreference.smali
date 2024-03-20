.class public Lcom/android/settings/stylus/MiuiStylusFunctionPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiStylusFunctionPreference.java"


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSource:I

.field private mMask:Landroid/view/View;

.field private mShowArrow:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSummarySource:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSource:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/settings/stylus/MiuiStylusFunctionPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mEnabled:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitleSource:I

    .line 29
    iput p2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummarySource:I

    .line 30
    iput p2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageViewSource:I

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mEnabled:Z

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mShowArrow:Z

    .line 44
    sget p3, Lcom/android/settings/R$layout;->stylus_function_preference_layout:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 45
    invoke-super {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 46
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isRtl()Z
    .locals 2

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference$1;-><init>(Lcom/android/settings/stylus/MiuiStylusFunctionPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mMask:Landroid/view/View;

    .line 62
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitle:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageView:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mMask:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mEnabled:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitleSource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 67
    iget-object v4, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :cond_1
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummarySource:I

    if-eq v0, v1, :cond_2

    .line 70
    iget-object v4, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :cond_2
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageViewSource:I

    if-eq v0, v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_3
    sget v0, Lcom/android/settings/R$id;->arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mArrow:Landroid/widget/ImageView;

    .line 76
    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mShowArrow:Z

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mArrow:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 86
    :cond_6
    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    mul-int/2addr v2, p0

    add-int/2addr v1, v2

    if-gt v1, v0, :cond_7

    return-void

    .line 91
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 92
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setConnEnabled(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mEnabled:Z

    .line 99
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mMask:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mShowArrow:Z

    .line 108
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 131
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageViewSource:I

    .line 132
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSummary(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummarySource:I

    .line 124
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mSummary:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitleSource:I

    .line 116
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusFunctionPreference;->mTitle:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
