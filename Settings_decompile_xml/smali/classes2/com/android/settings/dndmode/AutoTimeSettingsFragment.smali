.class public Lcom/android/settings/dndmode/AutoTimeSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoTimeSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEndTime:I

.field private mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

.field private mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field private mQuietWristband:Landroidx/preference/CheckBoxPreference;

.field private mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

.field private mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private mStartTime:I

.field private mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

.field private mTimeFlag:Z

.field private mWristbandObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndTimePS(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuietWristband(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTimePS(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeFlag(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mTimeFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEndTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTime(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mtimeToString(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->timeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$1;-><init>(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 77
    new-instance v0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment$2;-><init>(Lcom/android/settings/dndmode/AutoTimeSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mWristbandObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private closeQuietWristband()V
    .locals 4

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "quietWristband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "check"

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private timeToString(I)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    div-int/lit8 v0, p1, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d:%02d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget p1, Lcom/android/settings/R$xml;->dndm_time_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo p1, "time_setting_root"

    .line 97
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 98
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    .line 99
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTime:I

    const-string/jumbo p1, "start_time"

    .line 100
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const-string p1, "end_time"

    .line 101
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const-string/jumbo p1, "repeat"

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/RepeatPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    const-string p1, "key_quiet_wristband_category"

    .line 103
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

    const-string p1, "key_quiet_wristband"

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    .line 106
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    iget v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    invoke-direct {p0, v0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->timeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    iget v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTime:I

    invoke-direct {p0, v0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->timeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    new-instance p1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/dndmode/RepeatPreference;->setDaysOfWeek(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 116
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietWristband(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "quiet_wristband"

    .line 124
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mWristbandObserver:Landroid/database/ContentObserver;

    .line 123
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mWristbandObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/settings/dndmode/RepeatPreference;->getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietRepeatType(Landroid/content/Context;I)V

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 172
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    iget-object p2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->startQuietWristband(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "miui.bluetooth.extra.MIBLE_PROPERTY"

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->closeQuietWristband()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 146
    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    iget v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v4, v0, 0x3c

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mTimeFlag:Z

    .line 151
    iget p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mStartTime:I

    if-lez p0, :cond_0

    .line 152
    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v6, p1, p0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v6, v1, v1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 156
    :goto_0
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mTimeFlag:Z

    .line 159
    iget p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mEndTime:I

    if-lez p0, :cond_2

    .line 160
    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v6, p1, p0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v6, v1, v1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 164
    :goto_1
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_2
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public startQuietWristband(Ljava/lang/String;)V
    .locals 4

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "quietWristband"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "mac"

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "check"

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object p0, p0, Lcom/android/settings/dndmode/AutoTimeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
