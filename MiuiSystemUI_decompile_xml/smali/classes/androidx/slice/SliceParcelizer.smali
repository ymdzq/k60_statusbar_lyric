.class public final Landroidx/slice/SliceParcelizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/Slice;
    .locals 8

    .line 1
    new-instance v0, Landroidx/slice/Slice;

    .line 2
    invoke-direct {v0}, Landroidx/slice/Slice;-><init>()V

    .line 4
    iget-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/slice/SliceSpec;

    .line 14
    iput-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 16
    iget-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 18
    const/4 v3, 0x2

    .line 20
    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, [Landroidx/slice/SliceItem;

    .line 25
    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 27
    iget-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 29
    const/4 v3, 0x3

    .line 31
    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, [Ljava/lang/String;

    .line 36
    iput-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 38
    iget-object v1, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 40
    const/4 v3, 0x4

    .line 42
    invoke-virtual {p0, v3, v1}, Landroidx/versionedparcelable/VersionedParcel;->readString(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    iput-object p0, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 47
    iget-object p0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 49
    array-length p0, p0

    .line 51
    sub-int/2addr p0, v2

    .line 52
    :goto_0
    if-ltz p0, :cond_5

    .line 53
    iget-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 55
    aget-object v3, v1, p0

    .line 57
    iget-object v4, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 59
    if-nez v4, :cond_4

    .line 61
    invoke-static {v1, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-nez v4, :cond_0

    .line 68
    goto :goto_2

    .line 70
    :cond_0
    array-length v4, v1

    .line 71
    move v6, v5

    .line 72
    :goto_1
    if-ge v6, v4, :cond_3

    .line 73
    aget-object v7, v1, v6

    .line 75
    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v7

    .line 80
    if-eqz v7, :cond_2

    .line 81
    if-ne v4, v2, :cond_1

    .line 83
    const/4 v1, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    add-int/lit8 v3, v4, -0x1

    .line 87
    const-class v7, Landroidx/slice/SliceItem;

    .line 89
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 94
    check-cast v3, [Ljava/lang/Object;

    .line 95
    invoke-static {v1, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    add-int/lit8 v7, v6, 0x1

    .line 100
    sub-int/2addr v4, v6

    .line 102
    sub-int/2addr v4, v2

    .line 103
    invoke-static {v1, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object v1, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 109
    goto :goto_1

    .line 111
    :cond_3
    :goto_2
    check-cast v1, [Landroidx/slice/SliceItem;

    .line 112
    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 114
    if-nez v1, :cond_4

    .line 116
    new-array v1, v5, [Landroidx/slice/SliceItem;

    .line 118
    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 120
    :cond_4
    add-int/lit8 p0, p0, -0x1

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    return-object v0
    .line 125
.end method

.method public static write(Landroidx/slice/Slice;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 16
    :cond_0
    sget-object v0, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    .line 19
    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 29
    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    .line 32
    :cond_1
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    .line 35
    iget-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 37
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 45
    const/4 v1, 0x3

    .line 47
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray(I[Ljava/lang/Object;)V

    .line 48
    :cond_2
    iget-object p0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 51
    if-eqz p0, :cond_3

    .line 53
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p1, v0, p0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(ILjava/lang/String;)V

    .line 56
    :cond_3
    return-void
    .line 59
.end method
