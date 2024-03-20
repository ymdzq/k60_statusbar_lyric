.class public Lcom/android/settings/dndmode/AlarmContentFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AlarmContentFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCalls:Landroidx/preference/CheckBoxPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mEvents:Landroidx/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroidx/preference/CheckBoxPreference;

.field private final mSettingsObserver:Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateControls(Lcom/android/settings/dndmode/AlarmContentFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/dndmode/AlarmContentFragment;->updateControls()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/android/settings/dndmode/AlarmContentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dndmode/AlarmContentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;-><init>(Lcom/android/settings/dndmode/AlarmContentFragment;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mSettingsObserver:Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dndmode/AlarmContentFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private updateControls()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mCalls:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mMessages:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mEvents:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean p0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 42
    const-class p0, Lcom/android/settings/dndmode/AlarmContentFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isCts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mSettingsObserver:Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->register()V

    .line 52
    sget v0, Lcom/android/settings/R$xml;->dnd_alarm_content:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "events"

    .line 55
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mEvents:Landroidx/preference/CheckBoxPreference;

    .line 56
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "phone_calls"

    .line 58
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mCalls:Landroidx/preference/CheckBoxPreference;

    .line 59
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "messages"

    .line 61
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mMessages:Landroidx/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mCalls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 67
    iget-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mMessages:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dndmode/AlarmContentFragment;->updateControls()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 94
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mSettingsObserver:Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/dndmode/AlarmContentFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mCalls:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 101
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 102
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mMessages:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 107
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mEvents:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 110
    iget-object p1, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 111
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 112
    iget-object p0, p0, Lcom/android/settings/dndmode/AlarmContentFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/dndmode/AlarmContentFragment;->updateUI()V

    return-void
.end method
