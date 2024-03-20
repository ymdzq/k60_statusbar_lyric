.class public final Landroidx/slice/widget/SliceAdapter$SliceWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mId:J

.field public final mItem:Landroidx/slice/widget/SliceContent;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    .line 5
    iget-object v0, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 7
    iget-object v1, v0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 9
    const-string v2, "message"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 19
    const-string/jumbo v2, "source"

    .line 20
    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 23
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "horizontal"

    .line 33
    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    const/4 v0, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const-string v1, "list_item"

    .line 43
    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    const/4 v0, 0x2

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x1

    .line 53
    :goto_0
    iput v0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

    .line 54
    iget-object p1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v0, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "slice"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    iget-object v0, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 72
    const-string v1, "action"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 92
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    move-result p1

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    :goto_2
    iget-object v0, p2, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mCurrentIds:Landroidx/collection/ArrayMap;

    .line 104
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_6

    .line 110
    iget-wide v1, p2, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mNextLong:J

    .line 112
    const-wide/16 v3, 0x1

    .line 114
    add-long/2addr v3, v1

    .line 116
    iput-wide v3, p2, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mNextLong:J

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    move-result-object v1

    .line 122
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/Long;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 132
    move-result-wide v0

    .line 135
    iget-object p2, p2, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    .line 136
    invoke-virtual {p2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/Integer;

    .line 142
    if-eqz v2, :cond_7

    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v2

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    const/4 v2, 0x0

    .line 151
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v3

    .line 157
    invoke-virtual {p2, p1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    mul-int/lit16 v2, v2, 0x2710

    .line 161
    int-to-long p1, v2

    .line 163
    add-long/2addr v0, p1

    .line 164
    iput-wide v0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    .line 165
    return-void
    .line 167
.end method
