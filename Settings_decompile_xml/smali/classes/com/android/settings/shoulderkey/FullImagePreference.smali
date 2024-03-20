.class public Lcom/android/settings/shoulderkey/FullImagePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "FullImagePreference.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mMoveDistance:F

.field private mScreenWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/settings/shoulderkey/FullImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/shoulderkey/FullImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/shoulderkey/FullImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget p2, Lcom/android/settings/R$layout;->full_image_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mScreenWidth:F

    return-void
.end method

.method private startAnimation(FF)V
    .locals 2

    .line 65
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 p1, 0x3e8

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 69
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public moveImageLeft()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iget v1, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mMoveDistance:F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/shoulderkey/FullImagePreference;->startAnimation(FF)V

    return-void
.end method

.method public moveImageRight()V
    .locals 2

    .line 57
    iget v0, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mMoveDistance:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/shoulderkey/FullImagePreference;->startAnimation(FF)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    sget v0, Lcom/android/settings/R$id;->full_image:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mImageView:Landroid/widget/ImageView;

    .line 48
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shoulder_key_shortcut_guide_poco"

    const-string v2, "drawable"

    .line 49
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mScreenWidth:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/shoulderkey/FullImagePreference;->mMoveDistance:F

    return-void
.end method
