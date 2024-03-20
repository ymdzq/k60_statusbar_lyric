.class public Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiAccessibilityAsrController.java"


# static fields
.field public static final APP_STORE_URI:Ljava/lang/String; = "https://app.xiaomi.com/details?id=com.miui.accessibility&back=true"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_TYPE:Ljava/lang/String; = "floatingWindowType"

.field public static final LAUNCH_BY:Ljava/lang/String; = "launch_by"

.field public static final MIUI_ACCESSIBILITY_ASR_CLASS_NAME:Ljava/lang/String; = "com.miui.accessibility.asr.component.message.MessageActivity"

.field public static final MIUI_ACCESSIBILITY_ASR_PACKAGE_NAME:Ljava/lang/String; = "com.miui.accessibility"

.field public static final MIUI_ACCESSIBILITY_ASR_PREFERENCE:Ljava/lang/String; = "miui_accessibility_asr_preference"

.field public static final MIUI_AI_SUBTITLES_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.aiasst.vision"

.field public static final MIUI_AI_SUBTITLES_SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.aiasst.vision.control.translation.AiTranslateService"

.field public static final VALUE_FROM:Ljava/lang/String; = "xiaomi_wensheng"

.field public static final VALUE_TYPE:Ljava/lang/String; = "startAiSubtitlesFullscreen"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiPickSound(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    sget p0, Lcom/android/settings/R$string;->live_caption_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->hideAllMiuiAccessibilityService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiPickSound(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_accessibility_asr_preference"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiPickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.aiasst.vision"

    const-string v3, "com.xiaomi.aiasst.vision.control.translation.AiTranslateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "from"

    const-string/jumbo v3, "xiaomi_wensheng"

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "floatingWindowType"

    const-string/jumbo v3, "startAiSubtitlesFullscreen"

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.accessibility"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.accessibility.asr.component.message.MessageActivity"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/MiuiUtils;->cancelSplit(Landroid/content/Context;Landroid/content/Intent;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/AppMarketUtils;->getMarketPkgName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://app.xiaomi.com/details?id=com.miui.accessibility&back=true"

    .line 87
    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/utils/AppMarketUtils;->toMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
