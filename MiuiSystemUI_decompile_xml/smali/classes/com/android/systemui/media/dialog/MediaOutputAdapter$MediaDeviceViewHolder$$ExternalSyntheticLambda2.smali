.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;ZLcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$2:Lcom/android/settingslib/media/MediaDevice;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2;->f$2:Lcom/android/settingslib/media/MediaDevice;

    .line 6
    xor-int/lit8 p2, p2, 0x1

    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->disableSeekBar()V

    .line 10
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 13
    if-eqz p2, :cond_1

    .line 15
    iget-object v0, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 19
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectableMediaDevice()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 31
    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 33
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v0, "MediaOutputMetricLogger"

    .line 42
    const-string v1, "logInteraction - Expansion"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getInteractionDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {p2, v1, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(Ljava/lang/String;II)V

    .line 61
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/settingslib/media/LocalMediaManager;->addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    if-nez p2, :cond_2

    .line 70
    iget-object p2, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 72
    iget-object p2, p2, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 74
    invoke-virtual {p2}, Lcom/android/settingslib/media/LocalMediaManager;->getDeselectableMediaDevice()Ljava/util/List;

    .line 76
    move-result-object p2

    .line 79
    invoke-static {p2, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    .line 80
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 86
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/settingslib/media/LocalMediaManager;->removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 90
    :cond_2
    :goto_0
    return-void
    .line 93
.end method
