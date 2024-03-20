.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBackgroundColor:I

.field public final mIconBitmap:Landroid/graphics/Bitmap;

.field public final mIconUri:Landroid/net/Uri;

.field public mStartTimeMillis:J

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    const/4 v2, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_1
    if-eqz v2, :cond_2

    .line 27
    const-string v0, "MediaRouteCtrlDialog"

    .line 29
    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 31
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-object v0, v1

    .line 36
    :cond_2
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 39
    if-nez p1, :cond_3

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    iget-object v1, p1, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 44
    :goto_2
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 46
    return-void
    .line 48
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    const-string p1, "Unable to open: "

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "MediaRouteCtrlDialog"

    .line 10
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto/16 :goto_6

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 17
    if-eqz v0, :cond_8

    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-nez v0, :cond_1

    .line 25
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 40
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz v0, :cond_d

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .line 48
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 58
    if-eqz v6, :cond_6

    .line 60
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-nez v6, :cond_2

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    goto :goto_0

    .line 70
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 74
    invoke-virtual {p0, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 76
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 95
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v0, :cond_d

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    :goto_0
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 104
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 106
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 108
    if-lt v7, v8, :cond_4

    .line 110
    iget v6, v6, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 112
    int-to-float v6, v6

    .line 114
    int-to-float v9, v8

    .line 115
    mul-float/2addr v6, v9

    .line 116
    int-to-float v7, v7

    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception v5

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    iget v6, v6, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 121
    int-to-float v6, v6

    .line 123
    const/high16 v7, 0x41100000    # 9.0f

    .line 124
    mul-float/2addr v6, v7

    .line 126
    const/high16 v7, 0x41800000    # 16.0f

    .line 127
    :goto_1
    div-float/2addr v6, v7

    .line 129
    const/high16 v7, 0x3f000000    # 0.5f

    .line 130
    add-float/2addr v6, v7

    .line 132
    float-to-int v6, v6

    .line 133
    div-int/2addr v8, v6

    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 135
    move-result v6

    .line 138
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 139
    move-result v6

    .line 142
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 145
    move-result v6

    .line 148
    if-eqz v6, :cond_5

    .line 149
    goto :goto_2

    .line 151
    :cond_5
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 152
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :catch_2
    move-object v0, p1

    .line 159
    goto :goto_6

    .line 160
    :cond_6
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 161
    goto/16 :goto_9

    .line 164
    :catchall_0
    move-exception p0

    .line 166
    move-object v4, v0

    .line 167
    goto :goto_4

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_4

    .line 170
    :catch_3
    move-exception v5

    .line 171
    move-object v0, v4

    .line 172
    :goto_3
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 178
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 186
    invoke-static {v3, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    if-eqz v0, :cond_8

    .line 190
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 192
    goto :goto_5

    .line 195
    :goto_4
    if-eqz v4, :cond_7

    .line 196
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 198
    :catch_4
    :cond_7
    throw p0

    .line 201
    :catch_5
    :cond_8
    :goto_5
    move-object v0, v4

    .line 202
    :goto_6
    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 205
    move-result p1

    .line 208
    if-eqz p1, :cond_9

    .line 209
    move p1, v2

    .line 211
    goto :goto_7

    .line 212
    :cond_9
    move p1, v1

    .line 213
    :goto_7
    if-eqz p1, :cond_a

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    const-string p1, "Can\'t use recycled bitmap: "

    .line 218
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p0

    .line 229
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_9

    .line 233
    :cond_a
    if-eqz v0, :cond_c

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 236
    move-result p1

    .line 239
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 240
    move-result v3

    .line 243
    if-ge p1, v3, :cond_c

    .line 244
    new-instance p1, Landroidx/palette/graphics/Palette$Builder;

    .line 246
    invoke-direct {p1, v0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    iput v2, p1, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 251
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    .line 253
    move-result-object p1

    .line 256
    iget-object p1, p1, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 257
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 259
    move-result-object v2

    .line 262
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 263
    move-result v2

    .line 266
    if-eqz v2, :cond_b

    .line 267
    goto :goto_8

    .line 269
    :cond_b
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 270
    move-result-object p1

    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object p1

    .line 277
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    .line 278
    iget v1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 280
    :goto_8
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    .line 282
    :cond_c
    move-object v4, v0

    .line 284
    :catch_6
    :cond_d
    :goto_9
    return-object v4
    .line 285
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 7
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 19
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 21
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 23
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 31
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 39
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 41
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    .line 43
    iput p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    .line 45
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    move-result-wide v0

    .line 53
    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    .line 54
    sub-long/2addr v0, v2

    .line 56
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 57
    const-wide/16 v2, 0x78

    .line 59
    cmp-long v0, v0, v2

    .line 61
    if-lez v0, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    .line 67
    :cond_2
    return-void
    .line 70
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    .line 6
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 11
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 14
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    .line 16
    return-void
    .line 18
.end method

.method public final openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "android.resource"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    const-string v1, "content"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    const-string v1, "file"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/net/URL;

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 44
    move-result-object p0

    .line 47
    sget p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    .line 48
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    move-result-object p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 61
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 69
    move-result-object p0

    .line 72
    :goto_1
    if-nez p0, :cond_2

    .line 73
    const/4 p0, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 77
    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    move-object p0, p1

    .line 82
    :goto_2
    return-object p0
    .line 83
.end method
