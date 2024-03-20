.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBackgroundColor:I

.field public final mIconBitmap:Landroid/graphics/Bitmap;

.field public final mIconUri:Landroid/net/Uri;

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

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
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 39
    if-nez p1, :cond_3

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    iget-object v1, p1, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 44
    :goto_2
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 46
    return-void
    .line 48
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    const-string p1, "Unable to open: "

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

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
    goto/16 :goto_5

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 17
    if-eqz v0, :cond_7

    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

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
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 40
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz v0, :cond_c

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .line 47
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 57
    if-eqz v6, :cond_5

    .line 59
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-nez v6, :cond_2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    goto :goto_0

    .line 69
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 70
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 73
    invoke-virtual {p0, v6}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 75
    move-result-object v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 94
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v0, :cond_c

    .line 98
    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 103
    iget-object v6, v6, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object v6

    .line 110
    const v7, 0x7f070c32    # @dimen/mr_cast_meta_art_size '36.0dp'

    .line 111
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    move-result v6

    .line 117
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 118
    div-int/2addr v7, v6

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 121
    move-result v6

    .line 124
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result v6

    .line 128
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 131
    move-result v6

    .line 134
    if-eqz v6, :cond_4

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 138
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    :catch_1
    move-object v0, p1

    .line 145
    goto :goto_5

    .line 146
    :cond_5
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 147
    goto/16 :goto_8

    .line 150
    :catchall_0
    move-exception p0

    .line 152
    move-object v4, v0

    .line 153
    goto :goto_3

    .line 154
    :catch_2
    move-exception v5

    .line 155
    goto :goto_2

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto :goto_3

    .line 158
    :catch_3
    move-exception v5

    .line 159
    move-object v0, v4

    .line 160
    :goto_2
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 166
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 174
    invoke-static {v3, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    if-eqz v0, :cond_7

    .line 178
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 180
    goto :goto_4

    .line 183
    :goto_3
    if-eqz v4, :cond_6

    .line 184
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 186
    :catch_4
    :cond_6
    throw p0

    .line 189
    :catch_5
    :cond_7
    :goto_4
    move-object v0, v4

    .line 190
    :goto_5
    if-eqz v0, :cond_8

    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 193
    move-result p1

    .line 196
    if-eqz p1, :cond_8

    .line 197
    move p1, v2

    .line 199
    goto :goto_6

    .line 200
    :cond_8
    move p1, v1

    .line 201
    :goto_6
    if-eqz p1, :cond_9

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    const-string p1, "Can\'t use recycled bitmap: "

    .line 206
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 217
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    goto :goto_8

    .line 221
    :cond_9
    if-eqz v0, :cond_b

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 224
    move-result p1

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 228
    move-result v3

    .line 231
    if-ge p1, v3, :cond_b

    .line 232
    new-instance p1, Landroidx/palette/graphics/Palette$Builder;

    .line 234
    invoke-direct {p1, v0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    iput v2, p1, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    .line 239
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    .line 241
    move-result-object p1

    .line 244
    iget-object p1, p1, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    .line 245
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 247
    move-result-object v2

    .line 250
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 251
    move-result v2

    .line 254
    if-eqz v2, :cond_a

    .line 255
    goto :goto_7

    .line 257
    :cond_a
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 258
    move-result-object p1

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object p1

    .line 265
    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    .line 266
    iget v1, p1, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    .line 268
    :goto_7
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mBackgroundColor:I

    .line 270
    :cond_b
    move-object v4, v0

    .line 272
    :catch_6
    :cond_c
    :goto_8
    return-object v4
    .line 273
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 4
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;

    .line 7
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 19
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 21
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 23
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 31
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 39
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 41
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->mBackgroundColor:I

    .line 43
    iput p0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBackgroundColor:I

    .line 45
    const/4 p0, 0x1

    .line 47
    iput-boolean p0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconIsLoaded:Z

    .line 48
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    .line 50
    :cond_1
    return-void
    .line 53
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconIsLoaded:Z

    .line 5
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 8
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mArtIconBackgroundColor:I

    .line 10
    return-void
    .line 12
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
    const/16 p1, 0x7530

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
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 61
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

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
