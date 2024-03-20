.class public abstract Lcom/google/android/setupdesign/util/PartnerStyleHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const v1, 0x7f0a0904    # @id/suc_layout_status

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object p0

    .line 18
    move-object v0, p0

    .line 19
    check-cast v0, Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 20
    :cond_1
    return-object v0
    .line 22
.end method

.method public static getLayoutGravity(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 15
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v1, "center"

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    const-string/jumbo v1, "start"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    return v0

    .line 42
    :cond_1
    const p0, 0x800003

    .line 43
    return p0

    .line 46
    :cond_2
    const/16 p0, 0x11

    .line 47
    return p0
    .line 49
.end method

.method public static shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Lcom/google/android/setupdesign/GlifLayout;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 21
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 25
    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/google/android/setupdesign/GlifLayout;

    .line 29
    if-eqz v2, :cond_2

    .line 31
    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    :cond_2
    const v1, 0x7f0407ab    # @attr/sudUsePartnerHeavyTheme

    .line 40
    filled-new-array {v1}, [I

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    move-result v2

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    const/4 v1, 0x1

    .line 58
    if-nez v2, :cond_4

    .line 59
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    .line 61
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    move v2, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    move v2, v1

    .line 70
    :goto_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/content/Context;)Z

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    if-eqz v2, :cond_5

    .line 77
    move v0, v1

    .line 79
    :cond_5
    move p0, v0

    .line 80
    :goto_2
    return p0
    .line 81
.end method

.method public static shouldApplyPartnerResource(Landroid/content/Context;)Z
    .locals 4

    .line 5
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const v2, 0x7f040754    # @attr/sucUsePartnerResource

    .line 11
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 13
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static shouldApplyPartnerResource(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
