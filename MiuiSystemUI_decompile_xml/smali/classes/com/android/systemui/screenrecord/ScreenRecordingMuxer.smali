.class public final Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mExtractorIndexToMuxerIndex:Landroid/util/ArrayMap;

.field public final mExtractors:Ljava/util/ArrayList;

.field public final mFiles:[Ljava/lang/String;

.field public final mFormat:I

.field public final mOutFile:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mExtractorIndexToMuxerIndex:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mExtractors:Ljava/util/ArrayList;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mFiles:[Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mOutFile:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mFormat:I

    .line 24
    const-string p0, "out: "

    .line 26
    const-string v1, " , in: "

    .line 28
    invoke-static {p0, p1, v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p0

    .line 33
    aget-object p1, p2, v0

    .line 34
    const-string p2, "ScreenRecordingMuxer"

    .line 36
    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final mux()V
    .locals 12

    .line 1
    new-instance v0, Landroid/media/MediaMuxer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mOutFile:Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mFormat:I

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 8
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mFiles:[Ljava/lang/String;

    .line 11
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mExtractors:Ljava/util/ArrayList;

    .line 16
    iget-object v6, p0, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mExtractorIndexToMuxerIndex:Landroid/util/ArrayMap;

    .line 18
    const-string v7, "ScreenRecordingMuxer"

    .line 20
    if-ge v4, v2, :cond_1

    .line 22
    aget-object v8, v1, v4

    .line 24
    new-instance v9, Landroid/media/MediaExtractor;

    .line 26
    invoke-direct {v9}, Landroid/media/MediaExtractor;-><init>()V

    .line 28
    :try_start_0
    invoke-virtual {v9, v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const-string v10, " track count: "

    .line 34
    invoke-static {v8, v10}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v8

    .line 39
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 40
    move-result v10

    .line 43
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v8

    .line 50
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    move v5, v3

    .line 57
    :goto_1
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 58
    move-result v8

    .line 61
    if-ge v5, v8, :cond_0

    .line 62
    invoke-virtual {v9, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 64
    move-result-object v8

    .line 67
    invoke-virtual {v0, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 68
    move-result v8

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    .line 72
    const-string v11, "created extractor format"

    .line 74
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v9, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 79
    move-result-object v11

    .line 82
    invoke-virtual {v11}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 83
    move-result-object v11

    .line 86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v10

    .line 93
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v10

    .line 100
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 101
    move-result-object v10

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v8

    .line 108
    invoke-virtual {v6, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_1

    .line 114
    :catch_0
    move-exception v5

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    const-string v9, "error creating extractor: "

    .line 118
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v6

    .line 129
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 136
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 139
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 142
    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object p0

    .line 149
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 159
    check-cast v1, Landroid/util/Pair;

    .line 160
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 162
    check-cast v2, Landroid/media/MediaExtractor;

    .line 164
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    check-cast v3, Ljava/lang/Integer;

    .line 168
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 170
    move-result v3

    .line 173
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 174
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 180
    check-cast v3, Ljava/lang/Integer;

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 183
    move-result v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v8, "track format: "

    .line 189
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 195
    check-cast v1, Ljava/lang/Integer;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 199
    move-result v1

    .line 202
    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 203
    move-result-object v1

    .line 206
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 213
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-wide/16 v8, 0x0

    .line 217
    const/4 v1, 0x2

    .line 219
    invoke-virtual {v2, v8, v9, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 220
    const/high16 v1, 0x400000

    .line 223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 225
    move-result-object v1

    .line 228
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    .line 229
    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 231
    :goto_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 234
    move-result v8

    .line 237
    invoke-virtual {v2, v1, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 238
    move-result v8

    .line 241
    iput v8, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 242
    if-gez v8, :cond_2

    .line 244
    goto :goto_2

    .line 246
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 247
    move-result-wide v8

    .line 250
    iput-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 251
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 253
    move-result v8

    .line 256
    iput v8, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 257
    invoke-virtual {v0, v3, v1, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 259
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 262
    goto :goto_3

    .line 265
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 266
    move-result-object p0

    .line 269
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    move-result v1

    .line 273
    if-eqz v1, :cond_4

    .line 274
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    move-result-object v1

    .line 279
    check-cast v1, Landroid/media/MediaExtractor;

    .line 280
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 282
    goto :goto_4

    .line 285
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 286
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 289
    return-void
    .line 292
.end method
