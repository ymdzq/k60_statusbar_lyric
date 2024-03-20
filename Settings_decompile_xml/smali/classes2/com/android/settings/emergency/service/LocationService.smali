.class public Lcom/android/settings/emergency/service/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;,
        Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;
    }
.end annotation


# static fields
.field private static mIsStaging:Z = false


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordManager:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

.field private mAudioTrackManager:Lcom/android/settings/emergency/service/AudioTrackManager;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBitmapPath:Ljava/lang/String;

.field private mCacheDirPath:Ljava/lang/String;

.field private mCallActionExecuted:Z

.field private mCallSuccess:Z

.field private mCameraDirection:I

.field private mCameraUtils:Lsrc/com/android/settings/emergency/util/CameraUtils;

.field private mCdmaRealConnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCallIndex:I

.field private mCurrentSubInfo:Lmiui/telephony/SubscriptionInfo;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIsDialingState:Z

.field private mIsGPSEnable:Z

.field private mLastCallState:I

.field private mLatitude:D

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLongitude:D

.field private mMainHandler:Landroid/os/Handler;

.field private mMobileDataEnable:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreLocationMode:I

.field private mReportId:J

.field private mSignalStrength:I

.field private mSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

.field private mSosAroundPhotoEnable:Z

.field private mSosAroundVoiceEnable:Z

.field private mSosCallLogEnable:Z

.field private mSosCallingEnable:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

