.class public Lcom/android/settings/connecteddevice/GroupSavedDeviceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GroupSavedDeviceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "group_saved_device_list"

.field private static final KEY_PCG_EIGHT:Ljava/lang/String; = "pcg_eight"

.field private static final KEY_PCG_FIVE:Ljava/lang/String; = "pcg_five"

.field private static final KEY_PCG_FOUR:Ljava/lang/String; = "pcg_four"

.field private static final KEY_PCG_NINE:Ljava/lang/String; = "pcg_nine"

.field private static final KEY_PCG_ONE:Ljava/lang/String; = "pcg_one"

.field private static final KEY_PCG_REMAINING:Ljava/lang/String; = "pcg_remaining"

.field private static final KEY_PCG_SEVEN:Ljava/lang/String; = "pcg_seven"

.field private static final KEY_PCG_SIX:Ljava/lang/String; = "pcg_six"

.field private static final KEY_PCG_THREE:Ljava/lang/String; = "pcg_three"

.field private static final KEY_PCG_TWO:Ljava/lang/String; = "pcg_two"

.field private static final TAG:Ljava/lang/String; = "GroupSavedDeviceController"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

.field private mGroupPreference:Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mListCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "group_saved_device_list"

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    .line 94
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "group_saved_device_list"

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_one"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_two"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_three"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_four"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_five"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_six"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_seven"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_eight"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    const-string/jumbo v1, "pcg_nine"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "pcg_remaining"

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;

    const/16 v1, -0x63

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GroupPreferenceCategory;->setGroupId(I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 126
    new-instance v0, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 127
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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
    const-string p0, "group_saved_device_list"

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 155
    new-instance v0, Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    return-void
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

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/GroupUtils;->addPreference(Ljava/util/ArrayList;Landroidx/preference/Preference;Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mListCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->removePreference(Ljava/util/ArrayList;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    .line 162
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->launchgroupOptions(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupSavedDeviceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupSavedBluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
