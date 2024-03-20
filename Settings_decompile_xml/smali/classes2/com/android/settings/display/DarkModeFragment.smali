.class public Lcom/android/settings/display/DarkModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DarkModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;
    }
.end annotation


# instance fields
.field private isSetStartTime:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/DarkModeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsListHandler:Landroid/os/Handler;

.field private mAppsListHandlerThread:Landroid/os/HandlerThread;

.field private mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

.field private mDarkModeAppsCategory:Landroidx/preference/PreferenceCategory;

.field private mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

.field private mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

.field private mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

.field private mDarkModeTimeEnablePref:Landroidx/preference/CheckBoxPreference;

.field private mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

.field private mDarkModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/DarkModeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTime:I

.field private mEndTimePref:Lcom/android/settings/dndmode/LabelPreference;

.field private mHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShouldShowConfirmDialog:Z

.field private mStartTime:I

.field private mStartTimePref:Lcom/android/settings/dndmode/LabelPreference;

.field private mStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

.field private mToast:Landroid/widget/Toast;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field userId:I


# direct methods
.method public static synthetic $r8$lambda$_jAC7bIkEW_cIWHFfRs72G53L_g(Lcom/android/settings/display/DarkModeFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->lambda$onAppChecked$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yn-jrqPDe0rVhLTvKguAqLXGJZY(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/DarkModeFragment;->lambda$onAppChecked$1(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmzaUaz17aLY-9XNEhrikQKxoQ4(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/DarkModeFragment;->lambda$onAppChecked$0(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppInfo(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppList(Lcom/android/settings/display/DarkModeFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfirmDialog(Lcom/android/settings/display/DarkModeFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkModeAppCacheManager(Lcom/android/settings/display/DarkModeFragment;)Lcom/android/settings/display/util/DarkModeAppCacheManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/display/DarkModeFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/display/DarkModeFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStats(Lcom/android/settings/display/DarkModeFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mStats:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStats(Lcom/android/settings/display/DarkModeFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStats:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUsageStatus(Lcom/android/settings/display/DarkModeFragment;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getUsageStatus()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshAppList(Lcom/android/settings/display/DarkModeFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->refreshAppList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAppList(Lcom/android/settings/display/DarkModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->showAppList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/DarkModeFragment;->userId:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppList:Ljava/util/List;

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

    .line 176
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private formatChooseTime(II)Ljava/lang/String;
    .locals 2

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 181
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 182
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getActivityImpl()Landroid/app/Activity;
    .locals 0

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method private getDarkModeTimeType()I
    .locals 2

    .line 334
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dark_mode_time_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getUsageStatus()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 466
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const/4 v1, 0x0

    const-wide/32 v2, 0x36ee80

    sub-long v2, v4, v2

    .line 467
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initPreference()V
    .locals 3

    const-string v0, "dark_mode_time_group"

    .line 143
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "dark_mode_time_radio_group"

    .line 144
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "dark_mode_time_enable"

    .line 145
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeEnablePref:Landroidx/preference/CheckBoxPreference;

    const-string v0, "dark_mode_sun_time_mode"

    .line 146
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/DarkModePreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    const-string v0, "dark_mode_auto_time_mode"

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/DarkModePreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    const-string v0, "dark_mode_start_time"

    .line 148
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTimePref:Lcom/android/settings/dndmode/LabelPreference;

    const-string v0, "dark_mode_end_time"

    .line 149
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTimePref:Lcom/android/settings/dndmode/LabelPreference;

    const-string v0, "font_background_settings"

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

    const-string v0, "dark_mode_apps_list"

    .line 151
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppsCategory:Landroidx/preference/PreferenceCategory;

    .line 153
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeEnablePref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isSunRiseSunSetMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeAutoTimeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeContrastEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTimePref:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/display/DarkModeFragment;->formatChooseTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTimePref:Lcom/android/settings/dndmode/LabelPreference;

    iget v1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/display/DarkModeFragment;->formatChooseTime(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private initPreferenceListener()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTimePref:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTimePref:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onAppChecked$0(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    .line 405
    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 406
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->setAppDarkMode(Ljava/lang/String;Z)V

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "filterItemPreference:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isCheck=false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DarkModeFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onAppChecked$1(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x1

    .line 411
    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 412
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->setAppDarkMode(Ljava/lang/String;Z)V

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "filterItemPreference:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isCheck=true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DarkModeFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onAppChecked$2(Landroid/content/DialogInterface;)V
    .locals 3

    .line 417
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const-string v2, "dark_mode_show_confirm_dialog"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lcom/android/settings/display/DarkModeFragment;->mShouldShowConfirmDialog:Z

    :cond_0
    return-void
.end method

.method private loadAppsList()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/display/DarkModeFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/DarkModeFragment$2;-><init>(Lcom/android/settings/display/DarkModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onAppChecked(ZLandroidx/preference/Preference;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppChecked, appInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DarkModeFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v1, p0, Lcom/android/settings/display/DarkModeFragment;->mShouldShowConfirmDialog:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 397
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_1

    .line 398
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->dark_mode_alert_dialog_title:I

    .line 400
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->dark_mode_alert_dialog_message:I

    .line 401
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dark_mode_alert_dialog_checkbox:I

    .line 403
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dark_mode_alert_dialog_cancel:I

    new-instance v2, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;)V

    .line 404
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dark_mode_alert_dialog_confirm:I

    new-instance v2, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;)V

    .line 410
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/DarkModeFragment;)V

    .line 416
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/display/DarkModeFragment;->updateConfirmDialogListener(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V

    .line 426
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterItemPreference:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "isCheck="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->setAppDarkMode(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private refreshAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/DarkModeAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mData:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 437
    new-instance v0, Lcom/android/settings/display/DarkModeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/display/DarkModeFragment$3;-><init>(Lcom/android/settings/display/DarkModeFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method private setDarkModeTimeType(I)V
    .locals 3

    .line 326
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getDarkModeTimeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "open_sun_time_channel"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dark_mode_time_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showAppList()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 453
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/DarkModeAppInfo;

    .line 456
    new-instance v2, Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;-><init>(Lcom/android/settings/display/DarkModeFragment;Landroid/content/Context;Lcom/android/settings/display/DarkModeAppInfo;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppsCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private showTimePickerDelay(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/android/settings/display/DarkModeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/DarkModeFragment$1;-><init>(Lcom/android/settings/display/DarkModeFragment;I)V

    const-wide/16 p0, 0x96

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showWarnToast()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_dark_mode_select_time_error_summary:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mToast:Landroid/widget/Toast;

    .line 309
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateConfirmDialogListener(Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/DarkModeFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/DarkModeFragment$4;-><init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/DarkModeFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/DarkModeFragment$5;-><init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDarkModeMoreSettingsStatus()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeContrastEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateDarkModeTimeGroup(Ljava/lang/Boolean;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "dark_mode_time_radio_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 320
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDarkModeTimeGroupStatus()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getDarkModeTimeType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getDarkModeTimeType()I

    move-result p0

    if-ne p0, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget p1, Lcom/android/settings/R$xml;->dark_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getActivityImpl()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DarkModeFragment"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandlerThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandler:Landroid/os/Handler;

    .line 103
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeStartTime(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    .line 104
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeEndTime(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    .line 105
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/util/DarkModeAppCacheManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/display/util/DarkModeAppCacheManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAppCacheManager:Lcom/android/settings/display/util/DarkModeAppCacheManager;

    .line 106
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "dark_mode_show_confirm_dialog"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/display/DarkModeFragment;->mShouldShowConfirmDialog:Z

    .line 108
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->initPreference()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->initPreferenceListener()V

    .line 110
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->updateDarkModeTimeGroup(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mAppsListHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 188
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 189
    instance-of v0, p1, Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p2, p1}, Lcom/android/settings/display/DarkModeFragment;->onAppChecked(ZLandroidx/preference/Preference;)V

    goto/16 :goto_1

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "font_background_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "dark_mode_sun_time_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "dark_mode_time_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "dark_mode_auto_time_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    const-string p1, "DarkModeFragment"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDarkModeFontBackgroundPref isCheck = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeFontBackgroundPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 225
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeContrastEnable(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 216
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDarkModeSunTimeModePref isCheck = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 219
    invoke-direct {p0, v2}, Lcom/android/settings/display/DarkModeFragment;->setDarkModeTimeType(I)V

    .line 220
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setSunRiseSunSetMode(Landroid/content/Context;Z)V

    goto :goto_1

    .line 194
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDarkModeTimeEnablePref isCheck = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeTimeEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 196
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->updateDarkModeTimeGroup(Ljava/lang/Boolean;)V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->updateDarkModeTimeGroupStatus()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->getDarkModeTimeType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->setDarkModeTimeType(I)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeTimeEnable(Landroid/content/Context;Z)V

    if-nez p2, :cond_5

    .line 201
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    .line 202
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    .line 201
    invoke-static {p0, p1, v3}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeEnable(Landroid/content/Context;ZZ)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 204
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->startDarkModeAutoTime(Landroid/content/Context;Z)V

    goto :goto_1

    .line 208
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDarkModeAutoTimePref isCheck = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeAutoTimePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 210
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mDarkModeSunTimeModePref:Lcom/android/settings/display/DarkModePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 211
    invoke-direct {p0, v1}, Lcom/android/settings/display/DarkModeFragment;->setDarkModeTimeType(I)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeAutoTimeEnable(Landroid/content/Context;Z)V

    .line 213
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->startDarkModeAutoTime(Landroid/content/Context;Z)V

    :cond_6
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5fed5ee8 -> :sswitch_3
        -0x56ccb7be -> :sswitch_2
        0xd645b6f -> :sswitch_1
        0x2905e824 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 236
    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v4, v0, 0x3c

    .line 237
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v6, p0, Lcom/android/settings/display/DarkModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    .line 238
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "dark_mode_start_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "dark_mode_end_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/display/DarkModeFragment;->isSetStartTime:Z

    .line 245
    iget p1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->showTimePicker(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/android/settings/display/DarkModeFragment;->isSetStartTime:Z

    .line 241
    iget p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->showTimePicker(I)V

    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->loadAppsList()V

    return-void
.end method

.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 1

    mul-int/lit8 p1, p2, 0x3c

    add-int/2addr p1, p3

    .line 267
    iget-boolean v0, p0, Lcom/android/settings/display/DarkModeFragment;->isSetStartTime:Z

    if-eqz v0, :cond_1

    .line 268
    iget v0, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    if-ne p1, v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->showWarnToast()V

    .line 270
    iget p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->showTimePickerDelay(I)V

    return-void

    .line 273
    :cond_0
    iput p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    .line 274
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTimePref:Lcom/android/settings/dndmode/LabelPreference;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/display/DarkModeFragment;->formatChooseTime(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    invoke-static {p1, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeStartTime(Landroid/content/Context;I)V

    goto :goto_0

    .line 277
    :cond_1
    iget v0, p0, Lcom/android/settings/display/DarkModeFragment;->mStartTime:I

    if-ne p1, v0, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->showWarnToast()V

    .line 279
    iget p1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    invoke-direct {p0, p1}, Lcom/android/settings/display/DarkModeFragment;->showTimePickerDelay(I)V

    return-void

    .line 282
    :cond_2
    iput p1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    .line 283
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTimePref:Lcom/android/settings/dndmode/LabelPreference;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/display/DarkModeFragment;->formatChooseTime(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/display/DarkModeFragment;->mEndTime:I

    invoke-static {p1, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeEndTime(Landroid/content/Context;I)V

    .line 286
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->startDarkModeAutoTime(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->updateDarkModeTimeGroupStatus()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/display/DarkModeFragment;->updateDarkModeMoreSettingsStatus()V

    return-void
.end method

.method public showTimePicker(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 259
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/DarkModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    iget-boolean v0, p0, Lcom/android/settings/display/DarkModeFragment;->isSetStartTime:Z

    if-eqz v0, :cond_1

    .line 260
    sget v0, Lcom/android/settings/R$string;->paper_mode_start_time_title:I

    goto :goto_1

    .line 261
    :cond_1
    sget v0, Lcom/android/settings/R$string;->paper_mode_end_time_title:I

    .line 259
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 262
    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
