.class public Lcom/android/settings/colorgameled/ColorGameLedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorGameLedSettings.java"

# interfaces
.implements Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;
.implements Lcom/android/settings/colorgameled/ColorGameLedEndTimeController$TimePreferenceHost;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManageNotification:Landroidx/preference/Preference;

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/colorgameled/IVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

.field private pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/settings/colorgameled/ColorGameLedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    return-void
.end method

.method private refreshPrefVisible()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "light_turn_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->ensureVisibleOtherPreference(Z)V

    return-void
.end method

.method private setupManageNotification()V
    .locals 2

    const-string v0, "color_led_applications"

    .line 146
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mManageNotification:Landroidx/preference/Preference;

    .line 147
    new-instance v1, Lcom/android/settings/colorgameled/ColorGameLedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings$1;-><init>(Lcom/android/settings/colorgameled/ColorGameLedSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 73
    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mContext:Landroid/content/Context;

    .line 75
    new-instance v2, Lcom/android/settings/colorgameled/ColorGameLedController;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/colorgameled/ColorGameLedController;-><init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedSettings;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/android/settings/colorgameled/ColorGameLedTimeController;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/colorgameled/ColorGameLedTimeController;-><init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedSettings;)V

    .line 78
    new-instance v3, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;

    invoke-direct {v3, p1}, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v4, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;

    invoke-direct {v4, p1}, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v5, Lcom/android/settings/colorgameled/ColorGameLedInCallModeController;

    invoke-direct {v5, p1}, Lcom/android/settings/colorgameled/ColorGameLedInCallModeController;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v6, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;

    invoke-direct {v6, p1}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v7, Lcom/android/settings/MiuiBaseCategoryController;

    const-string v8, "color_led_notification_category"

    invoke-direct {v7, p1, v8}, Lcom/android/settings/MiuiBaseCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    .line 83
    new-instance v7, Lcom/android/settings/MiuiBaseCategoryController;

    const-string v8, "color_led_pulse_category"

    invoke-direct {v7, p1, v8}, Lcom/android/settings/MiuiBaseCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    .line 85
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p1, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;

    invoke-direct {p1, v1, p0}, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;-><init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedStartTimeController$TimePreferenceHost;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p1, Lcom/android/settings/colorgameled/ColorGameLedEndTimeController;

    invoke-direct {p1, v1, p0}, Lcom/android/settings/colorgameled/ColorGameLedEndTimeController;-><init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedEndTimeController$TimePreferenceHost;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public ensureVisibleOtherPreference(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/colorgameled/IVisibleListener;

    .line 205
    invoke-interface {v1, p1}, Lcom/android/settings/colorgameled/IVisibleListener;->ensureVisible(Z)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->refreshTimePrefVisible()V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->refreshNotificationPrefVisible(Z)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    if-eqz p1, :cond_1

    const-string v0, "color_led_notification_category"

    .line 212
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/MiuiBaseCategoryController;->updateState(Landroidx/preference/Preference;)V

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    if-eqz p1, :cond_2

    const-string v0, "color_led_pulse_category"

    .line 216
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/MiuiBaseCategoryController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 53
    sget-object p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 48
    sget p0, Lcom/android/settings/R$xml;->color_game_led:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->setupManageNotification()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->refreshPrefVisible()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 133
    const-class p1, Lcom/android/settings/colorgameled/ColorGameLedEndTimeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/colorgameled/ColorGameLedEndTimeController;

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorgameled/ColorGameLedEndTimeController;->buildTimePicker(Landroid/app/Activity;)Lmiuix/appcompat/app/TimePickerDialog;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 130
    :cond_1
    const-class p1, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorgameled/ColorGameLedStartTimeController;->buildTimePicker(Landroid/app/Activity;)Lmiuix/appcompat/app/TimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 163
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->refreshPrefVisible()V

    return-void
.end method

.method public refreshNotificationPrefVisible(Z)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mManageNotification:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "default_notification_led_on"

    const/4 v1, 0x1

    .line 191
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    iget-object v2, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "notification_light_turn_on"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 195
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mManageNotification:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mManageNotification:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public refreshTimePrefVisible()V
    .locals 7

    const-string v0, "color_led_start_time"

    .line 175
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v1, "color_led_end_time"

    .line 176
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 177
    iget-object v2, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "light_turn_on_Time"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 179
    :goto_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "light_turn_on"

    invoke-static {p0, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    .line 182
    :goto_2
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    move v4, v3

    .line 183
    :cond_3
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    return-void
.end method

.method public shoEndTimePicker()V
    .locals 1

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public showTimePicker()V
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 1

    .line 122
    sget-object p1, Lcom/android/settings/colorgameled/ColorGameLedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateTimeAndDateDisplay"

    invoke-static {p1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
