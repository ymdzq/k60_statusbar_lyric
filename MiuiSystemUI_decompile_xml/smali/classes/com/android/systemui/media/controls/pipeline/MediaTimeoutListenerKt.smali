.class public abstract Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListenerKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final PAUSED_MEDIA_TIMEOUT:J

.field public static final RESUME_MEDIA_TIMEOUT:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    move-result-wide v0

    .line 9
    const-string v2, "debug.sysui.media_timeout"

    .line 10
    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 15
    sput-wide v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 18
    const-wide/16 v1, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    move-result-wide v0

    .line 25
    const-string v2, "debug.sysui.media_timeout_resume"

    .line 26
    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 28
    move-result-wide v0

    .line 31
    sput-wide v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    .line 32
    return-void
    .line 34
.end method

.method public static synthetic getPAUSED_MEDIA_TIMEOUT$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getRESUME_MEDIA_TIMEOUT$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
