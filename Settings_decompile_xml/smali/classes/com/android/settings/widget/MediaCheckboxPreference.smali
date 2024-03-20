.class public Lcom/android/settings/widget/MediaCheckboxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "MediaCheckboxPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDelimiterView:Landroid/view/View;

.field private mImageHeight:I

.field private mImageRelativeLayout:Landroid/widget/RelativeLayout;

.field private mImageWidth:I

.field private mLottieRelativeLayout:Landroid/widget/RelativeLayout;

.field private mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mResId:I

.field private mShowDelimiter:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MediaCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 68
    iput p2, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MediaCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MediaCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    .line 43
    iget p3, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mType:I

    if-ne p2, p3, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->gesture_img_checkbox_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->gesture_img_checkbox_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageHeight:I

    .line 50
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->media_checkbox_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private findMediaView(ILandroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 1

    .line 155
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 156
    :goto_0
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 157
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 158
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getResId(Ljava/lang/String;)I
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "drawable"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "raw"

    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setImageInfo(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 113
    sget v0, Lcom/android/settings/R$id;->image_viewstub_checkbox:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageRelativeLayout:Landroid/widget/RelativeLayout;

    .line 116
    sget v1, Lcom/android/settings/R$id;->gesture_img:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/MediaCheckboxPreference;->findMediaView(ILandroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    iget v1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageWidth:I

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 119
    iget v2, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget v2, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mImageWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 123
    iget p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mResId:I

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private setLottieInfo(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 130
    sget v0, Lcom/android/settings/R$id;->lottie_viewstub_checkbox:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieRelativeLayout:Landroid/widget/RelativeLayout;

    .line 133
    sget v0, Lcom/android/settings/R$id;->lottie_video:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;->findMediaView(ILandroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3

    .line 135
    iget p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mResId:I

    if-eqz p1, :cond_3

    const-string p1, "key_combination_left_power_volume_down"

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;->getResId(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mResId:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "ingres"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ares"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->video_checkbox_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fe947ae147ae148L    # 0.79

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->video_checkbox_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mResId:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mType:I

    return p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 74
    iget v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;->setImageInfo(Landroidx/preference/PreferenceViewHolder;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;->setLottieInfo(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mDelimiterView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 80
    sget v0, Lcom/android/settings/R$id;->delimiter:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mDelimiterView:Landroid/view/View;

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mDelimiterView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mShowDelimiter:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MediaCheckboxPreference;->getResId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mResId:I

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setShowDelimiter(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/android/settings/widget/MediaCheckboxPreference;->mShowDelimiter:Z

    return-void
.end method
