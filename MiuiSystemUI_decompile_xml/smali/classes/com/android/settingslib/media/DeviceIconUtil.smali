.class public final Lcom/android/settingslib/media/DeviceIconUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAudioDeviceTypeToIconMap:Ljava/util/Map;

.field public final mMediaRouteTypeToIconMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    .line 17
    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 19
    const/16 v0, 0xb

    .line 21
    const v2, 0x7f08101d    # @drawable/ic_headphone 'res/drawable/ic_headphone.xml'

    .line 23
    invoke-direct {v1, v0, v0, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 26
    new-instance v0, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 29
    const/16 v3, 0x16

    .line 31
    invoke-direct {v0, v3, v3, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 33
    new-instance v3, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 36
    const/16 v4, 0xc

    .line 38
    invoke-direct {v3, v4, v4, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 40
    new-instance v4, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 43
    const/16 v5, 0xd

    .line 45
    const v6, 0x7f080feb    # @drawable/ic_dock_device 'res/drawable/ic_dock_device.xml'

    .line 47
    invoke-direct {v4, v5, v5, v6}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 50
    new-instance v5, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 53
    const/16 v6, 0x9

    .line 55
    invoke-direct {v5, v6, v6, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 57
    new-instance v6, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 60
    const/4 v7, 0x3

    .line 62
    invoke-direct {v6, v7, v7, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 63
    new-instance v7, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 66
    const/4 v8, 0x4

    .line 68
    invoke-direct {v7, v8, v8, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 69
    new-instance v8, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 72
    const/4 v2, 0x2

    .line 74
    const v9, 0x7f0811b1    # @drawable/ic_smartphone 'res/drawable/ic_smartphone.xml'

    .line 75
    invoke-direct {v8, v2, v2, v9}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    .line 78
    move-object v2, v0

    .line 81
    filled-new-array/range {v1 .. v8}, [Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 82
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 91
    move-result v2

    .line 94
    if-ge v1, v2, :cond_0

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    check-cast v2, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 101
    iget-object v3, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/Map;

    .line 103
    iget v4, v2, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mAudioDeviceType:I

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v4

    .line 110
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v3, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    .line 114
    iget v4, v2, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mMediaRouteType:I

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v4

    .line 121
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 125
    goto :goto_0

    .line 127
    :cond_0
    return-void
    .line 128
.end method
