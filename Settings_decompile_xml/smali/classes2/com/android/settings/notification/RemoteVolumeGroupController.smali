.class public Lcom/android/settings/notification/RemoteVolumeGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "RemoteVolumeGroupController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# static fields
.field private static final KEY_REMOTE_VOLUME_GROUP:Ljava/lang/String; = "remote_media_group"

.field static final SWITCHER_PREFIX:Ljava/lang/String; = "OUTPUT_SWITCHER"

.field private static final TAG:Ljava/lang/String; = "RemoteVolumePrefCtr"


# instance fields
.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mRouterManager:Landroid/media/MediaRouter2Manager;

.field private mRoutingSessionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9h8WaLZleZideuOhjm7Xl_itqUA(Lcom/android/settings/notification/RemoteVolumeGroupController;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/RemoteVolumeGroupController;->lambda$onPreferenceChange$0(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZx7EcMYup9smIZ-0UhAch0ju84(Lcom/android/settings/notification/RemoteVolumeGroupController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->lambda$onDeviceListUpdate$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    .line 66
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object p2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 68
    invoke-virtual {p2, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 69
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p2}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRouterManager:Landroid/media/MediaRouter2Manager;

    return-void
.end method

.method private initRemoteMediaSession()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getActiveMediaSession()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 93
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDeviceListUpdate$1()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->initRemoteMediaSession()V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->refreshPreference()V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$0(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/media/LocalMediaManager;->adjustSessionVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized refreshPreference()V
    .locals 11

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->remote_media_volume_option_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 113
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 115
    iget-object v6, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 116
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/RemoteVolumeSeekBarPreference;

    if-eqz v6, :cond_2

    .line 119
    invoke-virtual {v6}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v7

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 120
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 122
    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/media/LocalMediaManager;->shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 125
    :cond_2
    new-instance v6, Lcom/android/settings/notification/RemoteVolumeSeekBarPreference;

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/notification/RemoteVolumeSeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 129
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 130
    invoke-virtual {v6, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 131
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    sget v7, Lcom/android/settings/R$drawable;->ic_volume_remote:I

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setIcon(I)V

    .line 133
    iget-object v7, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/media/LocalMediaManager;->shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 134
    iget-object v7, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 137
    :goto_1
    iget-object v6, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OUTPUT_SWITCHER"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    .line 139
    iget-object v7, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 140
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-virtual {v7, v8}, Lcom/android/settingslib/media/LocalMediaManager;->shouldDisableMediaOutput(Ljava/lang/String;)Z

    move-result v7

    .line 141
    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->media_output_label_title:I

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_5

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v8

    .line 145
    :goto_2
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v7, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    .line 147
    :goto_3
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 150
    :cond_5
    new-instance v6, Landroidx/preference/Preference;

    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OUTPUT_SWITCHER"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, v8

    .line 152
    :goto_4
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v7, :cond_7

    move v4, v3

    goto :goto_5

    :cond_7
    move v4, v1

    .line 154
    :goto_5
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 155
    iget-object v4, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 164
    :goto_6
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 165
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 167
    iget-object v4, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RoutingSessionInfo;

    .line 168
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v4, v3

    goto :goto_7

    :cond_a
    move v4, v1

    :goto_7
    if-eqz v4, :cond_b

    goto :goto_8

    .line 176
    :cond_b
    iget-object v4, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 178
    iget-object v5, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 179
    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 182
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->initRemoteMediaSession()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->refreshPreference()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

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
    const-string/jumbo p0, "remote_media_group"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 194
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OUTPUT_SWITCHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mRoutingSessionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 198
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.systemui"

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "package_name"

    .line 204
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
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

.method public bridge synthetic onAboutToConnectDeviceAdded(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onAboutToConnectDeviceRemoved()V
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceRemoved()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    return-void
.end method

.method public bridge synthetic onDeviceAttributesChanged()V
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceAttributesChanged()V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumeGroupController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance p1, Lcom/android/settings/notification/RemoteVolumeGroupController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/RemoteVolumeGroupController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/RemoteVolumeGroupController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 186
    new-instance v0, Lcom/android/settings/notification/RemoteVolumeGroupController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/RemoteVolumeGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/RemoteVolumeGroupController;Landroidx/preference/Preference;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onRequestFailed(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onRequestFailed(I)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
