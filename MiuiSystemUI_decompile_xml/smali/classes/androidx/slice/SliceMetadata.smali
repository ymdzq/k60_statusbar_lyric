.class public final Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mExpiry:J

.field public final mLastUpdated:J

.field public final mListContent:Landroidx/slice/widget/ListContent;

.field public final mSlice:Landroidx/slice/Slice;

.field public final mSliceActions:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 5
    const-string v0, "long"

    .line 7
    const-string/jumbo v1, "ttl"

    .line 9
    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    .line 18
    move-result-wide v1

    .line 21
    iput-wide v1, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 22
    :cond_0
    const-string v1, "last_updated"

    .line 24
    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 26
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    .line 32
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 36
    :cond_1
    const-string v0, "bundle"

    .line 38
    const-string v1, "host_extras"

    .line 40
    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 42
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    iget-object v0, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 48
    instance-of v1, v0, Landroid/os/Bundle;

    .line 50
    if-eqz v1, :cond_2

    .line 52
    check-cast v0, Landroid/os/Bundle;

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 57
    :goto_0
    new-instance v0, Landroidx/slice/widget/ListContent;

    .line 59
    invoke-direct {v0, p2}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 61
    iput-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 64
    iget-object p2, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 66
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 68
    const/4 v2, 0x1

    .line 70
    invoke-static {p2, v2, v1}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    .line 71
    invoke-virtual {v0, p1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;

    .line 74
    iget-object p1, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 77
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 79
    if-nez p1, :cond_5

    .line 81
    if-eqz p2, :cond_5

    .line 83
    iget-object p1, p2, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 85
    const-string v0, "list_item"

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 93
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    iget-object p1, p2, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    .line 101
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const/4 v0, 0x0

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v1

    .line 110
    if-ge v0, v1, :cond_4

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 116
    check-cast v1, Landroidx/slice/SliceItem;

    .line 117
    const-string v2, "action"

    .line 119
    const/4 v3, 0x0

    .line 121
    invoke-static {v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 122
    move-result-object v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 133
    check-cast v2, Landroidx/slice/SliceItem;

    .line 134
    invoke-direct {v1, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 136
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 142
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 145
    move-result p1

    .line 148
    if-lez p1, :cond_5

    .line 149
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 151
    :cond_5
    return-void
    .line 153
.end method


# virtual methods
.method public final getLoadingState()I
    .locals 3

    .line 1
    const-string v0, "partial"

    .line 2
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    iget-object p0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 18
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    .line 20
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    return v2

    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    return v1

    .line 29
    :cond_2
    const/4 p0, 0x2

    .line 30
    return p0
    .line 31
.end method

.method public final isExpired()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    iget-wide v4, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 8
    cmp-long p0, v4, v2

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const-wide/16 v2, -0x1

    .line 14
    cmp-long p0, v4, v2

    .line 16
    if-eqz p0, :cond_0

    .line 18
    cmp-long p0, v0, v4

    .line 20
    if-lez p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method
