.class public Lcom/android/settings/media/MediaOutputSliceWorker;
.super Lcom/android/settings/media/MediaDeviceUpdateWorker;
.source "MediaOutputSliceWorker.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mAppliedDeviceCountWithinRemoteGroup:I

.field private mConnectedBluetoothDeviceCount:I

.field private mRemoteDeviceCount:I

.field private mWiredDeviceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputSliceWorker"

    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private updateLoggingDeviceCount()V
    .locals 3

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    .line 141
    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mAppliedDeviceCountWithinRemoteGroup:I

    .line 143
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 144
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    goto :goto_0

    .line 151
    :cond_2
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    goto :goto_0

    .line 148
    :cond_3
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    goto :goto_0

    .line 162
    :cond_4
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected devices: wired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bluetooth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaOutputSliceWorker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public onRequestFailed(I)V
    .locals 2

    .line 195
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRequestFailed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSliceWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->updateLoggingDeviceCount()V

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->onRequestFailed(I)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 2

    .line 171
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSelectedDeviceStateChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSliceWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->updateLoggingDeviceCount()V

    .line 190
    invoke-super {p0, p1, p2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    return-void
.end method
