.class public abstract Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final access$toKb(I)I
    .locals 1

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x44800000    # 1024.0f

    .line 3
    div-float/2addr p0, v0

    .line 5
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static final aggregateMemoryUsageData(Ljava/util/List;)Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_a

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 22
    new-instance v3, Lkotlin/Pair;

    .line 24
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    .line 26
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 28
    iget v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 35
    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    if-nez v2, :cond_0

    .line 45
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 47
    move-result v6

    .line 50
    if-nez v6, :cond_0

    .line 51
    move v6, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move v6, v4

    .line 55
    :goto_1
    check-cast v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 56
    check-cast v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    .line 58
    if-eqz v6, :cond_1

    .line 60
    new-instance v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    .line 62
    iget v6, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    .line 64
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 66
    iget v7, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    .line 68
    invoke-direct {v2, v6, v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;-><init>(II)V

    .line 70
    goto :goto_2

    .line 73
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    :goto_2
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    .line 77
    add-int/2addr v6, v5

    .line 79
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    .line 80
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 82
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    move-result v6

    .line 87
    xor-int/2addr v6, v5

    .line 88
    if-eqz v6, :cond_2

    .line 89
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    .line 91
    add-int/2addr v6, v5

    .line 93
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    .line 94
    :cond_2
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    .line 96
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 98
    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    .line 100
    add-int/2addr v6, v8

    .line 102
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    .line 103
    if-lez v8, :cond_3

    .line 105
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    .line 107
    add-int/2addr v6, v5

    .line 109
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    .line 110
    :cond_3
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    .line 112
    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    .line 114
    add-int/2addr v6, v8

    .line 116
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    .line 117
    if-lez v8, :cond_4

    .line 119
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    .line 121
    add-int/2addr v6, v5

    .line 123
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    .line 124
    :cond_4
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    .line 126
    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    .line 128
    add-int/2addr v6, v8

    .line 130
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    .line 131
    if-lez v8, :cond_5

    .line 133
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    .line 135
    add-int/2addr v6, v5

    .line 137
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    .line 138
    :cond_5
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    .line 140
    iget v8, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    .line 142
    add-int/2addr v6, v8

    .line 144
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    .line 145
    iget v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    .line 147
    iget v7, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    .line 149
    add-int/2addr v6, v7

    .line 151
    iput v6, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    .line 152
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 154
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v1

    .line 159
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v6

    .line 163
    if-eqz v6, :cond_8

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v6

    .line 169
    move-object v7, v6

    .line 170
    check-cast v7, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 171
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 173
    sget-object v8, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 175
    if-ne v7, v8, :cond_7

    .line 177
    move v7, v5

    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move v7, v4

    .line 181
    :goto_3
    if-eqz v7, :cond_6

    .line 182
    goto :goto_4

    .line 184
    :cond_8
    const/4 v6, 0x0

    .line 185
    :goto_4
    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 186
    if-eqz v6, :cond_9

    .line 188
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    .line 190
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    .line 192
    add-int/2addr v1, v4

    .line 194
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    .line 195
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    .line 197
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    .line 199
    add-int/2addr v1, v4

    .line 201
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    .line 202
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    .line 204
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    .line 206
    add-int/2addr v1, v4

    .line 208
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    .line 209
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    .line 211
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    .line 213
    add-int/2addr v1, v4

    .line 215
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    .line 216
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    .line 218
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    .line 220
    add-int/2addr v1, v4

    .line 222
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    .line 223
    iget v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    .line 225
    iget v4, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    .line 227
    add-int/2addr v1, v4

    .line 229
    iput v1, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    .line 230
    :cond_9
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    goto/16 :goto_0

    .line 235
    :cond_a
    return-object v0
    .line 237
.end method
