.class public Lcom/android/settings/accessibility/LottieAnimationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LottieAnimationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LottieAnimationPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLower4GB()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    if-eqz v0, :cond_a

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 66
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const-string v0, "accessibility_waiting_time_vertical.json"

    goto :goto_1

    :cond_1
    const-string v0, "accessibility_waiting_time_horizontal.json"

    goto :goto_1

    :cond_2
    const-string v0, "accessibility_waiting_time_phone.json"

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 71
    iget-object v4, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "night/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_3
    invoke-virtual {v4, v0}, Lcom/android/settings/accessibility/LottieAnimationPreference;->setAssetName(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    .line 78
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->accessibility_animated_max_height_pad_vertical:I

    .line 78
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    .line 80
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->accessibility_animated_max_height_pad_horizontal:I

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 75
    :cond_5
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/LottieAnimationPreference;->setMaxHeight(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    .line 84
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 86
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->accessibility_animated_margin_top_pad_vertical:I

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->accessibility_animated_margin_top_pad_horizontal:I

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v2

    .line 90
    :goto_3
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    .line 92
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->accessibility_animated_margin_bottom_pad_vertical:I

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_4

    .line 94
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->accessibility_animated_margin_bottom_pad_horizontal:I

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_4

    :cond_9
    move p0, v2

    .line 82
    :goto_4
    invoke-virtual {v0, v2, v3, v2, p0}, Lcom/android/settings/accessibility/LottieAnimationPreference;->setMargin(IIII)V

    :cond_a
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/accessibility/LottieAnimationPreferenceController;->mAnimatedImagePreference:Lcom/android/settings/accessibility/LottieAnimationPreference;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accessibility/LottieAnimationPreference;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
