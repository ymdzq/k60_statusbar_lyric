.class public abstract Lcom/android/settingslib/media/MediaDevice;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mConnectedRecord:I

.field public final mContext:Landroid/content/Context;

.field public final mItem:Landroid/media/RouteListingPreference$Item;

.field public final mPackageName:Ljava/lang/String;

.field public mRangeZone:I

.field public final mRouteInfo:Landroid/media/MediaRoute2Info;

.field public final mRouterManager:Landroid/media/MediaRouter2Manager;

.field public mState:I

.field mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 6
    iput-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 10
    iput-object p2, p0, Lcom/android/settingslib/media/MediaDevice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 12
    iput-object p4, p0, Lcom/android/settingslib/media/MediaDevice;->mPackageName:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 16
    const/4 p1, 0x5

    .line 18
    if-nez p3, :cond_0

    .line 19
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getType()I

    .line 24
    move-result p2

    .line 27
    const/4 p3, 0x2

    .line 28
    if-eq p2, p3, :cond_5

    .line 29
    const/4 p4, 0x3

    .line 31
    if-eq p2, p4, :cond_4

    .line 32
    const/4 p5, 0x4

    .line 34
    if-eq p2, p5, :cond_4

    .line 35
    const/16 p4, 0x8

    .line 37
    if-eq p2, p4, :cond_3

    .line 39
    const/16 p4, 0x9

    .line 41
    if-eq p2, p4, :cond_2

    .line 43
    const/16 p4, 0x16

    .line 45
    if-eq p2, p4, :cond_2

    .line 47
    const/16 p4, 0x17

    .line 49
    if-eq p2, p4, :cond_3

    .line 51
    const/16 p4, 0x1a

    .line 53
    if-eq p2, p4, :cond_3

    .line 55
    const/16 p1, 0x7d0

    .line 57
    if-eq p2, p1, :cond_1

    .line 59
    packed-switch p2, :pswitch_data_0

    .line 61
    const/4 p1, 0x6

    .line 64
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    const/4 p1, 0x7

    .line 68
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    :pswitch_0
    iput p3, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    iput p4, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 78
    goto :goto_0

    .line 80
    :cond_5
    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 82
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 86
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 2
    const/4 v0, -0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    .line 9
    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    .line 13
    move-result v2

    .line 16
    xor-int/2addr v1, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_10

    .line 25
    goto/16 :goto_1

    .line 27
    :cond_1
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 29
    const/4 v3, 0x4

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    goto/16 :goto_1

    .line 34
    :cond_2
    iget v1, p1, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 36
    if-ne v1, v3, :cond_3

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_3
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 42
    iget v3, p1, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 44
    if-ne v1, v3, :cond_f

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    goto/16 :goto_1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    .line 56
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    goto/16 :goto_0

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    goto/16 :goto_1

    .line 70
    :cond_6
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    .line 72
    move-result v1

    .line 75
    if-eqz v1, :cond_7

    .line 76
    goto :goto_0

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    goto :goto_1

    .line 85
    :cond_8
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    .line 86
    move-result v1

    .line 89
    if-eqz v1, :cond_9

    .line 90
    goto :goto_0

    .line 92
    :cond_9
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 93
    iget v3, p1, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 95
    invoke-static {v1, v3}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    .line 97
    move-result v1

    .line 100
    if-eqz v1, :cond_a

    .line 101
    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 103
    iget p1, p1, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 105
    invoke-static {p0, p1}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    .line 107
    move-result v0

    .line 110
    goto :goto_1

    .line 111
    :cond_a
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 112
    move-result-object v1

    .line 115
    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v1

    .line 119
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 123
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 124
    move-result v1

    .line 127
    if-eqz v1, :cond_b

    .line 128
    goto :goto_1

    .line 130
    :cond_b
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 134
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    move-result v0

    .line 138
    if-eqz v0, :cond_c

    .line 139
    goto :goto_0

    .line 141
    :cond_c
    iget v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    .line 142
    iget v1, p1, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    .line 144
    if-eq v0, v1, :cond_e

    .line 146
    if-gtz v1, :cond_d

    .line 148
    if-lez v0, :cond_e

    .line 150
    :cond_d
    sub-int v0, v1, v0

    .line 152
    goto :goto_1

    .line 154
    :cond_e
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 158
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 163
    move-result v0

    .line 166
    goto :goto_1

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v1

    .line 169
    throw p0

    .line 170
    :cond_f
    if-ge v1, v3, :cond_10

    .line 171
    goto :goto_1

    .line 173
    :cond_10
    :goto_0
    move v0, v2

    .line 174
    :goto_1
    return v0
    .line 175
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/settingslib/media/MediaDevice;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 8
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final getCurrentVolume()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "MediaDevice"

    .line 6
    const-string v0, "Unable to get current volume. RouteInfo is empty"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolume()I

    .line 15
    move-result p0

    .line 18
    return p0
    .line 19
