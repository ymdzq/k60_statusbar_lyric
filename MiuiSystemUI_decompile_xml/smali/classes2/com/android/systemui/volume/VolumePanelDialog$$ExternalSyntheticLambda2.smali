.class public final synthetic Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumePanelDialog;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelDialog;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Landroidx/slice/Slice;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto/16 :goto_7

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "received slice: "

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 26
    move-object v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    .line 30
    move-result-object v3

    .line 33
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    const-string v3, "VolumePanelDialog"

    .line 41
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 49
    const-string v3, "long"

    .line 50
    const-string/jumbo v4, "ttl"

    .line 52
    invoke-static {p1, v3, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 55
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    .line 61
    :cond_2
    const-string v4, "last_updated"

    .line 64
    invoke-static {p1, v3, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 66
    move-result-object v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getLong()J

    .line 72
    :cond_3
    const-string v3, "bundle"

    .line 75
    const-string v4, "host_extras"

    .line 77
    invoke-static {p1, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 79
    move-result-object v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    iget-object v3, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 85
    instance-of v4, v3, Landroid/os/Bundle;

    .line 87
    if-eqz v4, :cond_4

    .line 89
    check-cast v3, Landroid/os/Bundle;

    .line 91
    goto :goto_1

    .line 93
    :cond_4
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 94
    :goto_1
    new-instance v3, Landroidx/slice/widget/ListContent;

    .line 96
    invoke-direct {v3, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 98
    iget-object v4, v3, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 101
    iget-object v5, v3, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 103
    const/4 v6, 0x1

    .line 105
    invoke-static {v4, v6, v5}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    .line 106
    invoke-virtual {v3, v1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;

    .line 109
    iget-object v1, v3, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 112
    const/4 v5, 0x0

    .line 114
    if-nez v1, :cond_7

    .line 115
    if-eqz v4, :cond_7

    .line 117
    iget-object v1, v4, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 119
    const-string v7, "list_item"

    .line 121
    filled-new-array {v7}, [Ljava/lang/String;

    .line 123
    move-result-object v7

    .line 126
    invoke-static {v1, v7}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    iget-object v1, v4, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    .line 135
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    move v7, v5

    .line 140
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v8

    .line 144
    if-ge v7, v8, :cond_6

    .line 145
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v8

    .line 150
    check-cast v8, Landroidx/slice/SliceItem;

    .line 151
    const-string v9, "action"

    .line 153
    invoke-static {v8, v9, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 155
    move-result-object v8

    .line 158
    if-eqz v8, :cond_5

    .line 159
    new-instance v8, Landroidx/slice/core/SliceActionImpl;

    .line 161
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v9

    .line 166
    check-cast v9, Landroidx/slice/SliceItem;

    .line 167
    invoke-direct {v8, v9}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 169
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 175
    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 178
    :cond_7
    if-eqz p1, :cond_d

    .line 181
    iget-object v1, p1, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 183
    const-string v4, "error"

    .line 185
    invoke-static {v1, v4}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 190
    if-eqz v1, :cond_8

    .line 191
    goto :goto_5

    .line 193
    :cond_8
    const-string v1, "partial"

    .line 194
    invoke-static {p1, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 196
    move-result-object p1

    .line 199
    if-eqz p1, :cond_9

    .line 200
    move p1, v6

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    move p1, v5

    .line 204
    :goto_3
    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->isValid()Z

    .line 205
    move-result v1

    .line 208
    const/4 v2, 0x2

    .line 209
    if-nez v1, :cond_a

    .line 210
    move v6, v5

    .line 212
    goto :goto_4

    .line 213
    :cond_a
    if-eqz p1, :cond_b

    .line 214
    goto :goto_4

    .line 216
    :cond_b
    move v6, v2

    .line 217
    :goto_4
    if-ne v6, v2, :cond_c

    .line 218
    iget-object p1, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 220
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_6

    .line 225
    :cond_c
    iget-object p1, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;

    .line 228
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/VolumePanelDialog;Landroid/net/Uri;)V

    .line 230
    const-wide/16 v2, 0xc8

    .line 233
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    goto :goto_6

    .line 238
    :cond_d
    :goto_5
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumePanelDialog;->removeSliceLiveData(Landroid/net/Uri;)Z

    .line 239
    move-result p1

    .line 242
    if-nez p1, :cond_e

    .line 243
    iget-object p1, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 245
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_e
    :goto_6
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanelDialog;->setupAdapterWhenReady()V

    .line 250
    :goto_7
    return-void
    .line 253
.end method
