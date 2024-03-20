.class Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "RingerVolumeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 378
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmStreamType(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmStreamType(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p1

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmStreamType(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getVolume(I)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-virtual {v1, p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 384
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-static {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->-$$Nest$fputmLastVolume(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;I)V

    :cond_1
    return-void
.end method
