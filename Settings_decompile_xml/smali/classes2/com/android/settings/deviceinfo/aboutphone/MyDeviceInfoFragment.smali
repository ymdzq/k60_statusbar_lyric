.class public Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MyDeviceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$lPAvRUkcUJIlhSzlBy9OpwTV2MY(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->lambda$buildPreferenceControllers$0(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 318
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$2;

    sget v1, Lcom/android/settings/R$xml;->my_device_info:I

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;-><init>(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    const-string/jumbo v2, "phone_number"

    invoke-direct {v1, p0, v2, p2}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :goto_0
    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    .line 189
    :goto_1
    new-instance v4, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;)V

    .line 191
    new-instance v3, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v3, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v3, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v3, Lcom/android/settings/deviceinfo/ManualPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/ManualPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v3, p1, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Lcom/android/settings/deviceinfo/UptimePreferenceController;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/deviceinfo/UptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v3, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;

    const-string v5, "battery_status"

    invoke-direct {v3, p0, v5, p2}, Lcom/android/settings/deviceinfo/aboutphone/BatteryStatusController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v3, Lcom/android/settings/deviceinfo/aboutphone/BatteryLevelController;

    const-string v5, "battery_level"

    invoke-direct {v3, p0, v5, p2}, Lcom/android/settings/deviceinfo/aboutphone/BatteryLevelController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance p2, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, v4, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Ljava/util/List;)V

    const-string v3, "imei_info"

    if-eqz p1, :cond_2

    .line 218
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    const/4 v5, 0x0

    .line 221
    :goto_2
    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 222
    new-instance v6, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    .line 224
    invoke-static {v5}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v6, p1, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V

    .line 226
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 233
    :cond_4
    new-instance p2, Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    invoke-direct {p2, v4, p0, v2}, Lcom/android/settings/deviceinfo/simstatus/EidStatus;-><init>(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 234
    new-instance v3, Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    const-string v5, "eid_info"

    invoke-direct {v3, p0, v5}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p1, :cond_5

    goto :goto_3

    .line 235
    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v4, p2, v1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->init(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Lcom/android/settings/deviceinfo/simstatus/EidStatus;Landroidx/fragment/app/FragmentActivity;)V

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    .line 239
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_6
    return-object v0
.end method

.method private static synthetic lambda$buildPreferenceControllers$0(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 211
    new-instance v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V

    .line 214
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 175
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 107
    sget p0, Lcom/android/settings/R$string;->help_uri_about:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MyDeviceInfoFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x28

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 170
    sget p0, Lcom/android/settings/R$xml;->my_device_info:I

    return p0
.end method

.method public isCustForJpKd()Z
    .locals 3

    const/4 p0, 0x0

    .line 308
    :try_start_0
    const-class v0, Lmiui/telephony/TelephonyManager;

    const-string v1, "isCustForJpKd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 117
    const-class p1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    const-string p0, "MyDeviceInfoFragment"

    const-string v0, "context already null, not unregistering SimStateReceiver"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 153
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "MyDeviceInfoFragment"

    const-string v0, "context is null, not registering SimStateReceiver"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSetDeviceNameConfirm(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 122
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "sim_card_lock"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/Preference;

    const-string v1, "basic_info_category"

    .line 125
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->isCustForJpKd()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 129
    :cond_0
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->isCustForJpKd()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "XIG04"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 136
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public showDeviceNameWarningDialog(Ljava/lang/String;)V
    .locals 0

    .line 294
    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    return-void
.end method
