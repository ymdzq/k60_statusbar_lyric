.class Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$2;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->startSample()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$2;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 534
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :catch_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 538
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$2;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fputmMediaPlayer(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;Landroid/media/MediaPlayer;)V

    const/4 p0, 0x1

    return p0
.end method
