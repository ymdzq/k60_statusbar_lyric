.class public Lcom/android/settings/accessibility/LottieAnimationPreference;
.super Landroidx/preference/Preference;
.source "LottieAnimationPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mAssetName:Ljava/lang/String;

.field private mBottomMargin:I

.field private mLeftMargin:I

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mMaxHeight:I

.field private mRepeatCount:I

.field private mRightMargin:I

.field private mTopMargin:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    .line 20
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRepeatCount:I

    .line 31
    sget p1, Lcom/android/settings/R$layout;->preference_lottie_animation_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    .line 20
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRepeatCount:I

    .line 41
    sget p1, Lcom/android/settings/R$layout;->preference_lottie_animation_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    .line 20
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRepeatCount:I

    .line 36
    sget p1, Lcom/android/settings/R$layout;->preference_lottie_animation_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->animated_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    iget v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLeftMargin:I

    iget v1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mTopMargin:I

    iget v2, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRightMargin:I

    iget v3, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mBottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mAssetName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accessibility/LottieAnimationPreference;->startAnimation()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 69
    iget-object p0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAssetName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mAssetName:Ljava/lang/String;

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setMargin(IIII)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLeftMargin:I

    .line 89
    iput p2, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mTopMargin:I

    .line 90
    iput p3, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRightMargin:I

    .line 91
    iput p4, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mBottomMargin:I

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    if-eq p1, v0, :cond_0

    .line 101
    iput p1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mMaxHeight:I

    .line 102
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mAssetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mRepeatCount:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 76
    iget-object p0, p0, Lcom/android/settings/accessibility/LottieAnimationPreference;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
