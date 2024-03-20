.class public Lcom/android/settings/cameragrip/CameraGripDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CameraGripDetail.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;
    }
.end annotation


# instance fields
.field private final mCameraShortcutResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFimrwareStateReceiver:Landroid/content/BroadcastReceiver;

.field private mFirmwareUpdate:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

.field private mHandleButtonFunctionSettingsPreference:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mOTAToast:Landroid/widget/Toast;

.field private mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;


# direct methods
.method public static synthetic $r8$lambda$0zU5XYh3aVPlO_Pg4lt9ydk2r4k(Lcom/android/settings/cameragrip/CameraGripDetail;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->lambda$onPreferenceClick$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFirmwareUpdate(Lcom/android/settings/cameragrip/CameraGripDetail;)Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFirmwareUpdate:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;)Landroid/widget/Toast;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mOTAToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOTAToast(Lcom/android/settings/cameragrip/CameraGripDetail;Landroid/widget/Toast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mOTAToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/settings/cameragrip/CameraGripDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cameragrip/CameraGripDetail$1;-><init>(Lcom/android/settings/cameragrip/CameraGripDetail;)V

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFimrwareStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cleanOTASource()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mOTAToast:Landroid/widget/Toast;

    .line 199
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFirmwareUpdate:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-virtual {v0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->dismissDialogIfNeeded()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFirmwareUpdate:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    invoke-virtual {v0}, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;->cleanOTAServiceIfNeeded()V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFimrwareStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private initCameraKeyShortcut()V
    .locals 3

    const-string/jumbo v0, "quick_launch_camera"

    .line 100
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;

    .line 102
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->photography_handle_launch_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_camera"

    .line 105
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->photography_handle_launch_and_take_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_camera_and_take_photo"

    .line 107
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 113
    iget-object v1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 114
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 118
    iget-object v1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mCameraShortcutResourceMap:Ljava/util/Map;

    .line 119
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_camera_key"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private initHandleChargeProtect()V
    .locals 5

    const-string/jumbo v0, "preference_handle_charge_protect"

    .line 130
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    .line 131
    sget v1, Lcom/android/settings/R$string;->photography_handle_charge_protected_summary:I

    .line 132
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-wide v3, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_setting_handle_charge_protect"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 135
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 137
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initHandleKeyShortcut()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->initCameraKeyShortcut()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->initHandleChargeProtect()V

    const-string v0, "handle_key_function_settings"

    .line 94
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mHandleButtonFunctionSettingsPreference:Landroidx/preference/Preference;

    .line 96
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initOTASource()V
    .locals 3

    const-string v0, "key_for_mihandle_firmware_update"

    .line 191
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    iput-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFirmwareUpdate:Lcom/android/settings/cameragrip/HandleFirmwareUpdatePreference;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.ACTION_MIHANDLE_OTA_REPLY"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mFimrwareStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/cameragrip/CameraGripDetail$CameraGripTrack;->trackHandeButtonFunctionSettingsClick(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "CameraGripDetail"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 62
    sget p0, Lcom/android/settings/R$xml;->camera_grip_detail:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->initHandleKeyShortcut()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 72
    sget p1, Lcom/android/settings/R$xml;->camera_grip_detail:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->initOTASource()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/cameragrip/CameraGripDetail;->cleanOTASource()V

    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "quick_launch_camera"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mQuickLaunchCameraDropDownPreference:Lmiuix/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "long_press_camera_key"

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "preference_handle_charge_protect"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 150
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "sec_setting_handle_charge_protect"

    .line 149
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mHandleButtonFunctionSettingsPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.fragment.settings.PreferenceExtraActivity"

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "target_tag"

    const-string v2, "com.android.camera.fragment.settings.CameraHandleFragment"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/cameragrip/CameraGripDetail;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/cameragrip/CameraGripDetail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/cameragrip/CameraGripDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/cameragrip/CameraGripDetail;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 79
    sget v0, Lcom/android/settings/R$string;->photography_handle_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    return-void
.end method
