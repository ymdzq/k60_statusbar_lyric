.class public final Landroidx/slice/SliceItemParcelizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/SliceItem;
    .locals 10

    .line 1
    new-instance v0, Landroidx/slice/SliceItem;

    .line 2
    invoke-direct {v0}, Landroidx/slice/SliceItem;-><init>()V

    .line 4
    iget-object v1, v0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, [Ljava/lang/String;

    .line 14
    iput-object v1, v0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 16
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 18
    const/4 v3, 0x2

    .line 20
    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 25
    iget-object v1, v0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 27
    const/4 v4, 0x3

    .line 29
    invoke-virtual {p0, v4, v1}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    iput-object v1, v0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 34
    iget-object v1, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 36
    const/4 v5, 0x4

    .line 38
    invoke-virtual {p0, v1, v5}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    .line 39
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/slice/SliceItemHolder;

    .line 43
    iput-object p0, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 45
    const/4 v1, 0x0

    .line 47
    if-eqz p0, :cond_d

    .line 48
    iget-object v6, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 50
    sget-object v7, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/compat/SliceProviderCompat$$ExternalSyntheticLambda0;

    .line 52
    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {v7, p0}, Landroidx/slice/compat/SliceProviderCompat$$ExternalSyntheticLambda0;->handle(Landroidx/slice/SliceItemHolder;)V

    .line 56
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 62
    move-result v7

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, -0x1

    .line 67
    sparse-switch v7, :sswitch_data_0

    .line 68
    :goto_0
    move v2, v9

    .line 71
    goto/16 :goto_1

    .line 72
    :sswitch_0
    const-string/jumbo v2, "slice"

    .line 74
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x7

    .line 84
    goto :goto_1

    .line 85
    :sswitch_1
    const-string v2, "input"

    .line 86
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v2

    .line 91
    if-nez v2, :cond_2

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    const/4 v2, 0x6

    .line 95
    goto :goto_1

    .line 96
    :sswitch_2
    const-string v2, "image"

    .line 97
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    const/4 v2, 0x5

    .line 106
    goto :goto_1

    .line 107
    :sswitch_3
    const-string/jumbo v2, "text"

    .line 108
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    move v2, v5

    .line 118
    goto :goto_1

    .line 119
    :sswitch_4
    const-string v2, "long"

    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v2

    .line 125
    if-nez v2, :cond_5

    .line 126
    goto :goto_0

    .line 128
    :cond_5
    move v2, v4

    .line 129
    goto :goto_1

    .line 130
    :sswitch_5
    const-string v2, "int"

    .line 131
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v2

    .line 136
    if-nez v2, :cond_6

    .line 137
    goto :goto_0

    .line 139
    :cond_6
    move v2, v3

    .line 140
    goto :goto_1

    .line 141
    :sswitch_6
    const-string v3, "bundle"

    .line 142
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v3

    .line 147
    if-nez v3, :cond_8

    .line 148
    goto :goto_0

    .line 150
    :sswitch_7
    const-string v2, "action"

    .line 151
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v2

    .line 156
    if-nez v2, :cond_7

    .line 157
    goto :goto_0

    .line 159
    :cond_7
    move v2, v8

    .line 160
    :cond_8
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 161
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    const-string v0, "Unrecognized format "

    .line 166
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p0

    .line 175
    :pswitch_0
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 176
    goto :goto_4

    .line 178
    :pswitch_1
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 179
    goto :goto_4

    .line 181
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 182
    if-eqz v2, :cond_a

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 186
    move-result v2

    .line 189
    if-nez v2, :cond_9

    .line 190
    goto :goto_2

    .line 192
    :cond_9
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 193
    invoke-static {p0, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 195
    move-result-object p0

    .line 198
    goto :goto_4

    .line 199
    :cond_a
    :goto_2
    const-string p0, ""

    .line 200
    goto :goto_4

    .line 202
    :pswitch_3
    iget-wide v2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    move-result-object p0

    .line 208
    goto :goto_4

    .line 209
    :pswitch_4
    iget p0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 210
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object p0

    .line 215
    goto :goto_4

    .line 216
    :pswitch_5
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    .line 217
    goto :goto_4

    .line 219
    :pswitch_6
    iget-object v2, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 220
    if-nez v2, :cond_b

    .line 222
    iget-object v3, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 224
    if-nez v3, :cond_b

    .line 226
    move-object p0, v1

    .line 228
    goto :goto_4

    .line 229
    :cond_b
    new-instance v3, Landroidx/core/util/Pair;

    .line 230
    if-eqz v2, :cond_c

    .line 232
    goto :goto_3

    .line 234
    :cond_c
    move-object v2, v1

    .line 235
    :goto_3
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 236
    check-cast p0, Landroidx/slice/Slice;

    .line 238
    invoke-direct {v3, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    move-object p0, v3

    .line 243
    :goto_4
    iput-object p0, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 244
    iget-object p0, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 246
    iget-object v2, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    .line 248
    if-eqz v2, :cond_e

    .line 250
    iput-object v1, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 252
    iput-object v1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 254
    iput v8, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 256
    const-wide/16 v3, 0x0

    .line 258
    iput-wide v3, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 260
    iput-object v1, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 262
    iget-object v2, v2, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    goto :goto_5

    .line 269
    :cond_d
    iput-object v1, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 270
    :cond_e
    :goto_5
    iput-object v1, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 272
    return-object v0

    .line 274
    nop

    .line 275
    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 310
.end method

.method public static write(Landroidx/slice/SliceItem;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Landroidx/slice/SliceItemHolder;

    .line 8
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 12
    invoke-direct {v0, v2, v1}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 17
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    .line 19
    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 29
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    .line 32
    :cond_0
    const-string/jumbo v0, "text"

    .line 35
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    .line 48
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_2

    .line 54
    const/4 v1, 0x3

    .line 56
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_2
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 60
    const/4 v0, 0x4

    .line 62
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 63
    invoke-virtual {p1, p0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 66
    return-void
    .line 69
.end method
