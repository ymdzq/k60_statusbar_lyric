.class public Lcom/android/settings/sound/RingerVolumeFragment;
.super Lcom/android/settings/BaseFragment;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;
    }
.end annotation


# static fields
.field static final SECTION_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private final DESCPTION_ID:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

.field private mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

.field private mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMediaVolumeUri(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSlidersAndMutedStates(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSlidersAndMutedStates(Lcom/android/settings/sound/RingerVolumeFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment;->updateSlidersAndMutedStates(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSEEKBAR_TYPE()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 61
    sget v2, Lcom/android/settings/R$id;->ringer_section:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$id;->notification_section:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$id;->alarm_section:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settings/R$id;->voice_section:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settings/R$id;->media_section:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/android/settings/R$id;->bluetooth_section:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sput-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    new-array v1, v0, [I

    .line 79
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_TYPE:[I

    new-array v1, v0, [I

    .line 88
    sget v2, Lcom/android/settings/R$drawable;->ic_audio_ring_notif_mute:I

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$drawable;->ic_audio_notification_mute:I

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$drawable;->ic_audio_alarm_mute:I

    aput v2, v1, v5

    sget v2, Lcom/android/settings/R$drawable;->ic_audio_phone:I

    aput v2, v1, v6

    sget v9, Lcom/android/settings/R$drawable;->ic_audio_media:I

    aput v9, v1, v7

    sget v10, Lcom/android/settings/R$drawable;->ic_audio_bt_mute:I

    aput v10, v1, v8

    sput-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_MUTED_RES_ID:[I

    new-array v0, v0, [I

    .line 97
    sget v1, Lcom/android/settings/R$drawable;->ic_audio_ring_notif:I

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$drawable;->ic_audio_notification:I

    aput v1, v0, v4

    sget v1, Lcom/android/settings/R$drawable;->ic_audio_alarm:I

    aput v1, v0, v5

    aput v2, v0, v6

    aput v9, v0, v7

    sget v1, Lcom/android/settings/R$drawable;->ic_audio_bt:I

    aput v1, v0, v8

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x4
        0x0
        0x3
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 70
    sget v2, Lcom/android/settings/R$string;->volume_ring_description:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/R$string;->volume_notification_description:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/R$string;->volume_alarm_description:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/R$string;->volume_voice_description:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/R$string;->volume_media_description:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/R$string;->volume_bluetooth_description:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->DESCPTION_ID:[I

    .line 106
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 107
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

    .line 109
    new-instance v0, Lcom/android/settings/sound/RingerVolumeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeFragment$1;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cleanup()V
    .locals 3

    const/4 v0, 0x0

    .line 311
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->stop()V

    .line 314
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/settings/R$raw;->media_volume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 2

    const/4 v0, 0x0

    .line 245
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->updateSlidersAndMutedStates(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStates(I)V
    .locals 4

    .line 251
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_TYPE:[I

    aget v0, v0, p1

    .line 252
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 254
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    sget v2, Lcom/android/settings/R$drawable;->ic_audio_ring_notif_vibrate:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v1, :cond_1

    .line 261
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_MUTED_RES_ID:[I

    aget v1, v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v1, v1, p1

    .line 260
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

    aget-object v1, v1, p1

    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aget-object p0, p0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getProgress(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$layout;->preference_dialog_ringervolume_miui:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method doRestoreAllVolumes()V
    .locals 2

    const/4 v0, 0x0

    .line 234
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->stopSample()V

    .line 237
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->revertStreamVolume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->updateSlidersAndMutedStates()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 p0, 0x1

    .line 331
    sget p2, Lcom/android/settings/R$string;->volume_restore:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 332
    sget p1, Lcom/android/settings/R$drawable;->action_button_reset_volume:I

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p1, 0x5

    .line 333
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->cleanup()V

    .line 307
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    const/16 p0, 0x18

    if-eq p2, p0, :cond_0

    const/16 p0, 0x19

    if-eq p2, p0, :cond_0

    const/16 p0, 0xa4

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 347
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->restoreAllVolumes()V

    return v1
.end method

.method public onPause()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 299
    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->stopSample()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method protected onSampleStarting(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)V
    .locals 3

    .line 291
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 292
    invoke-virtual {v2}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    sget-object p2, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    array-length p2, p2

    new-array p2, p2, [Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    iput-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x0

    .line 140
    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->SECTION_ID:[I

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 141
    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    sget v1, Lcom/android/settings/R$id;->volume_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmiuix/androidbasewidget/widget/SeekBar;

    .line 143
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBars:[Lmiuix/androidbasewidget/widget/SeekBar;

    aput-object v5, v1, p2

    .line 144
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->SEEKBAR_TYPE:[I

    aget v2, v1, p2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 145
    iget-object v8, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    new-instance v9, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    aget v6, v1, p2

    .line 146
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v7

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiuix/androidbasewidget/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v9, v8, p2

    goto :goto_1

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    new-instance v3, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    aget v1, v1, p2

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiuix/androidbasewidget/widget/SeekBar;I)V

    aput-object v3, v2, p2

    .line 153
    :goto_1
    sget v1, Lcom/android/settings/R$id;->mute_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 154
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v1, v2, p2

    .line 157
    sget v1, Lcom/android/settings/R$id;->description_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->DESCPTION_ID:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->updateSlidersAndMutedStates()V

    .line 164
    iget-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    if-nez p2, :cond_2

    .line 165
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 166
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/android/settings/sound/RingerVolumeFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/RingerVolumeFragment$2;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 179
    :cond_2
    iget-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez p2, :cond_3

    .line 180
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 181
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/android/settings/sound/RingerVolumeFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/RingerVolumeFragment$3;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 199
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_4

    .line 200
    sget p2, Lcom/android/settings/R$id;->ringer_section:I

    .line 201
    sget v1, Lcom/android/settings/R$id;->voice_section:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget v1, Lcom/android/settings/R$id;->bluetooth_section:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    sget v1, Lcom/android/settings/R$id;->alarm_section:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 205
    :cond_4
    sget p2, Lcom/android/settings/R$id;->notification_section:I

    .line 207
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 208
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method restoreAllVolumes()V
    .locals 3

    .line 218
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->volume_restore:I

    .line 219
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 220
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 221
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/sound/RingerVolumeFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/RingerVolumeFragment$4;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    const p0, 0x104000a    # @android:string/ok

    .line 222
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->volume_restore_alert:I

    .line 229
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
