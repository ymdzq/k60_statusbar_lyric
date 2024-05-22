.class public Lcom/android/systemui/tuner/DemoModeFragment;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final STATUS_ICONS:[Ljava/lang/String;


# instance fields
.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

.field public mEnabledSwitch:Landroidx/preference/SwitchPreference;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mOnSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v0, "volume"

    .line 2
    const-string v1, "bluetooth"

    .line 5
    const-string v2, "location"

    .line 7
    const-string v3, "alarm"

    .line 9
    const-string/jumbo v4, "zen"

    .line 11
    const-string/jumbo v5, "sync"

    .line 14
    const-string/jumbo v6, "tty"

    .line 17
    const-string v7, "eri"

    .line 20
    const-string v8, "mute"

    .line 22
    const-string/jumbo v9, "speakerphone"

    .line 24
    const-string v10, "managed_profile"

    .line 27
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 33
    return-void
    .line 35
.end method

.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/preference/SwitchPreference;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 12
    const v2, 0x7f1303dd    # @string/enable_demo_mode 'Enable demo mode'

    .line 14
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 20
    iput-object p0, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 22
    new-instance v0, Landroidx/preference/SwitchPreference;

    .line 24
    invoke-direct {v0, p1, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 29
    const v2, 0x7f130ada    # @string/show_demo_mode 'Show demo mode'

    .line 31
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 37
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 43
    iput-object p0, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 45
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Landroidx/preference/PreferenceScreen;

    .line 52
    invoke-direct {v2, p1, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 60
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 65
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    .line 67
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 70
    new-instance v0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 75
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;-><init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 77
    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->startTracking()V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 87
    iget-boolean v0, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 96
    iget-boolean v0, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 105
    iget-boolean v0, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 113
    return-void
    .line 116
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    iget-object v0, v0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 20
    return-void
    .line 23
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x102002c    # @android:id/home

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
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
    const/16 v0, 0xe5

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 12
    return-void
    .line 15
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    move p2, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v2

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 11
    const-string/jumbo v3, "sysui_tuner_demo_on"

    .line 13
    if-ne p1, v0, :cond_2

    .line 16
    if-nez p2, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 20
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 25
    iget-object p1, p1, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 27
    invoke-interface {p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 29
    move-result v0

    .line 32
    invoke-interface {p1, v2, v0, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 39
    const/16 v0, 0xeb

    .line 40
    invoke-static {p1, v0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 49
    move-result p1

    .line 52
    const-string/jumbo v0, "sysui_demo_allowed"

    .line 53
    invoke-interface {p0, p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 56
    goto/16 :goto_3

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 61
    if-ne p1, v0, :cond_5

    .line 63
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 68
    const/16 v0, 0xec

    .line 69
    invoke-static {p1, v0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 71
    if-eqz p2, :cond_4

    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 76
    const-string p2, "com.android.systemui.demo"

    .line 78
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 83
    iget-object p2, p2, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 85
    invoke-interface {p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 87
    move-result v0

    .line 90
    invoke-interface {p2, v1, v0, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 91
    const-string p2, "clock"

    .line 94
    const-string v0, "command"

    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :try_start_0
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 101
    const-string v3, "\\."

    .line 103
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 108
    aget-object p2, p2, v2

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 111
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 115
    move-result p2

    .line 118
    const-string v3, "%02d00"

    .line 119
    new-array v4, v1, [Ljava/lang/Object;

    .line 121
    rem-int/lit8 p2, p2, 0x18

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object p2

    .line 128
    aput-object p2, v4, v2

    .line 129
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    const-string p2, "1010"

    .line 136
    :goto_1
    const-string v3, "hhmm"

    .line 138
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 143
    move-result-object p2

    .line 146
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string p2, "network"

    .line 150
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo p2, "wifi"

    .line 155
    const-string/jumbo v3, "show"

    .line 158
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string p2, "mobile"

    .line 164
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo p2, "sims"

    .line 169
    const-string v3, "1"

    .line 172
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string p2, "nosim"

    .line 177
    const-string v3, "false"

    .line 179
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string p2, "4"

    .line 184
    const-string v4, "level"

    .line 186
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string p2, "datatype"

    .line 191
    const-string v5, "lte"

    .line 193
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 198
    move-result-object p2

    .line 201
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    const-string p2, "fully"

    .line 205
    const-string/jumbo v5, "true"

    .line 207
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 213
    move-result-object p2

    .line 216
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    const-string p2, "battery"

    .line 220
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string p2, "100"

    .line 225
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string p2, "plugged"

    .line 230
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 235
    move-result-object p2

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    const-string/jumbo p2, "status"

    .line 242
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object p2, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 248
    :goto_2
    const/16 v4, 0xb

    .line 250
    if-ge v2, v4, :cond_3

    .line 252
    aget-object v4, p2, v2

    .line 254
    const-string v5, "hide"

    .line 256
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    add-int/lit8 v2, v2, 0x1

    .line 261
    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 264
    move-result-object p2

    .line 267
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    const-string p2, "notifications"

    .line 271
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo p2, "visible"

    .line 276
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 282
    move-result-object p0

    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    goto :goto_3

    .line 289
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 290
    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 292
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 294
    move-result p1

    .line 297
    invoke-interface {p0, v2, p1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 298
    :goto_3
    return v1

    .line 301
    :cond_5
    return v2
    .line 302
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    const/16 v0, 0xe5

    .line 9
    const/4 v1, 0x1

    .line 11
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 12
    return-void
    .line 15
.end method
