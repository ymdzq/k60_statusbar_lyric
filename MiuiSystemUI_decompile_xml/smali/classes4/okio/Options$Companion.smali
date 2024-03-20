.class public abstract Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 20

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    if-ge v2, v10, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_15

    move v5, v2

    :goto_1
    if-ge v5, v10, :cond_3

    .line 1
    move-object/from16 v7, p4

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    .line 2
    invoke-virtual {v7}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    if-lt v7, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    move-object/from16 v12, p4

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    add-int/lit8 v6, v10, -0x1

    .line 5
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    .line 6
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    const/4 v13, -0x1

    if-ne v1, v7, :cond_4

    .line 7
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    move-object/from16 v19, v7

    move v7, v2

    move v2, v5

    move-object/from16 v5, v19

    goto :goto_3

    :cond_4
    move v7, v2

    move v2, v13

    .line 9
    :goto_3
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v8

    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v9

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v8, v9, :cond_e

    add-int/lit8 v5, v7, 0x1

    move v6, v5

    const/4 v5, 0x1

    :goto_4
    if-ge v6, v10, :cond_6

    add-int/lit8 v8, v6, -0x1

    .line 10
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokio/ByteString;

    .line 11
    invoke-virtual {v8, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v8

    .line 12
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    .line 13
    invoke-virtual {v9, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v9

    if-eq v8, v9, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 14
    :cond_6
    iget-wide v8, v0, Lokio/Buffer;->size:J

    int-to-long v14, v4

    .line 15
    div-long/2addr v8, v14

    add-long v8, v8, p0

    int-to-long v3, v3

    add-long/2addr v8, v3

    mul-int/lit8 v3, v5, 0x2

    int-to-long v3, v3

    add-long v16, v3, v8

    .line 16
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)V

    .line 17
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move v2, v7

    :goto_5
    if-ge v2, v10, :cond_9

    .line 18
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 19
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v3

    if-eq v2, v7, :cond_7

    add-int/lit8 v4, v2, -0x1

    .line 20
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 21
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v4

    if-eq v3, v4, :cond_8

    :cond_7
    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 23
    :cond_9
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    :goto_6
    if-ge v7, v10, :cond_d

    .line 24
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    .line 25
    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_7
    if-ge v4, v10, :cond_b

    .line 26
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 27
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v5

    if-eq v2, v5, :cond_a

    move v8, v4

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    move v8, v10

    :goto_8
    if-ne v3, v8, :cond_c

    add-int/lit8 v2, v1, 0x1

    .line 28
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 29
    invoke-virtual {v3}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 30
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move/from16 v18, v8

    move-object v13, v9

    goto :goto_9

    .line 31
    :cond_c
    iget-wide v2, v9, Lokio/Buffer;->size:J

    .line 32
    div-long/2addr v2, v14

    add-long v2, v2, v16

    long-to-int v2, v2

    mul-int/2addr v2, v13

    .line 33
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v5, v1, 0x1

    move-wide/from16 v2, v16

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v18, v8

    move-object v13, v9

    move-object/from16 v9, p7

    .line 34
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_9
    move-object v9, v13

    move/from16 v7, v18

    const/4 v13, -0x1

    goto :goto_6

    :cond_d
    move-object v13, v9

    :goto_a
    const-wide/16 v1, 0x2000

    .line 35
    invoke-virtual {v13, v0, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_14

    goto :goto_a

    .line 36
    :cond_e
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v8

    invoke-virtual {v6}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v9

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v1

    const/4 v13, 0x0

    :goto_b
    if-ge v9, v8, :cond_f

    .line 38
    invoke-virtual {v5, v9}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v14

    invoke-virtual {v6, v9}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v15

    if-ne v14, v15, :cond_f

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 39
    :cond_f
    iget-wide v8, v0, Lokio/Buffer;->size:J

    int-to-long v14, v4

    .line 40
    div-long/2addr v8, v14

    add-long v8, v8, p0

    int-to-long v3, v3

    add-long/2addr v8, v3

    int-to-long v3, v13

    add-long/2addr v8, v3

    const-wide/16 v3, 0x1

    add-long/2addr v3, v8

    neg-int v6, v13

    .line 41
    invoke-virtual {v0, v6}, Lokio/Buffer;->writeInt(I)V

    .line 42
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int v6, v1, v13

    :goto_c
    if-ge v1, v6, :cond_10

    .line 43
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 44
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v10, :cond_13

    .line 45
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    .line 46
    invoke-virtual {v1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    if-ne v6, v1, :cond_11

    const/4 v3, 0x1

    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_12

    .line 47
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    goto :goto_f

    .line 48
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 50
    iget-wide v1, v9, Lokio/Buffer;->size:J

    .line 51
    div-long/2addr v1, v14

    add-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    .line 52
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    move-wide v1, v3

    move-object v3, v9

    move v4, v6

    move-object/from16 v5, p4

    move v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 53
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    const-wide/16 v1, 0x2000

    .line 54
    :goto_e
    invoke-virtual {v9, v0, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    goto :goto_e

    :cond_14
    :goto_f
    return-void

    .line 55
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
