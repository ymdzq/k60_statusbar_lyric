# classes5.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;
.super Landroid/media/session/MediaController$Callback;
.source "MiuiLyricCallback.java"


# static fields
.field public static lastAlbumName:Ljava/lang/String;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method public static setCallbackManager(Landroid/os/Handler;Landroid/media/AudioManager;)V
    .registers 2
    .param p0, "handler"  # Landroid/os/Handler;
    .param p1, "audioManager"  # Landroid/media/AudioManager;

    .line 29
    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mHandler:Landroid/os/Handler;

    .line 30
    sput-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 7
    .param p1, "metadata"  # Landroid/media/MediaMetadata;

    .line 39
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 40
    if-nez p1, :cond_6

    .line 41
    return-void

    .line 44
    :cond_6
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "trackName":Ljava/lang/String;
    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "artistName":Ljava/lang/String;
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "albumName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendHyperMusicInfo: 艺术家:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "歌曲："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "状态栏歌词"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v3, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_44

    .line 52
    const-string v3, "mAudioManager不存在"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 56
    :cond_44
    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_50

    .line 57
    const-string v3, "未在播放 不发送歌词"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    sget-object v3, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 62
    const-string v3, "sendHyperMusicInfo: 可能切歌了 专辑发生变化"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object v2, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    .line 64
    return-void

    .line 67
    :cond_66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 68
    return-void

    .line 72
    :cond_6d
    sget-object v3, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_80

    .line 73
    sput-object v2, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    .line 74
    sget-object v4, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 76
    :cond_80
    return-void
.end method
