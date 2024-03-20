.class public Lcom/android/settings/display/HandyModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandyModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/HandyModeFragment$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/settings/display/HandyModeFragment$MyHandler;

.field private mHandyModeState:Landroidx/preference/CheckBoxPreference;

.field private mHint:Landroidx/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 2

    const-string v0, "handy_mode_state"

    .line 75
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandyModeState:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "handy_mode_hint"

    .line 79
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mHint:Landroidx/preference/Preference;

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/HandyModeFragment;->mHint:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private updateStateOnlyCheckBox()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandyModeState:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 89
    sget v1, Lcom/android/settings/R$string;->handy_mode_tips_full_screen:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandyModeState:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/HandyModeFragment;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "one_handed_mode_enabled"

    iget v2, p0, Lcom/android/settings/display/HandyModeFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v3, v1

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandyModeState:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStateOnlyCheckBox : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HandyModeFragment"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 41
    const-class p0, Lcom/android/settings/display/HandyModeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/android/settings/R$xml;->handy_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/HandyModeFragment;->mUserId:I

    .line 49
    new-instance p1, Lcom/android/settings/display/HandyModeFragment$MyHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/HandyModeFragment$MyHandler;-><init>(Lcom/android/settings/display/HandyModeFragment;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/display/HandyModeFragment;->mHandler:Lcom/android/settings/display/HandyModeFragment$MyHandler;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/HandyModeFragment;->mResolver:Landroid/content/ContentResolver;

    .line 51
    invoke-direct {p0}, Lcom/android/settings/display/HandyModeFragment;->initPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandler:Lcom/android/settings/display/HandyModeFragment$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string/jumbo v0, "setting_Additional_settings_onehand"

    .line 102
    invoke-static {v0, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "handy_mode_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 107
    iput v0, p1, Landroid/os/Message;->what:I

    .line 108
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 109
    iget-object v1, p0, Lcom/android/settings/display/HandyModeFragment;->mResolver:Landroid/content/ContentResolver;

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object p0, p0, Lcom/android/settings/display/HandyModeFragment;->mHandler:Lcom/android/settings/display/HandyModeFragment$MyHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onPreferenceChange ONE_HANDED_MODE_ENABLED="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HandyModeFragment"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/display/HandyModeFragment;->updateStateOnlyCheckBox()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->handy_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
