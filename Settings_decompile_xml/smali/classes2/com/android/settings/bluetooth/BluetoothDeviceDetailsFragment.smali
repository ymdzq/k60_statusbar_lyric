.class public Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    }
.end annotation


# static fields
.field static EDIT_DEVICE_NAME_ITEM_ID:I = 0x1

.field private static mBAEnabled:Z = false

.field private static mBAPropertyChecked:Z = false

.field static sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;


# instance fields
.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field mInputDevice:Landroid/view/InputDevice;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnGlobalLayoutListener(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPaddingSize(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getPaddingSize()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateExtraControlUri(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->updateExtraControlUri(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string/jumbo v0, "no_config_bluetooth"

    .line 116
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const-string/jumbo p0, "persist.vendor.service.bt.broadcast_pts"

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 119
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastSourceEnabled()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "persist.bluetooth.broadcast_ui"

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastAssistEnabled()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "false"

    .line 122
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "BTDeviceDetailsFrg"

    const-string v0, "Use legacy broadcast if available"

    .line 124
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "true"

    .line 125
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getPaddingSize()I
    .locals 3

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10103bd    # @android:attr/listPreferredItemPaddingStart

    const v1, 0x10103be    # @android:attr/listPreferredItemPaddingEnd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    .line 406
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 407
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private updateExtraControlUri(I)V
    .locals 4

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v0

    const-string v1, "bt_slice_settings_enabled"

    const/4 v2, 0x1

    const-string/jumbo v3, "settings_ui"

    .line 216
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceControlUri(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 222
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BTDeviceDetailsFrg"

    const-string/jumbo v0, "unable to parse uri"

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p1, v3

    .line 228
    :goto_0
    const-class v0, Lcom/android/settings/slices/SlicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SlicePreferenceController;

    if-eqz v1, :cond_1

    move-object v3, p1

    .line 230
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    .line 231
    invoke-virtual {v0}, Lcom/android/settings/slices/SlicePreferenceController;->onStart()V

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/slices/SlicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    .line 329
    const-class v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v2, :cond_0

    return-object v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 334
    new-instance v9, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsCompanionAppsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsSpatialAudioController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v9, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v3, v9

    move-object v4, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v3, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, v4, v5, v2}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;-><init>(Landroid/content/Context;Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsRelatedToolsController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsRelatedToolsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceControlsController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v3, p1, p0, v4, v2}, Lcom/android/settings/bluetooth/BluetoothDetailsHearingDeviceControlsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAPropertyChecked:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    const-string/jumbo v3, "persist.vendor.service.bt.adv_audio_mask"

    .line 355
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "persist.bluetooth.broadcast_ui"

    .line 357
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAEnabled:Z

    .line 358
    sput-boolean v5, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAPropertyChecked:Z

    .line 360
    :cond_2
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAEnabled:Z

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    const-string v3, "BTDeviceDetailsFrg"

    const-string v7, "createPreferenceControllers for BA"

    .line 364
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBASeeker()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    const-class v3, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;

    .line 370
    const-class v7, Lcom/android/settings/bluetooth/BADevicePreferenceController;

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    .line 372
    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v6

    const-class v10, Landroidx/preference/PreferenceFragmentCompat;

    aput-object v10, v9, v5

    const-class v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    aput-object v10, v9, v4

    const/4 v10, 0x3

    aput-object v0, v9, v10

    .line 373
    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v9, v10, [Ljava/lang/Class;

    .line 375
    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v6

    aput-object v0, v9, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, v9, v4

    .line 376
    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p0, v7, v5

    .line 378
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    aput-object v8, v7, v4

    aput-object v2, v7, v10

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v2, v7, v5

    const-string p1, "added_sources"

    aput-object p1, v7, v4

    .line 380
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "init"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Lcom/android/settings/dashboard/DashboardFragment;

    aput-object v8, v7, v6

    const-class v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    aput-object v8, v7, v5

    .line 383
    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v6

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    aput-object p0, v2, v5

    .line 384
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/fragment/app/Fragment$InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    .line 391
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    sput-boolean v6, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method protected displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 320
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBAEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBASeeker()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "sync_helper_buttons"

    .line 321
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string v0, "added_sources"

    .line 322
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 324
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 139
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 143
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method getInputDevice(Landroid/content/Context;)Landroid/view/InputDevice;
    .locals 6

    .line 159
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 161
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 162
    invoke-virtual {p1, v3}, Landroid/hardware/input/InputManager;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 164
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {p1, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 131
    sget-object p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BTDeviceDetailsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 294
    sget p0, Lcom/android/settings/R$xml;->bluetooth_device_details_fragment:I

    return p0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 149
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "settings_show_stylus_preferences"

    .line 186
    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getInputDevice(Landroid/content/Context;)Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    const-string p1, "BTDeviceDetailsFrg"

    const-string/jumbo v0, "onAttach() CachedDevice is null!"

    .line 194
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 198
    :cond_1
    const-class v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 199
    const-class v0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 200
    const-class v0, Lcom/android/settings/inputmethod/KeyboardSettingsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardSettingsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/KeyboardSettingsPreferenceController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 202
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object p1

    const-string v0, "bt_slice_settings_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "settings_ui"

    .line 204
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    const-class v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 206
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    .line 210
    const-class p1, Lcom/android/settings/bluetooth/BADeviceVolumeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BADeviceVolumeController;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->init(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->setTitleForInputDevice()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    sget v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    sget v1, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080515    # @android:drawable/ic_perm_group_audio_settings

    .line 302
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 303
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    if-ne v0, v1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    move-result-object p1

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RemoteDeviceName"

    .line 311
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->finishFragmentIfNecessary()V

    return-void
.end method

.method setTitleForInputDevice()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mInputDevice:Landroid/view/InputDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/stylus/StylusDevicesController;->isDeviceStylus(Landroid/view/InputDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->stylus_device_details_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
