.class public Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GroupConnectedBluetoothDevicesController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# static fields
.field private static final KEY_EIGHT:Ljava/lang/String; = "group_eight"

.field private static final KEY_FIVE:Ljava/lang/String; = "group_five"

.field private static final KEY_FOUR:Ljava/lang/String; = "group_four"

.field private static final KEY_GROUP:Ljava/lang/String; = "group_connected_device_list"

.field private static final KEY_NINE:Ljava/lang/String; = "group_nine"

.field private static final KEY_ONE:Ljava/lang/String; = "group_one"

.field private static final KEY_REMAINING:Ljava/lang/String; = "group_remaining"

.field private static final KEY_SEVEN:Ljava/lang/String; = "group_seven"

.field private static final KEY_SIX:Ljava/lang/String; = "group_six"

.field private static final KEY_THREE:Ljava/lang/String; = "group_three"

.field private static final KEY_TWO:Ljava/lang/String; = "group_two"

.field private static final TAG:Ljava/lang/String; = "GroupConnectedBluetoothDevicesController"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GroupPreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSettings:Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mPerfCtx:Landroid/content/Context;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupEight:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupFive:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupFour:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupNine:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupOne:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupSeven:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupSix:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupThree:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceGroupTwo:Lcom/android/settings/widget/GroupPreferenceCategory;

.field private mPreferenceSeeAll:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "group_one"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "group_connected_device_list"

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "group_one"

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupOne:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_two"

    .line 106
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupTwo:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_three"

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupThree:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_four"

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupFour:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_five"

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupFive:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_six"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupSix:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_seven"

    .line 111
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupSeven:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_eight"

    .line 112
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupEight:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_nine"

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupNine:Lcom/android/settings/widget/GroupPreferenceCategory;

    const-string v0, "group_remaining"

    .line 114
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GroupPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;

    .line 115
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupOne:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupTwo:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupThree:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupFour:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupFive:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupSix:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupSeven:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupEight:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupNine:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mPreferenceGroupRemaining:Lcom/android/settings/widget/GroupPreferenceCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 129
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

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
    const-string p0, "group_one"

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

    .line 158
    new-instance v0, Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

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

    .line 149
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/GroupUtils;->addPreference(Ljava/util/ArrayList;Landroidx/preference/Preference;Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->removePreference(Ljava/util/ArrayList;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;

    .line 165
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->launchgroupOptions(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/connecteddevice/GroupConnectedBluetoothDevicesController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/GroupConnectedBluetoothDeviceUpdater;

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
