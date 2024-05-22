.class public abstract Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    const-string v1, "0123456789abcdef"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    return-void
    .line 9
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2
    :cond_1
    iget v3, v0, Lokio/Segment;->pos:I

    .line 3
    iget v4, v0, Lokio/Segment;->limit:I

    move-object/from16 v5, p1

    .line 4
    iget-object v5, v5, Lokio/Options;->trie:[I

    const/4 v6, 0x0

    .line 5
    iget-object v7, v0, Lokio/Segment;->data:[B

    move-object v9, v0

    move v10, v2

    move v8, v6

    :goto_1
    add-int/lit8 v11, v8, 0x1

    .line 6
    aget v8, v5, v8

    add-int/lit8 v12, v11, 0x1

    .line 7
    aget v11, v5, v11

    if-eq v11, v2, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v13, v8, v12

    :goto_2
    add-int/lit8 v8, v3, 0x1

    .line 8
    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v14, v12, 0x1

    .line 9
    aget v12, v5, v12

    if-eq v3, v12, :cond_4

    return v10

    :cond_4
    if-ne v14, v13, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    if-ne v8, v4, :cond_9

    .line 10
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    iget v7, v4, Lokio/Segment;->pos:I

    .line 12
    iget v8, v4, Lokio/Segment;->limit:I

    .line 13
    iget-object v9, v4, Lokio/Segment;->data:[B

    if-ne v4, v0, :cond_8

    if-eqz v3, :cond_6

    move v4, v8

    move-object v8, v11

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    return v1

    :cond_7
    return v10

    :cond_8
    move/from16 v16, v8

    move-object v8, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_9
    move-object/from16 v16, v9

    move-object v9, v7

    move v7, v8

    move-object/from16 v8, v16

    :goto_5
    if-eqz v3, :cond_a

    .line 14
    aget v3, v5, v14

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    goto :goto_7

    :cond_a
    move v3, v7

    move-object v7, v9

    move v12, v14

    move-object v9, v8

    goto :goto_2

    :cond_b
    add-int/lit8 v13, v3, 0x1

    .line 15
    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    add-int v14, v12, v8

    :goto_6
    if-ne v12, v14, :cond_c

    return v10

    .line 16
    :cond_c
    aget v15, v5, v12

    if-ne v3, v15, :cond_10

    add-int/2addr v12, v8

    .line 17
    aget v3, v5, v12

    if-ne v13, v4, :cond_d

    .line 18
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    iget v4, v9, Lokio/Segment;->pos:I

    .line 20
    iget v7, v9, Lokio/Segment;->limit:I

    .line 21
    iget-object v8, v9, Lokio/Segment;->data:[B

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_7

    :cond_d
    move-object v8, v7

    move v7, v4

    move v4, v13

    :cond_e
    :goto_7
    if-ltz v3, :cond_f

    return v3

    :cond_f
    neg-int v3, v3

    move-object/from16 v16, v8

    move v8, v3

    move v3, v4

    move v4, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_6
.end method
