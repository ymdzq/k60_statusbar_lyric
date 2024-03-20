.class public final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field public final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field public final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;Landroidx/emoji2/text/DefaultGlyphChecker;Ljava/util/Set;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;

    .line 5
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 7
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 9
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    check-cast p2, [I

    .line 32
    new-instance v1, Ljava/lang/String;

    .line 34
    array-length p3, p2

    .line 36
    const/4 p4, 0x0

    .line 37
    invoke-direct {v1, p2, p4, p3}, Ljava/lang/String;-><init>([III)V

    .line 38
    new-instance v6, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;

    .line 41
    invoke-direct {v6, v1}, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 46
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    return-void
    .line 58
.end method

.method public static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    xor-int/2addr p1, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 16
    move-result p1

    .line 19
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 20
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eq p1, v3, :cond_2

    .line 25
    if-eq v2, v3, :cond_2

    .line 27
    if-eq p1, v2, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    move v3, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    move v3, v0

    .line 34
    :goto_1
    if-eqz v3, :cond_3

    .line 35
    return v1

    .line 37
    :cond_3
    const-class v3, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 38
    invoke-interface {p0, p1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, [Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 44
    if-eqz v2, :cond_8

    .line 46
    array-length v3, v2

    .line 48
    if-lez v3, :cond_8

    .line 49
    array-length v3, v2

    .line 51
    move v4, v1

    .line 52
    :goto_2
    if-ge v4, v3, :cond_8

    .line 53
    aget-object v5, v2, v4

    .line 55
    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    .line 57
    move-result v6

    .line 60
    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    .line 61
    move-result v5

    .line 64
    if-eqz p2, :cond_4

    .line 65
    if-eq v6, p1, :cond_6

    .line 67
    :cond_4
    if-nez p2, :cond_5

    .line 69
    if-eq v5, p1, :cond_6

    .line 71
    :cond_5
    if-le p1, v6, :cond_7

    .line 73
    if-ge p1, v5, :cond_7

    .line 75
    :cond_6
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 77
    return v0

    .line 80
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 81
    goto :goto_2

    .line 83
    :cond_8
    return v1
    .line 84
.end method


# virtual methods
.method public final hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 6

    .line 1
    iget v0, p4, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 2
    and-int/lit8 v0, v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 11
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 13
    move-result-object v0

    .line 16
    const/16 v4, 0x8

    .line 17
    invoke-virtual {v0, v4}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    .line 19
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    iget-object v5, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    .line 25
    iget v0, v0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 27
    add-int/2addr v4, v0

    .line 29
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 30
    :cond_0
    check-cast p0, Landroidx/emoji2/text/DefaultGlyphChecker;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    .line 38
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 60
    :goto_0
    if-ge p2, p3, :cond_2

    .line 63
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 65
    move-result v4

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    sget p2, Landroidx/core/graphics/PaintCompat;->$r8$clinit:I

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    .line 83
    move-result p0

    .line 86
    iget p1, p4, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 87
    and-int/lit8 p1, p1, 0x4

    .line 89
    if-eqz p0, :cond_3

    .line 91
    or-int/lit8 p0, p1, 0x2

    .line 93
    goto :goto_1

    .line 95
    :cond_3
    or-int/lit8 p0, p1, 0x1

    .line 96
    :goto_1
    iput p0, p4, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 98
    :cond_4
    iget p0, p4, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 100
    and-int/lit8 p0, p0, 0x3

    .line 102
    if-ne p0, v2, :cond_5

    .line 104
    move v1, v3

    .line 106
    :cond_5
    return v1
    .line 107
.end method

.method public final process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p3

    .line 6
    move/from16 v3, p4

    .line 8
    move-object/from16 v4, p6

    .line 10
    new-instance v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    .line 12
    iget-object v6, v0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 14
    iget-object v6, v6, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 16
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    invoke-direct {v5, v6, v7, v8}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 20
    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 23
    move-result v6

    .line 26
    const/4 v9, 0x1

    .line 27
    move/from16 v10, p2

    .line 28
    move v11, v6

    .line 30
    move v12, v7

    .line 31
    move v13, v9

    .line 32
    move v6, v10

    .line 33
    :goto_0
    const/4 v14, 0x2

    .line 34
    if-ge v6, v2, :cond_12

    .line 35
    if-ge v12, v3, :cond_12

    .line 37
    if-eqz v13, :cond_12

    .line 39
    iget-object v15, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 41
    iget-object v15, v15, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    .line 43
    if-nez v15, :cond_0

    .line 45
    move-object v15, v8

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v15

    .line 52
    check-cast v15, Landroidx/emoji2/text/MetadataRepo$Node;

    .line 53
    :goto_1
    iget v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 55
    const/4 v8, 0x3

    .line 57
    if-eq v7, v14, :cond_2

    .line 58
    if-nez v15, :cond_1

    .line 60
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 62
    goto :goto_6

    .line 65
    :cond_1
    iput v14, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 66
    iput-object v15, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 68
    iput v9, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 70
    goto :goto_4

    .line 72
    :cond_2
    if-eqz v15, :cond_3

    .line 73
    iput-object v15, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 75
    iget v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 77
    add-int/2addr v7, v9

    .line 79
    iput v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 80
    goto :goto_4

    .line 82
    :cond_3
    const v7, 0xfe0e

    .line 83
    if-ne v11, v7, :cond_4

    .line 86
    move v7, v9

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/4 v7, 0x0

    .line 90
    :goto_2
    if-eqz v7, :cond_5

    .line 91
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 93
    goto :goto_6

    .line 96
    :cond_5
    const v7, 0xfe0f

    .line 97
    if-ne v11, v7, :cond_6

    .line 100
    move v7, v9

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    const/4 v7, 0x0

    .line 104
    :goto_3
    if-eqz v7, :cond_7

    .line 105
    :goto_4
    move v7, v14

    .line 107
    goto :goto_7

    .line 108
    :cond_7
    iget-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 109
    iget-object v15, v7, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 111
    if-eqz v15, :cond_a

    .line 113
    iget v15, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 115
    if-ne v15, v9, :cond_9

    .line 117
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    .line 119
    move-result v7

    .line 122
    if-eqz v7, :cond_8

    .line 123
    iget-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 125
    iput-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 127
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 129
    goto :goto_5

    .line 132
    :cond_8
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 133
    goto :goto_6

    .line 136
    :cond_9
    iput-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 137
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 139
    :goto_5
    move v7, v8

    .line 142
    goto :goto_7

    .line 143
    :cond_a
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()V

    .line 144
    :goto_6
    move v7, v9

    .line 147
    :goto_7
    iput v11, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    .line 148
    if-eq v7, v9, :cond_f

    .line 150
    if-eq v7, v14, :cond_e

    .line 152
    if-eq v7, v8, :cond_b

    .line 154
    goto :goto_a

    .line 156
    :cond_b
    if-nez p5, :cond_d

    .line 157
    iget-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 159
    iget-object v7, v7, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 161
    invoke-virtual {v0, v1, v10, v6, v7}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 163
    move-result v7

    .line 166
    if-nez v7, :cond_c

    .line 167
    goto :goto_8

    .line 169
    :cond_c
    move v10, v6

    .line 170
    goto :goto_9

    .line 171
    :cond_d
    :goto_8
    iget-object v7, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 172
    iget-object v7, v7, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 174
    invoke-interface {v4, v1, v10, v6, v7}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 176
    move-result v7

    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 180
    move v10, v6

    .line 182
    move v13, v7

    .line 183
    goto :goto_9

    .line 184
    :cond_e
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 185
    move-result v7

    .line 188
    add-int/2addr v6, v7

    .line 189
    if-ge v6, v2, :cond_11

    .line 190
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 192
    move-result v7

    .line 195
    move v11, v7

    .line 196
    goto :goto_a

    .line 197
    :cond_f
    invoke-static {v1, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 198
    move-result v6

    .line 201
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 202
    move-result v6

    .line 205
    add-int/2addr v10, v6

    .line 206
    if-ge v10, v2, :cond_10

    .line 207
    invoke-static {v1, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 209
    move-result v11

    .line 212
    :cond_10
    :goto_9
    move v6, v10

    .line 213
    :cond_11
    :goto_a
    const/4 v7, 0x0

    .line 214
    const/4 v8, 0x0

    .line 215
    goto/16 :goto_0

    .line 216
    :cond_12
    iget v2, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 218
    if-ne v2, v14, :cond_14

    .line 220
    iget-object v2, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 222
    iget-object v2, v2, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 224
    if-eqz v2, :cond_14

    .line 226
    iget v2, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 228
    if-gt v2, v9, :cond_13

    .line 230
    invoke-virtual {v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    .line 232
    move-result v2

    .line 235
    if-eqz v2, :cond_14

    .line 236
    :cond_13
    move v7, v9

    .line 238
    goto :goto_b

    .line 239
    :cond_14
    const/4 v7, 0x0

    .line 240
    :goto_b
    if-eqz v7, :cond_16

    .line 241
    if-ge v12, v3, :cond_16

    .line 243
    if-eqz v13, :cond_16

    .line 245
    if-nez p5, :cond_15

    .line 247
    iget-object v2, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 249
    iget-object v2, v2, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 251
    invoke-virtual {v0, v1, v10, v6, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 253
    move-result v0

    .line 256
    if-nez v0, :cond_16

    .line 257
    :cond_15
    iget-object v0, v5, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 259
    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 261
    invoke-interface {v4, v1, v10, v6, v0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 263
    :cond_16
    invoke-interface/range {p6 .. p6}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->getResult()Ljava/lang/Object;

    .line 266
    move-result-object v0

    .line 269
    return-object v0
    .line 270
.end method
