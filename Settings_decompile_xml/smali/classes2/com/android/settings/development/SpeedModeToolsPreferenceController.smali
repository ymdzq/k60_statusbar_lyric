.class public Lcom/android/settings/development/SpeedModeToolsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SpeedModeToolsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SPEED_MODE_ENABLE:Ljava/lang/String; = "speed_mode_enable"

.field public static final SPEED_MODE_KEY:Ljava/lang/String; = "speed_mode"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hideSpeedModeActivatedNotification()V
    .locals 2

    .line 150
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    .line 152
    sget v1, Lcom/android/settings/R$string;->speed_mode_noti_title:I

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private showSpeedModeActivatedNotification()V
    .locals 10

    .line 122
    iget-object v0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->auto_task_operation_close:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/MiuiSettingsReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "miui.intent.action.settings.SPEED_MODE_CLOSED"

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/SubSettings;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.MAIN"

    .line 127
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.SubSettings"

    .line 128
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-class v5, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 130
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":settings:show_fragment"

    .line 129
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 131
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v5, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 133
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "miui.showAction"

    const/4 v5, 0x1

    .line 134
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "speed_mode"

    invoke-direct {v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v6, Lcom/android/settings/R$drawable;->ic_performance_notification:I

    .line 136
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->speed_mode_noti_title:I

    .line 137
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->speed_mode_noti_summary:I

    .line 138
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 139
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->shape_notification_button_normal:I

    .line 141
    invoke-virtual {v2, v3, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 145
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->menu_item_notification_power_text:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-static {v1, v7, p0, v2}, Lcom/android/settings/utils/NotificationUtils;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 57
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "speed_mode_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "speed_mode"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->hideSpeedModeActivatedNotification()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "speed_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string/jumbo v0, "speed_mode"

    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->showSpeedModeActivatedNotification()V

    .line 94
    iget-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->hideSpeedModeActivatedNotification()V

    .line 98
    iget-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "speed_mode"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
