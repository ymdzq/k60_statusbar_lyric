.class public Lcom/android/settings/colorled/ColorLedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorLedSettings.java"

# interfaces
.implements Lcom/android/settings/colorled/ColorLedStartTimeController$TimePreferenceHost;
.implements Lcom/android/settings/colorled/ColorLedEndTimeController$TimePreferenceHost;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mManageNotification:Landroidx/preference/Preference;

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/colorled/IVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

.field private pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/android/settings/colorled/ColorLedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/colorled/ColorLedSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    return-void
.end method

.method private setupManageNotification()V
    .locals 2

    const-string v0, "color_led_applications"

    .line 129
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorled/ColorLedSettings;->mManageNotification:Landroidx/preference/Preference;

    .line 130
    new-instance v1, Lcom/android/settings/colorled/ColorLedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/colorled/ColorLedSettings$1;-><init>(Lcom/android/settings/colorled/ColorLedSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/android/settings/colorled/ColorLedController;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/colorled/ColorLedController;-><init>(Landroid/content/Context;Lcom/android/settings/colorled/ColorLedSettings;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/android/settings/colorled/ColorLedBatteryController;

    invoke-direct {v2, p1}, Lcom/android/settings/colorled/ColorLedBatteryController;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v3, Lcom/android/settings/colorled/ColorLedNotificationController;

    invoke-direct {v3, p1}, Lcom/android/settings/colorled/ColorLedNotificationController;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v4, Lcom/android/settings/colorled/ColorLedInCallModeController;

    invoke-direct {v4, p1}, Lcom/android/settings/colorled/ColorLedInCallModeController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v5, Lcom/android/settings/colorled/ColorLedRedPackageController;

    invoke-direct {v5, p1}, Lcom/android/settings/colorled/ColorLedRedPackageController;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v6, Lcom/android/settings/colorled/ColorLedGameModeController;

    invoke-direct {v6, p1}, Lcom/android/settings/colorled/ColorLedGameModeController;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v7, Lcom/android/settings/colorled/ColorLedMusicModeController;

    invoke-direct {v7, p1}, Lcom/android/settings/colorled/ColorLedMusicModeController;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v8, Lcom/android/settings/MiuiBaseCategoryController;

    const-string v9, "color_led_notification_category"

    invoke-direct {v8, p1, v9}, Lcom/android/settings/MiuiBaseCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/colorled/ColorLedSettings;->notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    .line 66
    new-instance v8, Lcom/android/settings/MiuiBaseCategoryController;

    const-string v9, "color_led_pulse_category"

    invoke-direct {v8, p1, v9}, Lcom/android/settings/MiuiBaseCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/colorled/ColorLedSettings;->pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    .line 68
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/android/settings/colorled/ColorLedStartTimeController;

    invoke-direct {p1, v1, p0}, Lcom/android/settings/colorled/ColorLedStartTimeController;-><init>(Landroid/content/Context;Lcom/android/settings/colorled/ColorLedStartTimeController$TimePreferenceHost;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Lcom/android/settings/colorled/ColorLedEndTimeController;

    invoke-direct {p1, v1, p0}, Lcom/android/settings/colorled/ColorLedEndTimeController;-><init>(Landroid/content/Context;Lcom/android/settings/colorled/ColorLedEndTimeController$TimePreferenceHost;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public ensureVisibleOtherPreference(Z)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/colorled/IVisibleListener;

    .line 154
    invoke-interface {v1, p1}, Lcom/android/settings/colorled/IVisibleListener;->ensureVisible(Z)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorled/ColorLedSettings;->mManageNotification:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->notificationCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    if-eqz p1, :cond_2

    const-string v0, "color_led_notification_category"

    .line 161
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/MiuiBaseCategoryController;->updateState(Landroidx/preference/Preference;)V

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedSettings;->pulseCategoryController:Lcom/android/settings/MiuiBaseCategoryController;

    if-eqz p1, :cond_3

    const-string v0, "color_led_pulse_category"

    .line 164
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/MiuiBaseCategoryController;->updateState(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 43
    sget-object p0, Lcom/android/settings/colorled/ColorLedSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 38
    sget p0, Lcom/android/settings/R$xml;->color_led:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/colorled/ColorLedSettings;->setupManageNotification()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 116
    const-class p1, Lcom/android/settings/colorled/ColorLedEndTimeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/colorled/ColorLedEndTimeController;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorled/ColorLedEndTimeController;->buildTimePicker(Landroid/app/Activity;)Lmiuix/appcompat/app/TimePickerDialog;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 113
    :cond_1
    const-class p1, Lcom/android/settings/colorled/ColorLedStartTimeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/colorled/ColorLedStartTimeController;

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorled/ColorLedStartTimeController;->buildTimePicker(Landroid/app/Activity;)Lmiuix/appcompat/app/TimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 146
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedSettings;->mVisibleListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public shoEndTimePicker()V
    .locals 1

    const/4 v0, 0x3

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public showTimePicker()V
    .locals 1

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 1

    .line 105
    sget-object p1, Lcom/android/settings/colorled/ColorLedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateTimeAndDateDisplay"

    invoke-static {p1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
