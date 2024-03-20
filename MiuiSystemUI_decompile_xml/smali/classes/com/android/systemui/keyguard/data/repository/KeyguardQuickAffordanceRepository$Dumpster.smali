.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$Dumpster;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$Dumpster;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$Dumpster;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->appContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f03005c    # @array/config_keyguardQuickAffordanceSlots

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 25
    move-result p2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    array-length p2, v0

    .line 34
    div-int/2addr p2, v3

    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    if-gez p2, :cond_0

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    array-length v4, v0

    .line 41
    add-int/lit8 v4, v4, -0x1

    .line 42
    new-instance v5, Lkotlin/ranges/IntRange;

    .line 44
    invoke-direct {v5, v1, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 46
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 49
    move-result-object p2

    .line 52
    :goto_0
    iget-boolean v5, p2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 53
    if-eqz v5, :cond_1

    .line 55
    invoke-virtual {p2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 57
    move-result v5

    .line 60
    aget-object v6, v0, v5

    .line 61
    aget-object v7, v0, v4

    .line 63
    aput-object v7, v0, v5

    .line 65
    aput-object v6, v0, v4

    .line 67
    add-int/lit8 v4, v4, -0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 72
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    array-length v5, v0

    .line 82
    move v6, v1

    .line 83
    :goto_2
    if-ge v6, v5, :cond_5

    .line 84
    aget-object v7, v0, v6

    .line 86
    const-string v8, ":"

    .line 88
    filled-new-array {v8}, [Ljava/lang/String;

    .line 90
    move-result-object v8

    .line 93
    invoke-static {v7, v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 94
    move-result-object v7

    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 98
    move-result v8

    .line 101
    if-ne v8, v3, :cond_2

    .line 102
    move v8, v2

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    move v8, v1

    .line 106
    :goto_3
    if-eqz v8, :cond_4

    .line 107
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v8

    .line 112
    check-cast v8, Ljava/lang/String;

    .line 113
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    move-result v7

    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v7

    .line 128
    new-instance v9, Lkotlin/Pair;

    .line 129
    invoke-direct {v9, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 134
    move-result-object v7

    .line 137
    check-cast v7, Ljava/lang/String;

    .line 138
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 140
    move-result-object v8

    .line 143
    check-cast v8, Ljava/lang/Number;

    .line 144
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 146
    move-result v8

    .line 149
    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 150
    move-result v9

    .line 153
    xor-int/2addr v9, v2

    .line 154
    if-eqz v9, :cond_3

    .line 155
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v9, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;

    .line 160
    invoke-direct {v9, v7, v8}, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;-><init>(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v6, v6, 0x1

    .line 168
    goto :goto_2

    .line 170
    :cond_3
    const-string p0, "Duplicate slot \""

    .line 171
    const-string p1, "\"!"

    .line 173
    invoke-static {p0, v7, p1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p0

    .line 178
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 184
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p1

    .line 188
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 189
    const-string p1, "Check failed."

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p0

    .line 200
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selectionManager:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 201
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 203
    move-result-object p2

    .line 206
    check-cast p2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceSelectionManager;

    .line 207
    invoke-interface {p2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceSelectionManager;->getSelections()Ljava/util/Map;

    .line 209
    move-result-object p2

    .line 212
    const-string v0, "Slots & selections:"

    .line 213
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object v0

    .line 221
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v3

    .line 225
    const-string v4, "    "

    .line 226
    if-eqz v3, :cond_9

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v3

    .line 233
    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;

    .line 234
    iget-object v5, v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;->id:Ljava/lang/String;

    .line 236
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object v6

    .line 241
    move-object v7, v6

    .line 242
    check-cast v7, Ljava/util/List;

    .line 243
    if-eqz v7, :cond_7

    .line 245
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 247
    move-result v6

    .line 250
    if-eqz v6, :cond_6

    .line 251
    goto :goto_5

    .line 253
    :cond_6
    move v6, v1

    .line 254
    goto :goto_6

    .line 255
    :cond_7
    :goto_5
    move v6, v2

    .line 256
    :goto_6
    if-nez v6, :cond_8

    .line 257
    const-string v8, ", "

    .line 259
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x0

    .line 262
    const/4 v11, 0x0

    .line 263
    const/16 v12, 0x3e

    .line 264
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 266
    move-result-object v6

    .line 269
    const-string v7, ": "

    .line 270
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object v6

    .line 275
    goto :goto_7

    .line 276
    :cond_8
    const-string v6, " is empty"

    .line 277
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v4, " (capacity = "

    .line 290
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v3, v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;->maxSelectedAffordances:I

    .line 295
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v3, ")"

    .line 300
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v3

    .line 308
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    goto :goto_4

    .line 312
    :cond_9
    const-string p2, "Available affordances on device:"

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->configs:Ljava/util/Set;

    .line 318
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 320
    move-result-object p0

    .line 323
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    move-result p2

    .line 327
    if-eqz p2, :cond_a

    .line 328
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    move-result-object p2

    .line 333
    check-cast p2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 334
    invoke-interface {p2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 339
    invoke-interface {p2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->pickerName()Ljava/lang/String;

    .line 340
    move-result-object p2

    .line 343
    const-string v1, " (\""

    .line 344
    const-string v2, "\")"

    .line 346
    invoke-static {v4, v0, v1, p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    goto :goto_8

    .line 355
    :cond_a
    return-void
    .line 356
.end method
