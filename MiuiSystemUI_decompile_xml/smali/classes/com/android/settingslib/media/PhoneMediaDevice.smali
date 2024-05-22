.class public final Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDeviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 2
    new-instance p1, Lcom/android/settingslib/media/DeviceIconUtil;

    .line 5
    invoke-direct {p1}, Lcom/android/settingslib/media/DeviceIconUtil;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDeviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 10
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public getDrawableResId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDeviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 4
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    .line 6
    move-result p0

    .line 9
    iget-object v0, v0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 32
    iget p0, p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mIconDrawableRes:I

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const p0, 0x7f0811b1    # @drawable/ic_smartphone 'res/drawable/ic_smartphone.xml'

    .line 37
    :goto_0
    return p0
    .line 40
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getIconWithoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getDrawableResId()I

    .line 4
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    const/16 v0, 0x9

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const/16 v0, 0x16

    .line 18
    if-eq p0, v0, :cond_0

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 22
    const-string p0, "phone_media_device_id"

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    :pswitch_0
    const-string/jumbo p0, "usb_headset_media_device_id"

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo p0, "wired_headset_media_device_id"

    .line 32
    :goto_0
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/16 v1, 0x9

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    const/16 v1, 0x16

    .line 21
    if-eq v0, v1, :cond_1

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 25
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 28
    const v0, 0x7f13071d    # @string/media_transfer_default_device_name 'Connected device'

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 38
    const v0, 0x7f13071e    # @string/media_transfer_dock_speaker_device_name 'Dock speaker'

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 48
    const v0, 0x7f13071f    # @string/media_transfer_external_device_name 'External Device'

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 58
    const v0, 0x7f13072a    # @string/media_transfer_wired_usb_device_name 'Wired headphone'

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x7f130726    # @string/media_transfer_this_device_name 'This phone'

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 82
.end method

.method public final getSelectionBehavior()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
