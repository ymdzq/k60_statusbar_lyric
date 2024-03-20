# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;
.super Landroid/media/session/MediaController$Callback;
.source "MiuiLyricCallback.java"


# static fields
.field public static lastAlbumName:Ljava/lang/String; = ""

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

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

    .line 29
    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mHandler:Landroid/os/Handler;

    .line 30
    sput-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 5

    .line 39
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p0, "android.media.metadata.TITLE"

    .line 44
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.metadata.ARTIST"

    .line 45
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM"

    .line 46
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHyperMusicInfo: 艺术家:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "歌曲："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "状态栏歌词"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_42

    const-string p0, "mAudioManager不存在"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_42
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string/jumbo p0, "未在播放 不发送歌词"

    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_4f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string p0, "sendHyperMusicInfo: 可能切歌了 专辑发生变化"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    return-void

    .line 67
    :cond_65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    return-void

    .line 72
    :cond_6c
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7f

    .line 73
    sput-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;->lastAlbumName:Ljava/lang/String;

    .line 74
    sget-object p1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SHOW_BLUETHOOTH_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7f
    return-void
.end method
