.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 6
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 15
    move-result-object v1

    .line 18
    iget-boolean v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    .line 19
    const/4 v3, 0x1

    .line 21
    xor-int/2addr v2, v3

    .line 22
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$1:Z

    .line 23
    or-int/2addr v2, v4

    .line 25
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 26
    const/4 v5, 0x0

    .line 28
    if-nez v1, :cond_2

    .line 29
    iput-boolean v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 33
    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v1

    .line 43
    iput-wide v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    .line 44
    check-cast v4, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 51
    iput-object p1, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v2

    .line 58
    if-le v2, v3, :cond_0

    .line 59
    move v2, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v2, v5

    .line 63
    :goto_0
    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 64
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 66
    if-nez v1, :cond_1

    .line 68
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    .line 79
    goto :goto_2

    .line 82
    :cond_2
    iput-boolean v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    .line 83
    xor-int/lit8 v1, v2, 0x1

    .line 85
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 87
    iput-object p1, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 89
    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 91
    if-nez v2, :cond_4

    .line 93
    if-eqz v1, :cond_4

    .line 95
    check-cast v4, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 99
    move-result v1

    .line 102
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 109
    if-eqz v1, :cond_3

    .line 111
    move v1, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v1, v5

    .line 115
    :goto_1
    iput-boolean v1, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 116
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 124
    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    .line 127
    move-result v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 136
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 139
    if-nez v1, :cond_5

    .line 141
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 143
    :cond_5
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 146
    if-eqz v1, :cond_6

    .line 148
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 150
    if-ne v1, p1, :cond_6

    .line 152
    move v1, v3

    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move v1, v5

    .line 156
    :goto_3
    if-nez v1, :cond_8

    .line 157
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;->f$2:Z

    .line 159
    if-eqz p0, :cond_8

    .line 161
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 163
    move-result p0

    .line 166
    if-nez p0, :cond_7

    .line 167
    goto :goto_4

    .line 169
    :cond_7
    move p0, v5

    .line 170
    goto :goto_5

    .line 171
    :cond_8
    :goto_4
    move p0, v3

    .line 172
    :goto_5
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 173
    xor-int/lit8 p0, v1, 0x1

    .line 176
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 178
    iget-object p0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    .line 181
    if-eqz p0, :cond_10

    .line 183
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 185
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 187
    move-result v2

    .line 190
    if-eqz v2, :cond_c

    .line 191
    iget v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 193
    and-int/lit8 v6, v4, 0x8

    .line 195
    if-eqz v6, :cond_9

    .line 197
    move v6, v3

    .line 199
    goto :goto_6

    .line 200
    :cond_9
    move v6, v5

    .line 201
    :goto_6
    if-eqz v6, :cond_b

    .line 202
    and-int/lit8 v4, v4, 0x4

    .line 204
    if-eqz v4, :cond_a

    .line 206
    move v4, v3

    .line 208
    goto :goto_7

    .line 209
    :cond_a
    move v4, v5

    .line 210
    :goto_7
    if-nez v4, :cond_c

    .line 211
    :cond_b
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doUnsuppress(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 216
    goto :goto_a

    .line 219
    :cond_c
    if-nez v2, :cond_10

    .line 220
    iget v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 222
    and-int/lit8 v4, v2, 0x8

    .line 224
    if-eqz v4, :cond_d

    .line 226
    move v4, v3

    .line 228
    goto :goto_8

    .line 229
    :cond_d
    move v4, v5

    .line 230
    :goto_8
    if-nez v4, :cond_f

    .line 231
    and-int/lit8 v2, v2, 0x4

    .line 233
    if-eqz v2, :cond_e

    .line 235
    goto :goto_9

    .line 237
    :cond_e
    move v3, v5

    .line 238
    :goto_9
    if-eqz v3, :cond_10

    .line 239
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    .line 241
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 243
    move-result v2

    .line 246
    if-eqz v2, :cond_10

    .line 247
    :cond_f
    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->doSuppress(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 252
    :cond_10
    :goto_a
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 255
    return-void
    .line 258
.end method
