.class public final Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_a

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 11
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 20
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 22
    iget-wide v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object p0

    .line 29
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 32
    iget-wide p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 40
    move-result p0

    .line 43
    :goto_0
    return p0

    .line 44
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 45
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 54
    iget-wide v0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object p0

    .line 61
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 62
    iget-wide p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->updateTime:J

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 70
    move-result p0

    .line 73
    :goto_1
    return p0

    .line 74
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 75
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 77
    move-result p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    goto :goto_3

    .line 83
    :cond_2
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 84
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 86
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 88
    const/4 p2, 0x2

    .line 90
    if-eq p0, p2, :cond_3

    .line 91
    move p0, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move p0, v1

    .line 95
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object p0

    .line 99
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 100
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 102
    iget p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 104
    if-eq p1, p2, :cond_4

    .line 106
    move v1, v2

    .line 108
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 113
    move-result p0

    .line 116
    :goto_3
    return p0

    .line 117
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 118
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 120
    move-result p0

    .line 123
    if-eqz p0, :cond_5

    .line 124
    goto :goto_4

    .line 126
    :cond_5
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 127
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 129
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 131
    xor-int/2addr p0, v2

    .line 133
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    move-result-object p0

    .line 137
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 138
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 140
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 142
    xor-int/2addr p1, v2

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    move-result-object p1

    .line 148
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 149
    move-result p0

    .line 152
    :goto_4
    return p0

    .line 153
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 154
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 156
    move-result p0

    .line 159
    if-eqz p0, :cond_6

    .line 160
    goto :goto_6

    .line 162
    :cond_6
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 163
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    sget-boolean p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 170
    iget-boolean p2, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 172
    if-ne p0, p2, :cond_7

    .line 174
    move p0, v2

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    move p0, v1

    .line 178
    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 179
    move-result-object p0

    .line 182
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 183
    sget-boolean p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 185
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    .line 187
    if-ne p2, p1, :cond_8

    .line 189
    move v1, v2

    .line 191
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    move-result-object p1

    .line 195
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 196
    move-result p0

    .line 199
    :goto_6
    return p0

    .line 200
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 201
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 203
    move-result p0

    .line 206
    if-eqz p0, :cond_9

    .line 207
    goto :goto_7

    .line 209
    :cond_9
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 210
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 212
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 214
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    move-result-object p0

    .line 219
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 220
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 222
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 226
    move-result-object p1

    .line 229
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 230
    move-result p0

    .line 233
    :goto_7
    return p0

    .line 234
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 235
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 237
    move-result p0

    .line 240
    if-eqz p0, :cond_a

    .line 241
    goto :goto_9

    .line 243
    :cond_a
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 244
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 246
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 248
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 250
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    move-result p0

    .line 255
    if-eqz p0, :cond_b

    .line 256
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 258
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 260
    if-ne p0, v2, :cond_b

    .line 262
    move p0, v2

    .line 264
    goto :goto_8

    .line 265
    :cond_b
    move p0, v1

    .line 266
    :goto_8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 267
    move-result-object p0

    .line 270
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 271
    iget-object p2, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 273
    iget-object p2, p2, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 275
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    move-result p2

    .line 280
    if-eqz p2, :cond_c

    .line 281
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 283
    iget p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 285
    if-ne p1, v2, :cond_c

    .line 287
    move v1, v2

    .line 289
    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 290
    move-result-object p1

    .line 293
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 294
    move-result p0

    .line 297
    :goto_9
    return p0

    .line 298
    :goto_a
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    .line 299
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 301
    move-result p0

    .line 304
    if-eqz p0, :cond_d

    .line 305
    goto :goto_b

    .line 307
    :cond_d
    check-cast p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 308
    iget-object p0, p2, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 310
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 312
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;

    .line 314
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 316
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 318
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 320
    move-result p0

    .line 323
    :goto_b
    return p0

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 326
.end method
