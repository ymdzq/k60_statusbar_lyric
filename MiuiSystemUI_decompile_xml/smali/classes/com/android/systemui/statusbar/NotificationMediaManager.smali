.class public final Lcom/android/systemui/statusbar/NotificationMediaManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final CONNECTING_MEDIA_STATES:Ljava/util/HashSet;

.field public static final PAUSED_MEDIA_STATES:Ljava/util/HashSet;


# instance fields
.field public final mAllMediaNotificationKey:Ljava/util/Set;

.field public mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field public mBackdropBack:Landroid/widget/ImageView;

.field public mBackdropFront:Landroid/widget/ImageView;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mHideBackdropFront:Lcom/android/systemui/statusbar/NotificationMediaManager$4;

.field mIsLockscreenLiveWallpaperEnabled:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mMediaListener:Lcom/android/systemui/statusbar/NotificationMediaManager$1;

.field public final mMediaListeners:Ljava/util/ArrayList;

.field public mMediaMetadata:Landroid/media/MediaMetadata;

.field public mMediaNotificationKey:Ljava/lang/String;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mNotificationShadeWindowController:Ldagger/Lazy;

.field public mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mProcessArtworkTasks:Ljava/util/Set;

.field public mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTmpDisplaySize:Landroid/graphics/Point;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    sput-object v1, Lcom/android/systemui/statusbar/NotificationMediaManager;->CONNECTING_MEDIA_STATES:Ljava/util/HashSet;

    .line 14
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    const/4 v2, 0x1

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    const/4 v2, 0x2

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v2, 0x7

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    const/16 v0, 0x8

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const/4 v0, 0x6

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
    .line 65
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/MediaArtworkProcessor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;Landroid/app/WallpaperManager;Landroid/hardware/display/DisplayManager;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p7

    .line 4
    move-object v3, p10

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v4, Landroid/util/ArraySet;

    .line 9
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 14
    new-instance v4, Landroid/graphics/Point;

    .line 16
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 18
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 21
    new-instance v4, Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    .line 23
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 25
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    .line 28
    new-instance v4, Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    .line 30
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 32
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    .line 35
    new-instance v4, Ljava/util/HashSet;

    .line 37
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 39
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mAllMediaNotificationKey:Ljava/util/Set;

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 44
    move-object v4, p5

    .line 46
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 47
    move-object v4, p6

    .line 49
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    .line 57
    move-object v4, p2

    .line 59
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 60
    move-object v4, p3

    .line 62
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 63
    move-object v4, p4

    .line 65
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 66
    move-object v4, p9

    .line 68
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 69
    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 71
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 73
    move-object v4, p8

    .line 75
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 76
    move-object/from16 v4, p11

    .line 78
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 80
    move-object/from16 v4, p12

    .line 82
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 84
    move-object/from16 v4, p13

    .line 86
    iput-object v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 88
    invoke-virtual/range {p15 .. p15}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 90
    move-result v4

    .line 93
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 94
    new-instance v4, Lcom/android/systemui/statusbar/NotificationMediaManager$2;

    .line 96
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 98
    invoke-virtual {p7, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 101
    new-instance v2, Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    .line 104
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 106
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 109
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 111
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v2, p14

    .line 116
    invoke-virtual {v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 118
    const-string v2, "media_session"

    .line 121
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 126
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 127
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 129
    return-void
    .line 131
.end method

.method public static isPlayingState(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->CONNECTING_MEDIA_STATES:Ljava/util/HashSet;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method


# virtual methods
.method public final dispatchUpdateMediaMetaData(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 12
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 23
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p1, v0

    .line 28
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    .line 31
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 39
    if-ge v0, v2, :cond_2

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 48
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 50
    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    return-void
    .line 58
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "    mMediaNotificationKey="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string p2, "    mMediaController="

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 19
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 22
    if-eqz p2, :cond_0

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    const-string v0, " state="

    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 33
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 49
    const-string p2, "    mMediaMetadata="

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 59
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 62
    if-eqz p2, :cond_1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    const-string v0, " title="

    .line 68
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 73
    const-string v0, "android.media.metadata.TITLE"

    .line 75
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 91
    return-void
    .line 94
.end method

.method public final findAndUpdateMediaNotifications()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 26
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/app/Notification;->isMediaNotification()Z

    .line 32
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 38
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 40
    move-result-object v4

    .line 43
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 44
    const-string v5, "android.mediaSession"

    .line 46
    const-class v6, Landroid/media/session/MediaSession$Token;

    .line 48
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 53
    check-cast v4, Landroid/media/session/MediaSession$Token;

    .line 54
    if-eqz v4, :cond_0

    .line 56
    new-instance v5, Landroid/media/session/MediaController;

    .line 58
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {v5, v6, v4}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 62
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 65
    move-result-object v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    .line 71
    move-result v4

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v4, v2

    .line 76
    :goto_0
    const/4 v6, 0x3

    .line 77
    if-ne v6, v4, :cond_0

    .line 78
    goto :goto_1

    .line 80
    :cond_2
    move-object v1, v3

    .line 81
    move-object v5, v1

    .line 82
    :goto_1
    if-eqz v5, :cond_6

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 85
    const/4 v4, 0x1

    .line 87
    if-ne v0, v5, :cond_3

    .line 88
    move v0, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    if-nez v0, :cond_4

    .line 92
    move v0, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v0, v5}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    .line 96
    move-result v0

    .line 99
    :goto_2
    if-nez v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    .line 111
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 115
    :cond_5
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 118
    invoke-virtual {v5, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 123
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 125
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 129
    move v2, v4

    .line 131
    :cond_6
    if-eqz v1, :cond_7

    .line 132
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 134
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 148
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 154
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(Z)V

    .line 156
    return-void
    .line 159
.end method

.method public final finishUpdateMediaMetaData(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v2

    .line 12
    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    const/4 p1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    move v3, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, p1

    .line 24
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 25
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 31
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 33
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 38
    check-cast v5, Ljava/util/Optional;

    .line 39
    new-instance v6, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v6, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 43
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 46
    move-result-object v5

    .line 49
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    move-result v5

    .line 61
    if-eqz v1, :cond_2

    .line 62
    move v1, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v1, p1

    .line 66
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 67
    invoke-virtual {v6, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setHasMediaArtwork(Z)V

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 72
    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setHasBackdrop(Z)V

    .line 76
    :cond_3
    const/4 v3, 0x2

    .line 79
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 80
    if-nez v1, :cond_4

    .line 82
    goto :goto_3

    .line 84
    :cond_4
    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 85
    move-result v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    goto :goto_3

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 92
    if-eqz v1, :cond_6

    .line 94
    iget v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 96
    if-eq v1, v3, :cond_6

    .line 98
    if-nez v5, :cond_6

    .line 100
    goto/16 :goto_6

    .line 102
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 104
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 106
    move-result v1

    .line 109
    const/16 v7, 0x8

    .line 110
    if-eq v1, v7, :cond_c

    .line 112
    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 114
    move-result v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    .line 122
    move-result v1

    .line 125
    if-nez v1, :cond_7

    .line 126
    goto :goto_4

    .line 128
    :cond_7
    move v2, p1

    .line 129
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 130
    if-eqz v1, :cond_8

    .line 132
    iget v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 134
    if-eq v1, v3, :cond_b

    .line 136
    :cond_8
    if-nez v2, :cond_b

    .line 138
    if-eqz v5, :cond_9

    .line 140
    goto :goto_5

    .line 142
    :cond_9
    if-eqz v4, :cond_a

    .line 143
    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 145
    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 147
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 149
    invoke-virtual {v4, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 151
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 154
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 156
    move-result-object p1

    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 161
    move-result-object p1

    .line 164
    sget-object v0, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 167
    move-result-object p1

    .line 170
    const-wide/16 v0, 0x12c

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    move-result-object p1

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 179
    move-result-object p1

    .line 182
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda1;

    .line 183
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 188
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 191
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 194
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 196
    if-eqz v0, :cond_c

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 202
    move-result-object p0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    move-object v0, p1

    .line 209
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 210
    iget-wide v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    .line 212
    const-wide/16 v2, 0x2

    .line 214
    div-long/2addr v0, v2

    .line 216
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 217
    move-result-object p0

    .line 220
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 221
    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 223
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 225
    move-result-object p0

    .line 228
    sget-object p1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 229
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 231
    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 235
    goto :goto_6

    .line 238
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 239
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 244
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    if-eqz v4, :cond_c

    .line 249
    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 251
    iget-object p0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 255
    invoke-virtual {v4, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 257
    :cond_c
    :goto_6
    return-void
    .line 260
.end method

.method public getBackDropView()Lcom/android/systemui/statusbar/BackDropView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMediaSessionToken(Landroid/service/notification/StatusBarNotification;)Landroid/media/session/MediaSession$Token;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 7
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Landroid/media/session/MediaController;

    .line 28
    if-nez v1, :cond_2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 40
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 47
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_3
    return-object v0
    .line 52
.end method

.method public final isLockscreenWallpaperOnNotificationShade()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 10
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isLockscreenLiveWallpaperEnabled()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v0}, Landroid/widget/ImageView;->isVisibleToUser()Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageView;->isVisibleToUser()Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    :cond_0
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final isMediaNotification(Landroid/service/notification/StatusBarNotification;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mAllMediaNotificationKey:Ljava/util/Set;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_2

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 20
    if-eqz p0, :cond_2

    .line 22
    const/4 p2, 0x0

    .line 24
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 25
    invoke-virtual {p0, p2, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 34
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 44
    check-cast p2, Landroid/media/session/MediaController;

    .line 45
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 61
    move-result-object p2

    .line 64
    iget-object p2, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 65
    if-eqz p2, :cond_1

    .line 67
    return v1

    .line 69
    :cond_2
    const/4 p0, 0x0

    .line 70
    return p0
    .line 71
.end method

.method public final updateMediaMetaData(ZZ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "CentralSurfaces#updateMediaMetaData"

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getBackDropView()Lcom/android/systemui/statusbar/BackDropView;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 18
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 22
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 36
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 38
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    .line 40
    if-nez v2, :cond_9

    .line 42
    if-eqz v0, :cond_3

    .line 44
    goto :goto_4

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 47
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 52
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 54
    move-result v3

    .line 57
    if-nez v3, :cond_4

    .line 58
    const-string v3, "android.media.metadata.ART"

    .line 60
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 62
    move-result-object v3

    .line 65
    if-nez v3, :cond_5

    .line 66
    const-string v3, "android.media.metadata.ALBUM_ART"

    .line 68
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 70
    move-result-object v3

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move-object v3, v2

    .line 75
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 76
    if-eqz p1, :cond_7

    .line 78
    move-object v4, v0

    .line 80
    check-cast v4, Landroid/util/ArraySet;

    .line 81
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v5

    .line 86
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v6

    .line 90
    if-eqz v6, :cond_6

    .line 91
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v6

    .line 96
    check-cast v6, Landroid/os/AsyncTask;

    .line 97
    invoke-virtual {v6, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 99
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 103
    :cond_7
    if-eqz v3, :cond_8

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    .line 110
    move-result v1

    .line 113
    if-nez v1, :cond_8

    .line 114
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;

    .line 116
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    .line 118
    filled-new-array {v3}, [Landroid/graphics/Bitmap;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    move-result-object p0

    .line 128
    check-cast v0, Landroid/util/ArraySet;

    .line 129
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_3

    .line 134
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(Landroid/graphics/Bitmap;)V

    .line 135
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 138
    return-void

    .line 141
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 142
    const/4 p1, 0x4

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 148
    return-void
    .line 151
.end method
