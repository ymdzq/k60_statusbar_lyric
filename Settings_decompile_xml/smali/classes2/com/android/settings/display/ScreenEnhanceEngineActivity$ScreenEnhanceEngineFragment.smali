.class public Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEnhanceEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEnhanceEngineFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mIsAiSupport:Z

.field private mIsMemcSupport:Z

.field private mIsS2hSupport:Z

.field private mIsSrSupport:Z

.field private mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mScreenEnhanceEngineSrPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineSrPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 31
    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 32
    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 33
    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsSrSupport:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsAiSupport:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsS2hSupport:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsMemcSupport:Z

    return-void
.end method

.method private findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/android/settings/R$xml;->screen_enhance_engine_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "screen_enhance_engine_sr"

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineSrPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineSrPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo p1, "screen_enhance_engine_ai"

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 53
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo p1, "screen_enhance_engine_s2h"

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo p1, "screen_enhance_engine_memc"

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->context:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsSrSupport:Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isAiSupport(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsAiSupport:Z

    .line 67
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isS2hSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsS2hSupport:Z

    .line 68
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isMemcSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsMemcSupport:Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsSrSupport:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineSrPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsAiSupport:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineAiPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getAiStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    sget v2, Lcom/android/settings/R$string;->screen_enhance_status_enable:I

    goto :goto_0

    .line 81
    :cond_1
    sget v2, Lcom/android/settings/R$string;->screen_enhance_status_disable:I

    .line 79
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 83
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsS2hSupport:Z

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineS2hPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getS2hStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    sget v2, Lcom/android/settings/R$string;->screen_enhance_status_enable:I

    goto :goto_1

    .line 87
    :cond_3
    sget v2, Lcom/android/settings/R$string;->screen_enhance_status_disable:I

    .line 85
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 89
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mIsMemcSupport:Z

    if-eqz v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->mScreenEnhanceEngineMemcPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineActivity$ScreenEnhanceEngineFragment;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getMemcStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 92
    sget p0, Lcom/android/settings/R$string;->screen_enhance_status_enable:I

    goto :goto_2

    .line 93
    :cond_5
    sget p0, Lcom/android/settings/R$string;->screen_enhance_status_disable:I

    .line 91
    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_6
    return-void
.end method
