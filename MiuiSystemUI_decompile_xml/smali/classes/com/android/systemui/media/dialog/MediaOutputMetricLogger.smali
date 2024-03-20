.class public final Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mConnectedBluetoothDeviceCount:I

.field public final mContext:Landroid/content/Context;

.field public final mPackageName:Ljava/lang/String;

.field public mRemoteDeviceCount:I

.field public mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

.field public mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

.field public mWiredDeviceCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaOutputMetricLogger"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mPackageName:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static getInteractionDeviceType(Lcom/android/settingslib/media/MediaDevice;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    .line 6
    move-result p0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p0, v1, :cond_6

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_5

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_4

    .line 17
    const/4 v1, 0x5

    .line 19
    if-eq p0, v1, :cond_3

    .line 20
    const/4 v1, 0x6

    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    const/4 v1, 0x7

    .line 25
    if-eq p0, v1, :cond_1

    .line 26
    return v0

    .line 28
    :cond_1
    const/16 p0, 0x1f4

    .line 29
    return p0

    .line 31
    :cond_2
    const/16 p0, 0x190

    .line 32
    return p0

    .line 34
    :cond_3
    const/16 p0, 0x12c

    .line 35
    return p0

    .line 37
    :cond_4
    const/16 p0, 0x64

    .line 38
    return p0

    .line 40
    :cond_5
    const/16 p0, 0xc8

    .line 41
    return p0

    .line 43
    :cond_6
    return v1
    .line 44
.end method

.method public static getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    .line 6
    move-result p0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p0, v1, :cond_6

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_5

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq p0, v1, :cond_4

    .line 17
    const/4 v1, 0x5

    .line 19
    if-eq p0, v1, :cond_3

    .line 20
    const/4 v1, 0x6

    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    const/4 v1, 0x7

    .line 25
    if-eq p0, v1, :cond_1

    .line 26
    return v0

    .line 28
    :cond_1
    const/16 p0, 0x1f4

    .line 29
    return p0

    .line 31
    :cond_2
    const/16 p0, 0x190

    .line 32
    return p0

    .line 34
    :cond_3
    const/16 p0, 0x12c

    .line 35
    return p0

    .line 37
    :cond_4
    const/16 p0, 0x64

    .line 38
    return p0

    .line 40
    :cond_5
    const/16 p0, 0xc8

    .line 41
    return p0

    .line 43
    :cond_6
    return v1
    .line 44
.end method


# virtual methods
.method public final getLoggingPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mPackageName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    move-result-object p0

    .line 22
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    and-int/lit8 v1, p0, 0x1

    .line 25
    if-nez v1, :cond_0

    .line 27
    and-int/lit16 p0, p0, 0x80

    .line 29
    if-eqz p0, :cond_1

    .line 31
    :cond_0
    return-object v0

    .line 33
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, " is invalid."

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    const-string v0, "MediaOutputMetricLogger"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    const-string p0, ""

    .line 56
    return-object p0
    .line 58
.end method

.method public final updateLoggingMediaItemCount(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 3
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 5
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/media/dialog/MediaItem;

    .line 25
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 27
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 35
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 41
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 53
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    .line 55
    move-result v0

    .line 58
    const/4 v1, 0x2

    .line 59
    if-eq v0, v1, :cond_3

    .line 60
    const/4 v1, 0x3

    .line 62
    if-eq v0, v1, :cond_3

    .line 63
    const/4 v1, 0x5

    .line 65
    if-eq v0, v1, :cond_2

    .line 66
    const/4 v1, 0x6

    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    const/4 v1, 0x7

    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 77
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 91
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    sget-boolean p1, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 96
    if-eqz p1, :cond_5

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "connected devices: wired: "

    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, " bluetooth: "

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, " remote: "

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 127
    const-string v0, "MediaOutputMetricLogger"

    .line 129
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 131
    :cond_5
    return-void
    .line 134
.end method