.end method

.method public final getDeviceType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 2
    return p0
    .line 4
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconWithoutBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSelectionBehavior()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getSelectionBehavior()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getSubtextString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/media/RouteListingPreference$Item;->getSubText()I

    .line 8
    move-result v1

    .line 11
    const/16 v2, 0x2710

    .line 12
    if-eq v1, v2, :cond_0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 16
    const-string p0, ""

    .line 19
    goto :goto_0

    .line 21
    :pswitch_0
    const v0, 0x7f130707    # @string/media_output_status_track_unsupported 'Can’t play this media here'

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :pswitch_1
    const v0, 0x7f130709    # @string/media_output_status_unauthorized 'Device not approved to play'

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    const v0, 0x7f130704    # @string/media_output_status_device_in_low_power_mode 'Wake up device to play here'

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :pswitch_3
    const v0, 0x7f130708    # @string/media_output_status_try_after_ad 'Try again after the ad'

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :pswitch_4
    const v0, 0x7f130705    # @string/media_output_status_not_support_downloads 'Can’t play downloads here'

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    goto :goto_0

    .line 61
    :pswitch_5
    const v0, 0x7f130706    # @string/media_output_status_require_premium 'Upgrade account to switch'

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    goto :goto_0

    .line 69
    :pswitch_6
    const v0, 0x7f13070a    # @string/media_output_status_unknown_error 'Can’t play on this device'

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/media/RouteListingPreference$Item;->getCustomSubtextMessage()Ljava/lang/CharSequence;

    .line 78
    move-result-object p0

    .line 81
    check-cast p0, Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    const/4 p0, 0x0

    .line 85
    :goto_0
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method

.method public final hasOngoingSession()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    .line 8
    move-result p0

    .line 11
    and-int/2addr p0, v0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    move p0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p0, v1

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    return v0
    .line 22
.end method

.method public final initDeviceRecord()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    const-string/jumbo v2, "seamless_transfer_record"

    .line 9
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    move-result-object v1

    .line 16
    const-string v2, "last_selected_device"

    .line 17
    const/4 v4, 0x0

    .line 19
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    monitor-exit v0

    .line 26
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    monitor-enter v0

    .line 37
    :try_start_1
    const-string/jumbo v4, "seamless_transfer_record"

    .line 38
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    move-result-object v1

    .line 44
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 45
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    .line 49
    iput v1, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    .line 50
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0

    .line 54
    throw p0

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
    .line 58
.end method

.method public final isBLEDevice()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    .line 4
    move-result p0

    .line 7
    const/16 v0, 0x1a

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public isCarKitDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract isConnected()Z
.end method

.method public isFastPairDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isHostForOngoingSession()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    .line 7
    move-result p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p0, v0

    .line 12
    :goto_0
    and-int/lit8 v1, p0, 0x1

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    and-int/lit8 p0, p0, 0x2

    .line 18
    if-eqz p0, :cond_1

    .line 20
    move p0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p0, v0

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    move v0, v2

    .line 27
    :cond_2
    return v0
    .line 28
.end method

.method public isMutingExpectedDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
