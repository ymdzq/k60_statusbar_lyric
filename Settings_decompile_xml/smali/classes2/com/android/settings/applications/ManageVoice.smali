.class public Lcom/android/settings/applications/ManageVoice;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageVoice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageVoice$VoiceWakePref;
    }
.end annotation


# instance fields
.field private mBluetoothWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSysShortcutWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/applications/ManageVoice;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ManageVoice;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget p1, Lcom/android/settings/R$xml;->manage_voice:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ManageVoice;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ManageVoice;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 51
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/PreferredSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "system_shortcut_wake"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mSysShortcutWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mBluetoothWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    :goto_0
    iget-object v0, v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "preferred_app_intent"

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mSysShortcutWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mBluetoothWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    :goto_1
    iget-object v0, v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "preferred_app_intent_filter"

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    .line 58
    iget-object p2, p0, Lcom/android/settings/applications/ManageVoice;->mSysShortcutWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/settings/applications/ManageVoice;->mBluetoothWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    :goto_2
    iget-object p2, p2, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->curPkgName:Ljava/lang/String;

    const-string/jumbo v0, "preferred_app_package_name"

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->voice_helper_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "preferred_label"

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 42
    new-instance v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    const-string v1, "android.intent.action.ASSIST"

    const-string/jumbo v2, "system_shortcut_wake"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;-><init>(Lcom/android/settings/applications/ManageVoice;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mSysShortcutWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    .line 43
    iget-object v1, p0, Lcom/android/settings/applications/ManageVoice;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 45
    new-instance v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    const-string v2, "bluetooth_wake"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;-><init>(Lcom/android/settings/applications/ManageVoice;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageVoice;->mBluetoothWakePref:Lcom/android/settings/applications/ManageVoice$VoiceWakePref;

    .line 46
    iget-object p0, p0, Lcom/android/settings/applications/ManageVoice;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/settings/applications/ManageVoice$VoiceWakePref;->wakePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