.field private mVoicePath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorkingHandler:Landroid/os/Handler;

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$hi5QG9hXgDNtoZTCI4FjTcv3VZM(Lcom/android/settings/emergency/service/LocationService;Landroid/app/NotificationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/service/LocationService;->lambda$showSOSNotification$0(Landroid/app/NotificationManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRecordManager(Lcom/android/settings/emergency/service/LocationService;)Lsrc/com/android/settings/emergency/util/AudioRecordManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioRecordManager:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioTrackManager(Lcom/android/settings/emergency/service/LocationService;)Lcom/android/settings/emergency/service/AudioTrackManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioTrackManager:Lcom/android/settings/emergency/service/AudioTrackManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmapPath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mBitmapPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCacheDirPath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallActionExecuted(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCallActionExecuted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallSuccess(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCallSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraDirection(Lcom/android/settings/emergency/service/LocationService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCameraDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mContacts:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/emergency/service/LocationService;->mContactsCallIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSubInfo(Lcom/android/settings/emergency/service/LocationService;)Lmiui/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCurrentSubInfo:Lmiui/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDialingState(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mIsDialingState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCallState(Lcom/android/settings/emergency/service/LocationService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/emergency/service/LocationService;->mLastCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatitude(Lcom/android/settings/emergency/service/LocationService;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/emergency/service/LocationService;->mLatitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationListener(Lcom/android/settings/emergency/service/LocationService;)Landroid/location/LocationListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/android/settings/emergency/service/LocationService;)Landroid/location/LocationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongitude(Lcom/android/settings/emergency/service/LocationService;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/emergency/service/LocationService;->mLongitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileDataEnable(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mMobileDataEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportId(Lcom/android/settings/emergency/service/LocationService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/emergency/service/LocationService;->mReportId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalStrength(Lcom/android/settings/emergency/service/LocationService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/emergency/service/LocationService;->mSignalStrength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosCallLogEnable(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallLogEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoicePath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mVoicePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkingHandler(Lcom/android/settings/emergency/service/LocationService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBitmapPath(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService;->mBitmapPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallActionExecuted(Lcom/android/settings/emergency/service/LocationService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/emergency/service/LocationService;->mCallActionExecuted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraDirection(Lcom/android/settings/emergency/service/LocationService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/emergency/service/LocationService;->mCameraDirection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/emergency/service/LocationService;->mContactsCallIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDialingState(Lcom/android/settings/emergency/service/LocationService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/emergency/service/LocationService;->mIsDialingState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCallState(Lcom/android/settings/emergency/service/LocationService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/emergency/service/LocationService;->mLastCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatitude(Lcom/android/settings/emergency/service/LocationService;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settings/emergency/service/LocationService;->mLatitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongitude(Lcom/android/settings/emergency/service/LocationService;D)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settings/emergency/service/LocationService;->mLongitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSignalStrength(Lcom/android/settings/emergency/service/LocationService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/emergency/service/LocationService;->mSignalStrength:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoicePath(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService;->mVoicePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBatteryLeft(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getBatteryLeft()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRecentCallLogs(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getRecentCallLogs()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCdmaSim(Lcom/android/settings/emergency/service/LocationService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->isCdmaSim()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mplayAudioAfterCallConnected(Lcom/android/settings/emergency/service/LocationService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->playAudioAfterCallConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSOSBitmapOrVoice(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/emergency/service/LocationService;->sendSOSBitmapOrVoice(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSosAroundPhoto(Lcom/android/settings/emergency/service/LocationService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->sendSosAroundPhoto()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCallIntentDelay(Lcom/android/settings/emergency/service/LocationService;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/emergency/service/LocationService;->startCallIntentDelay(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/android/settings/emergency/service/LocationService;->mContactsCallIndex:I

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mIsDialingState:Z

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 851
    new-instance v0, Lcom/android/settings/emergency/service/LocationService$11;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/LocationService$11;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

    .line 863
    new-instance v0, Lcom/android/settings/emergency/service/LocationService$12;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/LocationService$12;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "acquire wakelock"

    const-string v1, "SOS-LocationService"

    .line 285
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "power"

    .line 286
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private copySOSAudio()V
    .locals 7

    const-string v0, "/emergency_contact.wav"

    const-string v1, "copy audio"

    const-string v2, "SOS-LocationService"

    .line 352
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ro.vendor.audio.sos"

    const/4 v3, 0x0

    .line 353
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "start copy audio"

    .line 354
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 359
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/emergency/util/CommonUtils;->ensureDirs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$raw;->emergency_contact:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 362
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p0, 0x400

    :try_start_2
    new-array p0, p0, [B

    .line 365
    :goto_0
    invoke-virtual {v4, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 366
    invoke-virtual {v5, p0, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v1

    :goto_1
    move-object v1, v4

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v5, v1

    :goto_2
    move-object v1, v4

    goto :goto_3

    :cond_1
    move-object v5, v1

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v5, v1

    :goto_3
    :try_start_3
    const-string v0, "IOException when copy audio file :"

    .line 372
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 374
    :goto_4
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 375
    invoke-static {v5}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    .line 374
    :goto_5
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 375
    invoke-static {v5}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 376
    throw p0

    :cond_2
    :goto_6
    return-void
.end method

.method private enforceLocationServiceEnable()V
    .locals 3

    .line 672
    new-instance v0, Lcom/android/settings/emergency/service/LocationService$8;

    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/emergency/service/LocationService$8;-><init>(Lcom/android/settings/emergency/service/LocationService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mObserver:Landroid/database/ContentObserver;

    const-string v0, "location_providers_allowed"

    .line 680
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 681
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private getBatteryLeft()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 6

    const-string v0, "#E6210F0F"

    .line 242
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 243
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    :try_start_0
    const-string/jumbo v4, "protocol"

    .line 245
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "scene"

    const-string/jumbo v5, "sos"

    .line 246
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "ticker"

    .line 247
    sget v5, Lcom/android/settings/R$string;->miui_sos_focus_notification_ticker:I

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "colorDesc"

    .line 248
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "title"

    .line 249
    sget v5, Lcom/android/settings/R$string;->miui_sos_statusbar_title:I

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "colorTitle"

    const-string v5, "#FFFFFF"

    .line 250
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "content"

    .line 251
    sget v5, Lcom/android/settings/R$string;->miui_sos_exit_send_location_title:I

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "colorContent"

    const-string v5, "#CCFFFFFF"

    .line 252
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "colorBg"

    .line 253
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :catch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    sget v4, Lcom/android/settings/R$drawable;->sos_focus_notification_large_icon:I

    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string/jumbo v5, "miui.focus.pic_large"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v4, "miui.focus.param"

    .line 257
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "miui.focus.pics"

    .line 258
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->sos_status_bar_icon:I

    invoke-static {v0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string/jumbo v2, "miui.appIcon"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v4, 0x14000000

    .line 262
    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "com.android.settings.emergency"

    .line 263
    invoke-static {p0, v2}, Lcom/android/settings/emergency/util/NotificationUtils;->createNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_sos_statusbar_title:I

    .line 266
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->stat_sys_sos:I

    .line 267
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->sos_notification_icon:I

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private getRecentCallLogs()Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "\n"

    const-string/jumbo v2, "name"

    const-string v3, "duration"

    const-string v4, "date"

    const-string/jumbo v5, "number"

    const-string v6, " "

    const/4 v7, 0x0

    .line 808
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    .line 809
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "date > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x4

    new-array v14, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v14, v8

    const/4 v9, 0x1

    aput-object v4, v14, v9

    const/4 v10, 0x2

    aput-object v3, v14, v10

    const/4 v11, 0x3

    aput-object v2, v14, v11

    const/16 v16, 0x0

    const-string v17, "date DESC"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 819
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 820
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    sget v12, Lcom/android/settings/R$string;->miui_sos_msg_call_log_prefix:I

    invoke-virtual {v1, v12}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 824
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 825
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 826
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 827
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 828
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    sget v9, Lcom/android/settings/R$string;->miui_sos_call_log_stranger:I

    invoke-virtual {v1, v9}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    long-to-int v13, v13

    .line 830
    div-int/lit8 v14, v13, 0x3c

    .line 831
    rem-int/lit8 v13, v13, 0x3c

    .line 833
    invoke-static/range {v15 .. v16}, Lcom/android/settings/emergency/util/CommonUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/settings/R$string;->miui_sos_call_log_duration:I

    .line 836
    invoke-virtual {v1, v9}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/settings/R$string;->miui_sos_call_log_time_unit:I

    new-array v12, v10, [Ljava/lang/Object;

    .line 837
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-virtual {v1, v9, v12}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-static {v7}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "SOS-LocationService"

    const-string v3, "Exception when init repeated calls : "

    .line 844
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :cond_2
    invoke-static {v7}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 848
    sget v0, Lcom/android/settings/R$string;->miui_sos_call_log_none:I

    invoke-virtual {v1, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 846
    :goto_1
    invoke-static {v7}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 847
    throw v0
.end method

.method private getRequestDomain()Ljava/lang/String;
    .locals 1

    .line 213
    sget-boolean p0, Lcom/android/settings/emergency/service/LocationService;->mIsStaging:Z

    if-eqz p0, :cond_0

    const-string p0, "http://staging.srv.sec.miui.com"

    goto :goto_0

    :cond_0
    const-string p0, "https://srv.sec.miui.com"

    .line 215
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    .line 216
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RU"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "https://srv-ru.sec.intl.miui.com"

    goto :goto_1

    :cond_1
    const-string v0, "IN"

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "https://srv-ind.sec.intl.miui.com"

    goto :goto_1

    :cond_2
    const-string p0, "https://srv.sec.intl.miui.com"

    :cond_3
    :goto_1
    return-object p0
.end method

.method private initConfig()V
    .locals 4

    const-string v0, "SOS-LocationService"

    const-string v1, "init config"

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 297
    invoke-static {p0, v0}, Lcom/android/settings/emergency/util/Config;->setInSosModeState(Landroid/content/Context;Z)V

    .line 300
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->isSosCallLogEnable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallLogEnable:Z

    .line 302
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->isSosCallingEnable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallingEnable:Z

    .line 304
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->isSosEmergencyAroundPhoto(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundPhotoEnable:Z

    .line 306
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->isSosEmergencyAroundVoice(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundVoiceEnable:Z

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mContacts:Ljava/util/List;

    .line 312
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1

    .line 313
    invoke-static {p0, v1}, Lcom/android/settings/emergency/util/Config;->setApplicationLockedState(Landroid/content/Context;Z)V

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1, v2, v0}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 322
    :cond_0
    invoke-static {p0}, Lcom/android/settings/emergency/util/CommonUtils;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mMobileDataEnable:Z

    if-nez v1, :cond_1

    .line 324
    invoke-static {p0, v0}, Lmiui/securitycenter/NetworkUtils;->setMobileDataState(Landroid/content/Context;Z)V

    .line 328
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/emergency/service/LocationService;->mReportId:J

    .line 331
    invoke-static {}, Lcom/android/settings/emergency/util/CommonUtils;->getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCurrentSubInfo:Lmiui/telephony/SubscriptionInfo;

    .line 333
    invoke-static {p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/emergency/service/AudioTrackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioTrackManager:Lcom/android/settings/emergency/service/AudioTrackManager;

    .line 334
    new-instance v1, Lcom/android/settings/emergency/service/LocationService$2;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/service/LocationService$2;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->setOnCompleteListener(Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;)V

    const-string v0, "audio"

    .line 344
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "batterymanager"

    .line 345
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mBatteryManager:Landroid/os/BatteryManager;

    return-void
.end method

.method private initHandler()V
    .locals 6

    const-string v0, "init work handler"

    const-string v1, "SOS-LocationService"

    .line 456
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getRequestDomain()Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SOS/report"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SOS/msm"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "sos_working_thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingThread:Landroid/os/HandlerThread;

    .line 461
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 462
    new-instance v3, Lcom/android/settings/emergency/service/LocationService$5;

    iget-object v4, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/settings/emergency/service/LocationService$5;-><init>(Lcom/android/settings/emergency/service/LocationService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingHandler:Landroid/os/Handler;

    .line 549
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mMobileDataEnable:Z

    const/4 v2, 0x2

    if-nez v0, :cond_0

    const-wide/16 v4, 0xbb8

    .line 550
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 555
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallingEnable:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sos calling enabled"

    .line 556
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x4650

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private initPhoneState()V
    .locals 3

    const-string v0, "init phone state"

    const-string v1, "SOS-LocationService"

    .line 384
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Lcom/android/settings/emergency/service/LocationService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/LocationService$3;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 429
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallingEnable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->isCdmaSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is cdma sim card !"

    .line 430
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Lcom/android/settings/emergency/service/LocationService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/LocationService$4;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCdmaRealConnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.ACTION_CDMA_CALL_REAL_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mCdmaRealConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallingEnable:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x900

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    :goto_0
    const-string/jumbo v1, "phone"

    .line 447
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 448
    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mCurrentSubInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 449
    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private isCdmaSim()Z
    .locals 1

    .line 665
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mCurrentSubInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p0

    invoke-virtual {v0, p0}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showSOSNotification$0(Landroid/app/NotificationManager;)V
    .locals 1

    const v0, 0x523116

    .line 238
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private openGPS()V
    .locals 3

    .line 778
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mIsGPSEnable:Z

    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/emergency/service/LocationService;->mPreLocationMode:I

    .line 782
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private playAudioAfterCallConnected()V
    .locals 4

    const-string v0, "SOS-LocationService"

    const-string/jumbo v1, "play audio"

    .line 638
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_mediatek"

    const/4 v1, 0x0

    .line 641
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "Set_SpeechCall_DL_Mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "incall_music_mute=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/emergency/service/LocationService$7;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/service/LocationService$7;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCallSuccess:Z

    return-void
.end method

.method private restoreGPS()V
    .locals 2

    .line 791
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mIsGPSEnable:Z

    if-nez v0, :cond_0

    .line 792
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    iget p0, p0, Lcom/android/settings/emergency/service/LocationService;->mPreLocationMode:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private sendSOSBitmapOrVoice(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "com.android.mms"

    .line 562
    invoke-static {p0, v0, p1}, Lcom/android/settings/emergency/util/CommonUtils;->getOutputMediaFileUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "SOS-LocationService"

    const-string/jumbo p1, "sendSOSBitmapOrVoice: uri is null !"

    .line 564
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.mms.ui.NoConfirmationSendService"

    .line 569
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.mms.intent.action.SEND_MMS_NO_CONFIRMATION"

    .line 570
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "path"

    .line 571
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "attachment_type"

    .line 572
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "mms"

    invoke-static {v0, p1, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private sendSosAroundPhoto()V
    .locals 4

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundPhotoEnable:Z

    const-string v1, "SOS-LocationService"

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSosAroundPhoto: mSosAroundPhotoEnable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundPhotoEnable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSosAroundPhotoEnable  CameraUtils init \uff1amCameraDirection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/emergency/service/LocationService;->mCameraDirection:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lsrc/com/android/settings/emergency/util/CameraUtils;

    iget v1, p0, Lcom/android/settings/emergency/service/LocationService;->mCameraDirection:I

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mSnapListener:Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;

    iget-object v3, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lsrc/com/android/settings/emergency/util/CameraUtils;-><init>(Landroid/content/Context;ILcom/android/settings/emergency/service/LocationService$ISosSnapListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCameraUtils:Lsrc/com/android/settings/emergency/util/CameraUtils;

    .line 204
    invoke-virtual {v0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->prepareCameraAndTakePhoto()V

    return-void
.end method

.method private sendSosAroundVoice()V
    .locals 4

    .line 180
    iget-boolean v0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundVoiceEnable:Z

    const-string v1, "SOS-LocationService"

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSosAroundVoice: mSosAroundVoiceEnable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/emergency/service/LocationService;->mSosAroundVoiceEnable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    new-instance v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

    iget-object v3, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;-><init>(Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioRecordManager:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    .line 185
    invoke-virtual {v0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->startRecord()V

    const-string/jumbo v0, "sendSosAroundVoice: startRecord"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/emergency/service/LocationService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/service/LocationService$1;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSOSNotification()V
    .locals 10

    const-string v0, "SOS-LocationService"

    const-string/jumbo v1, "show notification"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 234
    sget v1, Lcom/android/settings/R$string;->sos_privacy_dialog_title:I

    .line 235
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "com.android.settings.emergency"

    .line 234
    invoke-static {v0, v3, v1, v2}, Lcom/android/settings/emergency/util/NotificationUtils;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x523116

    .line 236
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/emergency/service/LocationService;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/emergency/service/LocationService;Landroid/app/NotificationManager;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startCallIntentDelay(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/emergency/service/LocationService$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/emergency/service/LocationService$10;-><init>(Lcom/android/settings/emergency/service/LocationService;Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLocation()V
    .locals 3

    const-string v0, "SOS-LocationService"

    const-string/jumbo v1, "start location"

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    .line 583
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    .line 584
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 585
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 586
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 587
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 589
    new-instance v1, Lcom/android/settings/emergency/service/LocationService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/emergency/service/LocationService$6;-><init>(Lcom/android/settings/emergency/service/LocationService;Landroid/location/Criteria;)V

    iput-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    const-string v1, "location"

    .line 623
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 624
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mIsGPSEnable:Z

    .line 627
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->openGPS()V

    .line 629
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->enforceLocationServiceEnable()V

    .line 631
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 276
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const v0, 0x523116

    .line 278
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 162
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SOS-LocationService"

    const-string v1, "ENTER SOS!"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Landroid/app/Service;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->showSOSNotification()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->acquireWakeLock()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->initConfig()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->copySOSAudio()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->initPhoneState()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->initHandler()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->startLocation()V

    .line 173
    invoke-static {p0}, Lcom/android/settings/emergency/util/CommonUtils;->isSosNewFeatureSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->sendSosAroundPhoto()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->sendSosAroundVoice()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SOS-LocationService"

    const-string/jumbo v1, "onDestroy \uff01"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 688
    invoke-static {p0, v0}, Lcom/android/settings/emergency/util/Config;->setInSosModeState(Landroid/content/Context;Z)V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->restoreGPS()V

    .line 691
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 692
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 693
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 694
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 696
    iget-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mSosCallingEnable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/emergency/service/LocationService;->isCdmaSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService;->mCdmaRealConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 700
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/emergency/service/LocationService;->mMobileDataEnable:Z

    if-nez v1, :cond_1

    .line 701
    invoke-static {p0, v0}, Lmiui/securitycenter/NetworkUtils;->setMobileDataState(Landroid/content/Context;Z)V

    .line 704
    :cond_1
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->isLockedApplication(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 707
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-static {v1, v0, v0}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    :cond_2
    const-string v1, "is_mediatek"

    .line 711
    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "Set_SpeechCall_DL_Mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 716
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->deleteFile(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mCacheDirPath:Ljava/lang/String;

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/CameraUtils;->deleteFile(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 719
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public startCallIntent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    .line 740
    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    .line 742
    invoke-static {v0, p3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    const-string p2, "com.android.phone.extra.slot"

    .line 743
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string p2, "com.android.server.telecom"

    .line 745
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 746
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 747
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "SOS-LocationService"

    const-string/jumbo p2, "start call in sos :"

    .line 749
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/emergency/service/LocationService$9;

    invoke-direct {p2, p0}, Lcom/android/settings/emergency/service/LocationService$9;-><init>(Lcom/android/settings/emergency/service/LocationService;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 762
    iput-boolean p1, p0, Lcom/android/settings/emergency/service/LocationService;->mIsDialingState:Z

    return-void
.end method
