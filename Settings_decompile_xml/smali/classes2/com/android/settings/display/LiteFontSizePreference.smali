.class public Lcom/android/settings/display/LiteFontSizePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "LiteFontSizePreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mCurrentPointIndex:I

.field private mLastCurrentPointIndex:I

.field private mNormalTv:Landroid/widget/TextView;

.field private mNormalTvPaddingStart:I

.field private mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

.field private mSizeChangeListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

.field private mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/LiteFontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/LiteFontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget p2, Lcom/android/settings/R$layout;->lite_font_size_pref_lyt:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->font_size_view_big_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mNormalTvPaddingStart:I

    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 63
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/FontSizeAdjustView;

    iput-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;

    .line 47
    iget v1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mCurrentPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setCurrentPointIndex(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;

    iget v1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mLastCurrentPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setLastCurrentPointIndex(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;

    iget-object v1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeChangeListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setFontSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeSeekbar:Lcom/android/settings/display/FontSizeAdjustView;

    iget-object v1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setRecommendListener(Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mNormalTv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/LiteFontSizePreference;->mNormalTv:Landroid/widget/TextView;

    .line 54
    iget v1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mNormalTvPaddingStart:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setCurrentPointIndex(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mCurrentPointIndex:I

    return-void
.end method

.method public setLastCurrentPointIndex(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mLastCurrentPointIndex:I

    return-void
.end method

.method public setRecommendListener(Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    return-void
.end method

.method public setSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/display/LiteFontSizePreference;->mSizeChangeListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    return-void
.end method
