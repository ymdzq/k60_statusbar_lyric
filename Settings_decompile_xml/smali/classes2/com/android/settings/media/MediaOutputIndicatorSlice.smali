.class public Lcom/android/settings/media/MediaOutputIndicatorSlice;
.super Ljava/lang/Object;
.source "MediaOutputIndicatorSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    const/4 p0, 0x1

    .line 79
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 80
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 102
    const-class p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->isVisible()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v3, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v3, p0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 p0, 0x1

    .line 56
    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    const v3, 0x108055c    # @android:drawable/ic_signal_cellular_alt_24px

    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->media_output_label_title:I

    .line 62
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    .line 64
    invoke-interface {p0, v4}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    .line 63
    invoke-static {v4, v0, v5, v3}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 66
    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    .line 68
    new-instance v6, Landroidx/slice/builders/ListBuilder;

    iget-object v7, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 69
    invoke-virtual {v6, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 71
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 72
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 73
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 70
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 97
    sget p0, Lcom/android/settings/R$string;->menu_key_connected_devices:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 85
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isVisible()Z
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getMediaDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    .line 128
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "MediaOutputIndSlice"

    const-string p1, "No active local media controller"

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_media_session_token"

    .line 139
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    .line 141
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.panel.action.CLOSE_PANEL"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
