.class Lcom/miui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onClientChange()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 5
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->readPackageName()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "clientChange: "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 22
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 24
    move-result-object v1

    .line 27
    const-string v2, "null"

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 32
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v1, v2

    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "/"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 52
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 54
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 60
    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    :cond_1
    const-string p0, "MusicControlScreenE"

    .line 70
    invoke-static {v0, v2, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
    .line 75
.end method

.method public onClientMetadataUpdate(Landroid/media/MediaMetadata;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1002(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 7
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 9
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 16
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 18
    move-result-object p1

    .line 21
    const-string v0, "android.media.metadata.TITLE"

    .line 22
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 28
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "android.media.metadata.ARTIST"

    .line 34
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 40
    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 42
    move-result-object v1

    .line 45
    const-string v2, "android.media.metadata.ALBUM"

    .line 46
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 51
    const-string v2, "\ntitle: "

    .line 52
    const-string v3, ", artist: "

    .line 54
    const-string v4, ", album: "

    .line 56
    invoke-static {v2, p1, v3, v0, v4}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v2

    .line 61
    const-string v3, "MusicControlScreenE"

    .line 62
    invoke-static {v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 67
    if-nez p1, :cond_2

    .line 68
    if-nez v0, :cond_2

    .line 70
    if-eqz v1, :cond_1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    move v4, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 77
    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 79
    move-result-object v4

    .line 82
    invoke-virtual {v4, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    move-result v4

    .line 86
    iget-object v5, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 87
    invoke-static {v5, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 92
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 94
    move-result-object p1

    .line 97
    const-string v0, "android.media.metadata.ART"

    .line 98
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 100
    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "artwork: "

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const-string v1, "null"

    .line 118
    :goto_2
    invoke-static {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    .line 123
    if-nez p1, :cond_5

    .line 124
    if-eqz v4, :cond_4

    .line 126
    goto :goto_3

    .line 128
    :cond_4
    move v1, v2

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    :goto_3
    move v1, v0

    .line 131
    :goto_4
    if-eqz v1, :cond_7

    .line 132
    if-nez p1, :cond_6

    .line 134
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 136
    const-wide/16 v5, 0x1f4

    .line 138
    invoke-static {p1, v5, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    .line 140
    goto :goto_5

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 144
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 146
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 149
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 151
    move-result-object p1

    .line 154
    const-string v1, "android.media.metadata.LYRIC"

    .line 155
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    const-string v5, "raw lyric: "

    .line 163
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 174
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 178
    move-result-object p1

    .line 181
    if-eqz p1, :cond_8

    .line 182
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    .line 184
    :cond_8
    if-nez p1, :cond_a

    .line 187
    if-eqz v4, :cond_9

    .line 189
    goto :goto_6

    .line 191
    :cond_9
    move v1, v2

    .line 192
    goto :goto_7

    .line 193
    :cond_a
    :goto_6
    move v1, v0

    .line 194
    :goto_7
    if-eqz v1, :cond_b

    .line 195
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 197
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 199
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 202
    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 204
    :cond_b
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 207
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 209
    move-result-object v1

    .line 212
    if-eqz v1, :cond_c

    .line 213
    const/high16 v1, 0x41f00000    # 30.0f

    .line 215
    goto :goto_8

    .line 217
    :cond_c
    const/4 v1, 0x0

    .line 218
    :goto_8
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 219
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 222
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 224
    move-result-object p1

    .line 227
    const-string v1, "android.media.metadata.DURATION"

    .line 228
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 230
    move-result-wide v5

    .line 233
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 234
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    .line 236
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    .line 240
    move-result-wide v7

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "duration: "

    .line 246
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", position: "

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p1

    .line 265
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-wide/16 v9, 0x0

    .line 269
    cmp-long p1, v5, v9

    .line 271
    if-ltz p1, :cond_d

    .line 273
    cmp-long p1, v7, v9

    .line 275
    if-gez p1, :cond_e

    .line 277
    :cond_d
    if-eqz v4, :cond_f

    .line 279
    :cond_e
    move v2, v0

    .line 281
    :cond_f
    if-eqz v2, :cond_10

    .line 282
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 284
    invoke-static {p1, v5, v6, v7, v8}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V

    .line 286
    :cond_10
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 289
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    .line 291
    move-result-object p1

    .line 294
    const-string v0, "android.media.metadata.USER_RATING"

    .line 295
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    .line 297
    move-result-object p1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "rating: "

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 314
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 318
    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 320
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 323
    if-nez p1, :cond_11

    .line 325
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onClientChange()V

    .line 327
    :cond_11
    return-void
    .line 330
.end method

.method public onClientPlaybackActionUpdate(J)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "transportControlFlags: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MusicControlScreenE"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-wide/16 v0, 0x80

    .line 22
    and-long/2addr v0, p1

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    cmp-long v0, v0, v2

    .line 27
    const/4 v1, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v4

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 38
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 43
    cmp-long v5, p1, v2

    .line 45
    if-eqz v5, :cond_2

    .line 47
    const-wide/16 v6, 0x207

    .line 49
    and-long/2addr v6, p1

    .line 51
    cmp-long v6, v6, v2

    .line 52
    if-nez v6, :cond_2

    .line 54
    move v6, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v6, v4

    .line 58
    :goto_1
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 62
    if-eqz v5, :cond_3

    .line 64
    const-wide/16 v6, 0x10

    .line 66
    and-long/2addr v6, p1

    .line 68
    cmp-long v6, v6, v2

    .line 69
    if-nez v6, :cond_3

    .line 71
    move v6, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v6, v4

    .line 75
    :goto_2
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 76
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 79
    if-eqz v5, :cond_4

    .line 81
    const-wide/16 v5, 0x20

    .line 83
    and-long/2addr p1, v5

    .line 85
    cmp-long p1, p1, v2

    .line 86
    if-nez p1, :cond_4

    .line 88
    goto :goto_3

    .line 90
    :cond_4
    move v1, v4

    .line 91
    :goto_3
    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 92
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 95
    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 97
    if-eqz p2, :cond_8

    .line 99
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 101
    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 105
    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 107
    move-result p2

    .line 110
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 111
    const-wide/16 v2, 0x0

    .line 113
    if-eqz p2, :cond_5

    .line 115
    move-wide v4, v0

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    move-wide v4, v2

    .line 119
    :goto_4
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 120
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 123
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 125
    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 129
    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 131
    move-result p2

    .line 134
    if-eqz p2, :cond_6

    .line 135
    move-wide v4, v0

    .line 137
    goto :goto_5

    .line 138
    :cond_6
    move-wide v4, v2

    .line 139
    :goto_5
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 140
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 143
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 145
    move-result-object p1

    .line 148
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 149
    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 151
    move-result p0

    .line 154
    if-eqz p0, :cond_7

    .line 155
    goto :goto_6

    .line 157
    :cond_7
    move-wide v0, v2

    .line 158
    :goto_6
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 159
    :cond_8
    return-void
    .line 162
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 2
    const-string/jumbo p0, "stateUpdate: "

    .line 5
    const-string v0, "MusicControlScreenE"

    .line 8
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    return-void
    .line 13
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 16
    invoke-static {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    .line 18
    return-void
    .line 21
.end method

.method public onStateUpdate(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    const/4 v2, 0x3

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 15
    const-string/jumbo v0, "state_play"

    .line 17
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 20
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 25
    const-string/jumbo v2, "state_stop"

    .line 27
    invoke-virtual {p1, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 30
    move v3, v1

    .line 33
    move v1, v0

    .line 34
    move v0, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 37
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 39
    :goto_0
    move v1, v0

    .line 42
    :goto_1
    if-eqz v0, :cond_3

    .line 43
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 45
    invoke-static {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    .line 47
    :cond_3
    return-void
    .line 50
.end method
