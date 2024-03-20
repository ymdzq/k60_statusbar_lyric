.class public Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsCompanionAppsController.java"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mProfilesContainer:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$1pplWz_MVZ6kH9WZHYCCqCie5UI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->lambda$getAssociations$0(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5VKwMaR_cFCV3JQkHCE7qw8FzXE(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->lambda$updatePreferences$4(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fb8b2ElP20MW-UOvrbFQxABYa84(Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->lambda$updatePreferences$3(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQKEowagJy9Ko4W1cgIOEhUGqnc(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->lambda$removeAssociationDialog$1(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q1ZEm1mTlIm2erPETXyj2ljlyik(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->lambda$getPreferencesNeedToShow$2(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 80
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 81
    const-class p2, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/CompanionDeviceManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 142
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BTCompanionController"

    const-string v0, "Package Not Found"

    .line 145
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getAssociations(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    .line 94
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPreferencesNeedToShow(Ljava/lang/String;Landroidx/preference/PreferenceCategory;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/preference/PreferenceCategory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->getAssociations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 155
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 158
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->removePreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda4;-><init>(Landroidx/preference/PreferenceCategory;)V

    .line 169
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 170
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getAssociations$0(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getPreferencesNeedToShow$2(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)Z
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$removeAssociationDialog$1(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, -0x1

    if-ne p4, p3, :cond_0

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->removeAssociation(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePreferences$3(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->removeAssociationDialog(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$updatePreferences$4(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static removeAssociation(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V
    .locals 2

    :try_start_0
    const-string v0, "companiondevice"

    .line 129
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/companion/ICompanionDeviceManager;

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 130
    invoke-interface {v0, p1, p0, v1}, Landroid/companion/ICompanionDeviceManager;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-static {p2, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->removePreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 133
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private removeAssociationDialog(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V

    .line 113
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    sget p2, Lcom/android/settings/R$string;->bluetooth_companion_app_remove_association_confirm_button:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000    # @android:string/cancel

    .line 118
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->bluetooth_companion_app_remove_association_dialog_title:I

    .line 119
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$string;->bluetooth_companion_app_body:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 120
    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static removePreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "device_companion_apps"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 89
    sget p0, Lcom/android/settings/R$layout;->preference_companion_app:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method protected refresh()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->updatePreferences(Landroid/content/Context;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method public updatePreferences(Landroid/content/Context;Ljava/lang/String;Landroidx/preference/PreferenceCategory;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 188
    invoke-static/range {p1 .. p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v0

    const-string/jumbo v1, "settings_ui"

    const-string v2, "bt_slice_settings_enabled"

    const/4 v11, 0x1

    .line 190
    invoke-static {v1, v2, v11}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    iget-object v2, v8, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 193
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 192
    invoke-interface {v0, v2}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 199
    :cond_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v13, p2

    .line 201
    invoke-direct {v8, v13, v10}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->getPreferencesNeedToShow(Ljava/lang/String;Landroidx/preference/PreferenceCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-direct {v8, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 204
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_clear:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 209
    new-instance v6, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda0;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v11, v5

    move-object/from16 v5, p3

    move-object/from16 v16, v12

    move-object v12, v6

    move-object v6, v15

    move-object v13, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceCategory;Ljava/lang/CharSequence;Landroid/content/Context;)V

    invoke-direct {v12, v13, v11, v9}, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    .line 218
    :try_start_0
    iget-object v1, v8, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 224
    invoke-virtual {v12, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v12, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    invoke-virtual {v12, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v12, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 233
    invoke-virtual {v10, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const-string v2, "BTCompanionController"

    const-string v3, "Icon Not Found"

    .line 220
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object/from16 v13, p2

    move v11, v1

    move-object/from16 v12, v16

    goto :goto_0

    :cond_2
    move-object/from16 v13, p2

    goto :goto_0

    :cond_3
    return-void
.end method
