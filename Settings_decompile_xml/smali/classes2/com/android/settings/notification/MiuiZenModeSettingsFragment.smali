.class public Lcom/android/settings/notification/MiuiZenModeSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiZenModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExceptionalCaseCategory:Landroidx/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;

.field private mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroid/app/NotificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatedIncallPref(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVipListPref(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshUI(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->refreshUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;

    .line 66
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$1;-><init>(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mOnPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private refreshUI()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 145
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshUI(), current policy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiZenModeSettingsFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_3

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->vip_mode_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    goto :goto_1

    :cond_2
    array-length v0, v1

    sub-int/2addr v0, v2

    .line 154
    :goto_1
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget p1, Lcom/android/settings/R$xml;->dnd_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    new-instance p1, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$2;-><init>(Lcom/android/settings/notification/MiuiZenModeSettingsFragment;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 122
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;->register()V

    const-string p1, "exceptional_case_category"

    .line 124
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mExceptionalCaseCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "vip_list_setting"

    .line 126
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 127
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mOnPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mExceptionalCaseCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    const-string/jumbo p1, "repeated_incall_notification"

    .line 132
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    .line 133
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mOnPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mExceptionalCaseCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 140
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->refreshUI()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 176
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->vip_mode_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 180
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vip_list_setting_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiZenModeSettingsFragment"

    invoke-static {v1, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string/jumbo v0, "repeated_incall_notification"

    invoke-static {v0, p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettingsFragment;->refreshUI()V

    return-void
.end method
