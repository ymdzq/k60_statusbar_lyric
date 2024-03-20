.class public Lcom/android/settings/display/ScreenEnhanceEngineController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenEnhanceEngineController.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineController;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "screen_enhance_engine"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineController;->context:Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isAiSupport(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 27
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isS2hSupport()Z

    move-result p0

    if-nez p0, :cond_1

    .line 28
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isMemcSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenEnhanceEngineController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 p0, 0x1

    .line 43
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method
