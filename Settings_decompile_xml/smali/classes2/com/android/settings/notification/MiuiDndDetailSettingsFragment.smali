.class public Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDndDetailSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAdvancedSettings2:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideRingtoneCall:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

.field private mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;

.field private mTimeRuleValue:Ljava/lang/String;

.field private mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

.field private mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mVipListPrefValue:I

.field private mZenModeCategory:Landroidx/preference/PreferenceCategory;

.field private mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshUI(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->refreshUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    const-string/jumbo v0, "on"

    .line 67
    iput-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimeRuleValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private dndOneTrack()V
    .locals 2

    .line 325
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "zen_mode_toggle"

    invoke-static {v1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vip_list_setting_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mVipListPrefValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDndSettingsDetailFragment"

    invoke-static {v1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "repeated_incall_notification"

    invoke-static {v1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "screen_locked_only"

    invoke-static {v1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    const-string/jumbo v0, "zen_mode_automatic_rule_toggle"

    .line 330
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimeRuleValue:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isAutomationRuleEnabled(Landroid/service/notification/ZenModeConfig;)Z
    .locals 0

    .line 176
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 178
    iget-boolean p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private reapplyPolicyWithCurrent()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 172
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private refreshUI()V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->refreshZenModeSetting()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->refreshVipListUI()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->isAutomationRuleEnabled(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->mode_enable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    const-string/jumbo v0, "on"

    .line 131
    iput-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimeRuleValue:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->mode_disable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    const-string/jumbo v0, "off"

    .line 134
    iput-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimeRuleValue:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private refreshVipListUI()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshVipListUI(), current policy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiDndSettingsDetailFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->vip_mode_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    goto :goto_1

    :cond_2
    array-length v0, v1

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mVipListPrefValue:I

    .line 166
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private refreshZenModeSetting()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 144
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_mode_intercepted_when_unlocked"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 149
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method private updateRepeatedInCallPref(Z)V
    .locals 7

    .line 308
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 309
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x11

    :goto_0
    move v2, p1

    .line 315
    new-instance p1, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->state:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 318
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private updateVipListPref(Ljava/lang/Object;)V
    .locals 11

    .line 276
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 279
    iget v2, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 280
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 281
    iget v4, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-eqz v0, :cond_2

    or-int/lit8 v0, v2, 0x8

    .line 286
    iget-object v2, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    if-nez v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    move v7, p1

    move v8, v7

    move v6, v0

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, -0x5

    move v7, p1

    move v6, v0

    goto :goto_1

    :cond_2
    and-int/lit8 p1, v2, -0x9

    and-int/lit8 v0, p1, -0x5

    move v6, v0

    move v7, v3

    :goto_1
    move v8, v4

    .line 296
    :goto_2
    new-instance p1, Landroid/app/NotificationManager$Policy;

    iget v9, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v10, v1, Landroid/app/NotificationManager$Policy;->state:I

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 298
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private updateZenCheckPref(Z)V
    .locals 1

    .line 256
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "MiuiDndSettingsDetailFragment"

    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$SoundMode;->setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private updateZenLockScreenOnlyPref(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v1, "zen_mode_intercepted_when_unlocked"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->reapplyPolicyWithCurrent()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/android/settings/R$xml;->dnd_mode_detail_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 78
    new-instance p1, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$1;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 87
    iget-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;->register()V

    const-string/jumbo p1, "zen_mode_toggle_category"

    .line 89
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "zen_mode_toggle"

    .line 90
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;

    .line 91
    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "screen_locked_only"

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    .line 93
    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "vip_list_setting"

    .line 95
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    const-string/jumbo p1, "repeated_incall_notification"

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->repeat_call_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    iget-boolean p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHideRingtoneCall:Z

    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string p1, "key_advanced_settings2"

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mAdvancedSettings2:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_timing_mute"

    .line 112
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    .line 113
    new-instance v0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$2;-><init>(Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->refreshUI()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object p0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->dndOneTrack()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mVipListPref:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-ne p1, v0, :cond_0

    .line 239
    invoke-direct {p0, p2}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->updateVipListPref(Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mRepeatedIncallPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 241
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->updateRepeatedInCallPref(Z)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mZenModeTogglePref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 243
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->updateZenCheckPref(Z)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->mScreenLockedOnlyPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 245
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->updateZenLockScreenOnlyPref(Z)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiDndDetailSettingsFragment;->refreshUI()V

    return-void
.end method
