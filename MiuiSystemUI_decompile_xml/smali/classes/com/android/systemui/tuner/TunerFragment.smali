.class public Lcom/android/systemui/tuner/TunerFragment;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG_ONLY:[Ljava/lang/String;


# instance fields
.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "picture_in_picture"

    .line 2
    const-string v1, "nav_bar"

    .line 4
    const-string v2, "lockscreen"

    .line 6
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method

.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 9
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    const/4 p0, 0x2

    .line 2
    const p2, 0x7f130a2b    # @string/remove_from_settings 'Remove from Settings'

    .line 3
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 7
    return-void
    .line 10
.end method

.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 3

    .line 1
    const p1, 0x7f170010    # @xml/tuner_prefs 'res/xml/tuner_prefs.xml'

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 11
    const-string v0, "plugin_prefs"

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object p1

    .line 18
    const-string v0, "plugins"

    .line 19
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 27
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 29
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 35
    :cond_0
    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 38
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 43
    invoke-direct {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    .line 47
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 53
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 55
    const-string v0, "doze"

    .line 57
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 63
    :cond_1
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 66
    if-nez p1, :cond_3

    .line 68
    move p1, v1

    .line 70
    :goto_0
    const/4 v0, 0x3

    .line 71
    if-ge p1, v0, :cond_3

    .line 72
    sget-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    .line 74
    aget-object v0, v0, p1

    .line 76
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 78
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 84
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 86
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 88
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    move-result-object p1

    .line 101
    const-string/jumbo v0, "seen_tuner_warning"

    .line 102
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 105
    move-result p1

    .line 108
    if-nez p1, :cond_4

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 111
    move-result-object p1

    .line 114
    const-string/jumbo v0, "tuner_warning"

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 118
    move-result-object p1

    .line 121
    if-nez p1, :cond_4

    .line 122
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    .line 124
    invoke-direct {p1}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;-><init>()V

    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :cond_4
    return-void
    .line 136
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x102002c    # @android:id/home

    .line 6
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    return v2

    .line 19
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 27
    new-instance v0, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;)V

    .line 34
    return v2

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 38
    move-result p0

    .line 41
    return p0
    .line 42
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    const/16 v0, 0xe3

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 12
    return-void
    .line 15
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f130b5d    # @string/system_ui_tuner 'System UI Tuner'

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    const/16 v0, 0xe3

    .line 19
    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 22
    return-void
    .line 25
.end method
