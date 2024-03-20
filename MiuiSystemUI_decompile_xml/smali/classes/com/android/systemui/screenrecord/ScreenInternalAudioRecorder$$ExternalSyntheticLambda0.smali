.class public final synthetic Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 5
    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 4
    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-array v2, v0, [B

    .line 11
    iget-boolean v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 13
    if-eqz v3, :cond_0

    .line 15
    div-int/lit8 v4, v0, 0x2

    .line 17
    new-array v5, v4, [S

    .line 19
    new-array v4, v4, [S

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 v5, 0x0

    .line 24
    move-object v4, v5

    .line 25
    :goto_0
    const/4 v6, 0x0

    .line 26
    move v7, v6

    .line 27
    move v8, v7

    .line 28
    move v9, v8

    .line 29
    move v10, v9

    .line 30
    :goto_1
    if-eqz v3, :cond_8

    .line 31
    iget-object v9, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 33
    array-length v10, v5

    .line 35
    sub-int/2addr v10, v6

    .line 36
    invoke-virtual {v9, v5, v6, v10}, Landroid/media/AudioRecord;->read([SII)I

    .line 37
    move-result v9

    .line 40
    iget-object v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 41
    array-length v11, v4

    .line 43
    sub-int/2addr v11, v7

    .line 44
    invoke-virtual {v10, v4, v7, v11}, Landroid/media/AudioRecord;->read([SII)I

    .line 45
    move-result v10

    .line 48
    if-gez v9, :cond_1

    .line 49
    if-gez v10, :cond_1

    .line 51
    goto/16 :goto_7

    .line 53
    :cond_1
    if-gez v9, :cond_2

    .line 55
    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 57
    move v6, v7

    .line 60
    move v9, v10

    .line 61
    :cond_2
    if-gez v10, :cond_3

    .line 62
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 64
    move v7, v6

    .line 67
    move v10, v9

    .line 68
    :cond_3
    add-int/2addr v9, v6

    .line 69
    add-int/2addr v10, v7

    .line 70
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result v11

    .line 74
    mul-int/lit8 v12, v11, 0x2

    .line 75
    :goto_2
    const/16 v13, 0x7fff

    .line 77
    const/16 v14, -0x8000

    .line 79
    if-ge v8, v11, :cond_4

    .line 81
    aget-short v15, v4, v8

    .line 83
    int-to-float v15, v15

    .line 85
    const v16, 0x3fb33333    # 1.4f

    .line 86
    mul-float v15, v15, v16

    .line 89
    float-to-int v15, v15

    .line 91
    invoke-static {v15, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    .line 92
    move-result v13

    .line 95
    int-to-short v13, v13

    .line 96
    aput-short v13, v4, v8

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 99
    goto :goto_2

    .line 101
    :cond_4
    const/4 v8, 0x0

    .line 102
    :goto_3
    if-ge v8, v11, :cond_5

    .line 103
    aget-short v15, v5, v8

    .line 105
    aget-short v16, v4, v8

    .line 107
    add-int v15, v15, v16

    .line 109
    invoke-static {v15, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    .line 111
    move-result v13

    .line 114
    int-to-short v13, v13

    .line 115
    mul-int/lit8 v15, v8, 0x2

    .line 116
    and-int/lit16 v14, v13, 0xff

    .line 118
    int-to-byte v14, v14

    .line 120
    aput-byte v14, v2, v15

    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 123
    shr-int/lit8 v13, v13, 0x8

    .line 125
    and-int/lit16 v13, v13, 0xff

    .line 127
    int-to-byte v13, v13

    .line 129
    aput-byte v13, v2, v15

    .line 130
    add-int/lit8 v8, v8, 0x1

    .line 132
    const/16 v13, 0x7fff

    .line 134
    const/16 v14, -0x8000

    .line 136
    goto :goto_3

    .line 138
    :cond_5
    const/4 v8, 0x0

    .line 139
    :goto_4
    sub-int v13, v6, v11

    .line 140
    if-ge v8, v13, :cond_6

    .line 142
    add-int v13, v11, v8

    .line 144
    aget-short v13, v5, v13

    .line 146
    aput-short v13, v5, v8

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 150
    goto :goto_4

    .line 152
    :cond_6
    const/4 v6, 0x0

    .line 153
    :goto_5
    sub-int v8, v7, v11

    .line 154
    if-ge v6, v8, :cond_7

    .line 156
    add-int v8, v11, v6

    .line 158
    aget-short v8, v4, v8

    .line 160
    aput-short v8, v4, v6

    .line 162
    add-int/lit8 v6, v6, 0x1

    .line 164
    goto :goto_5

    .line 166
    :cond_7
    sub-int v6, v9, v11

    .line 167
    sub-int v7, v10, v11

    .line 169
    const/4 v8, 0x0

    .line 171
    goto :goto_6

    .line 172
    :cond_8
    iget-object v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 173
    const/4 v11, 0x0

    .line 175
    invoke-virtual {v8, v2, v11, v0}, Landroid/media/AudioRecord;->read([BII)I

    .line 176
    move-result v12

    .line 179
    move v8, v11

    .line 180
    :goto_6
    if-gez v12, :cond_9

    .line 181
    const-string v0, "read error "

    .line 183
    const-string v2, ", shorts internal: "

    .line 185
    const-string v3, ", shorts mic: "

    .line 187
    invoke-static {v0, v12, v2, v9, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move-result-object v0

    .line 192
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 199
    const-string v2, "ScreenAudioRecorder"

    .line 200
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_7
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 205
    const-wide/16 v2, 0x1f4

    .line 207
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 209
    move-result v5

    .line 212
    iget-object v4, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 213
    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    iget-wide v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 217
    const/4 v10, 0x4

    .line 219
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 220
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 223
    return-void

    .line 226
    :cond_9
    :goto_8
    if-lez v12, :cond_c

    .line 227
    iget-object v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 229
    const-wide/16 v13, 0x1f4

    .line 231
    invoke-virtual {v11, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 233
    move-result v11

    .line 236
    if-gez v11, :cond_a

    .line 237
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 239
    goto :goto_a

    .line 242
    :cond_a
    iget-object v13, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 243
    invoke-virtual {v13, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 245
    move-result-object v13

    .line 248
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 249
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    .line 252
    move-result v14

    .line 255
    if-le v12, v14, :cond_b

    .line 256
    goto :goto_9

    .line 258
    :cond_b
    move v14, v12

    .line 259
    :goto_9
    add-int/lit8 v15, v14, 0x0

    .line 260
    sub-int/2addr v12, v14

    .line 262
    invoke-virtual {v13, v2, v8, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 263
    add-int/2addr v8, v14

    .line 266
    iget-object v13, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 267
    const/16 v17, 0x0

    .line 269
    move-object/from16 p0, v2

    .line 271
    move/from16 v22, v3

    .line 273
    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 275
    const/16 v21, 0x0

    .line 277
    move/from16 v23, v0

    .line 279
    move v0, v15

    .line 281
    move-object v15, v13

    .line 282
    move/from16 v16, v11

    .line 283
    move/from16 v18, v14

    .line 285
    move-wide/from16 v19, v2

    .line 287
    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 289
    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    .line 292
    int-to-long v13, v0

    .line 294
    add-long/2addr v2, v13

    .line 295
    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    .line 296
    const-wide/16 v13, 0x2

    .line 298
    div-long/2addr v2, v13

    .line 300
    const-wide/32 v13, 0xf4240

    .line 301
    mul-long/2addr v2, v13

    .line 304
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    const v0, 0xac44

    .line 310
    int-to-long v13, v0

    .line 313
    div-long/2addr v2, v13

    .line 314
    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    .line 315
    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    .line 317
    move-object/from16 v2, p0

    .line 320
    move/from16 v3, v22

    .line 322
    move/from16 v0, v23

    .line 324
    goto :goto_8

    .line 326
    :cond_c
    :goto_a
    move/from16 v23, v0

    .line 327
    move-object/from16 p0, v2

    .line 329
    move/from16 v22, v3

    .line 331
    const/4 v8, 0x0

    .line 333
    move-object/from16 v2, p0

    .line 334
    move/from16 v3, v22

    .line 336
    move/from16 v0, v23

    .line 338
    goto/16 :goto_1
    .line 340
.end method
