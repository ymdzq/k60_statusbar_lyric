.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# static fields
.field public static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field public mAppSourceName:Ljava/lang/String;

.field public mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public final mBroadcastCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;

.field public mBroadcastCode:[B

.field public mBroadcastId:I

.field public final mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsProfileReady:Z

.field public mNewAppSourceName:Ljava/lang/String;

.field public mProgramInfo:Ljava/lang/String;

.field public mService:Landroid/bluetooth/BluetoothLeBroadcast;

.field public final mServiceListener:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;

.field public final mSettingsObserver:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "bluetooth_le_broadcast_program_info"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "bluetooth_le_broadcast_code"

    .line 8
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "bluetooth_le_broadcast_app_source_name"

    .line 14
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v2

    .line 19
    filled-new-array {v0, v1, v2}, [Landroid/net/Uri;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->SETTINGS_URIS:[Landroid/net/Uri;

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    .line 6
    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mAppSourceName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V

    .line 16
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceListener:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;

    .line 19
    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V

    .line 23
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 28
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mExecutor:Ljava/util/concurrent/Executor;

    .line 32
    new-instance v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 34
    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    new-instance v1, Landroid/os/Handler;

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;

    .line 56
    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;Landroid/os/Handler;)V

    .line 58
    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mSettingsObserver:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;

    .line 61
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->updateBroadcastInfoFromContentProvider()V

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 66
    move-result-object p0

    .line 69
    const/16 v1, 0x1a

    .line 70
    invoke-virtual {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 72
    return-void
    .line 75
.end method


# virtual methods
.method public final accessProfileEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final finalize()V
    .locals 4

    .line 1
    const-string v0, "finalize()"

    .line 2
    const-string v1, "LocalBluetoothLeBroadcast"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 13
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 17
    const/16 v3, 0x1a

    .line 19
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 21
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    const-string v0, "Error cleaning up LeAudio proxy"

    .line 29
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_0
    :goto_0
    return-void
    .line 34
.end method

.method public final getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    const-string p0, "LocalBluetoothLeBroadcast"

    .line 7
    const-string v0, "The BluetoothLeBroadcast is null"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-object v1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 15
    if-nez v2, :cond_1

    .line 17
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 26
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V

    .line 29
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 32
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 44
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 48
    return-object p0
    .line 50
.end method

.method public final getProfileId()I
    .locals 0

    .line 1
    const/16 p0, 0x1a

    .line 2
    return p0
    .line 4
.end method

.method public final isProfileReady()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsProfileReady:Z

    .line 2
    return p0
    .line 4
.end method

.method public final setAppSourceName(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    if-eqz v0, :cond_0

    .line 8
    move-object p1, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mAppSourceName:Ljava/lang/String;

    .line 11
    const-string v2, "LocalBluetoothLeBroadcast"

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    const-string/jumbo p0, "setAppSourceName: appSourceName is not changed"

    .line 23
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mAppSourceName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    .line 32
    if-eqz p2, :cond_3

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    if-nez p0, :cond_2

    .line 38
    const-string p0, "mContentResolver is null"

    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 45
    :cond_2
    const-string p2, "bluetooth_le_broadcast_app_source_name"

    .line 46
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    :cond_3
    return-void
    .line 51
.end method

.method public final setBroadcastCode(Z[B)V
    .locals 2

    .line 1
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 2
    if-nez p2, :cond_0

    .line 4
    const-string/jumbo p0, "setBroadcastCode: broadcastCode is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    const-string/jumbo p0, "setBroadcastCode: broadcastCode is not changed"

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    .line 30
    if-eqz p1, :cond_3

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    if-nez p0, :cond_2

    .line 36
    const-string p0, "mContentResolver is null"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 44
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    const-string p2, "bluetooth_le_broadcast_code"

    .line 51
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    :cond_3
    return-void
    .line 56
.end method

.method public final setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final setLatestBroadcastId(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setLatestBroadcastId: mBroadcastId is "

    .line 2
    const-string v1, "LocalBluetoothLeBroadcast"

    .line 5
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    .line 10
    return-void
    .line 12
.end method

.method public final setProgramInfo(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "LocalBluetoothLeBroadcast"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo p0, "setProgramInfo: programInfo is null or empty"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    const-string/jumbo p0, "setProgramInfo: programInfo is not changed"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 33
    :cond_1
    const-string/jumbo v0, "setProgramInfo: "

    .line 34
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    .line 40
    if-eqz p2, :cond_3

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    if-nez p0, :cond_2

    .line 46
    const-string p0, "mContentResolver is null"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 53
    :cond_2
    const-string p2, "bluetooth_le_broadcast_program_info"

    .line 54
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    :cond_3
    return-void
    .line 59
.end method

.method public final startBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 4
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 6
    if-nez p1, :cond_0

    .line 8
    const-string p0, "The BluetoothLeBroadcast is null when starting the broadcast."

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    .line 16
    const-string/jumbo v1, "startBroadcast: language = null ,programInfo = "

    .line 18
    invoke-static {v1, p1, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 24
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 35
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    .line 41
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)V

    .line 43
    return-void
    .line 46
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "LE_AUDIO_BROADCAST"

    .line 2
    return-object p0
    .line 4
.end method

.method public final updateBroadcastInfoFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 3

    .line 1
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p0, "The bluetoothLeBroadcastMetadata is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastCode(Z[B)V

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setLatestBroadcastId(I)V

    .line 24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    .line 27
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    move-result v1

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 45
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mAppSourceName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setAppSourceName(Ljava/lang/String;Z)V

    .line 60
    return-void

    .line 63
    :cond_2
    :goto_0
    const-string p0, "The subgroup is not valid value"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
    .line 69
.end method

.method public final updateBroadcastInfoFromContentProvider()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "LocalBluetoothLeBroadcast"

    .line 6
    const-string/jumbo v0, "updateBroadcastInfoFromContentProvider: mContentResolver is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    const-string v1, "bluetooth_le_broadcast_program_info"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 23
    move-result-object v1

    .line 26
    const/16 v2, 0x3e8

    .line 27
    const/16 v3, 0x270f

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 31
    move-result v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 40
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "_"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    .line 64
    const-string v1, "bluetooth_le_broadcast_code"

    .line 67
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 75
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const/16 v4, 0x8

    .line 88
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v4, 0x9

    .line 97
    const/16 v5, 0xd

    .line 99
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 111
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 114
    move-result-object v1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 121
    move-result-object v1

    .line 124
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastCode(Z[B)V

    .line 125
    const-string v1, "bluetooth_le_broadcast_app_source_name"

    .line 128
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setAppSourceName(Ljava/lang/String;Z)V

    .line 134
    return-void
    .line 137
.end method
