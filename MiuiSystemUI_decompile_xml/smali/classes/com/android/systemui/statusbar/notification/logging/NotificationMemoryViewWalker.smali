.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;

    .line 7
    return-void
    .line 9
.end method

.method public static computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 11
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_b

    .line 17
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 25
    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 35
    if-nez v1, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    move-object v1, v0

    .line 40
    check-cast v1, Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 50
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 57
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    const/4 v5, 0x0

    .line 67
    if-eqz v4, :cond_5

    .line 68
    move-object v6, v2

    .line 70
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 73
    move-result-object v6

    .line 76
    if-eqz v6, :cond_5

    .line 77
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 79
    move-result v7

    .line 82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v8

    .line 86
    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v8

    .line 90
    if-eqz v8, :cond_4

    .line 91
    goto :goto_1

    .line 93
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v7

    .line 97
    invoke-virtual {p2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 101
    move-result v6

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    :goto_1
    move v6, v5

    .line 106
    :goto_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    .line 107
    move-result v1

    .line 110
    sparse-switch v1, :sswitch_data_0

    .line 111
    const/4 v1, 0x3

    .line 114
    const-string v7, "NotificationMemory"

    .line 115
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 117
    move-result v1

    .line 120
    if-eqz v1, :cond_7

    .line 121
    goto :goto_3

    .line 123
    :sswitch_0
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    .line 124
    add-int/2addr v0, v6

    .line 126
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    .line 127
    goto :goto_5

    .line 129
    :sswitch_1
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    .line 130
    add-int/2addr v0, v6

    .line 132
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    .line 133
    goto :goto_5

    .line 135
    :sswitch_2
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    .line 136
    add-int/2addr v0, v6

    .line 138
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    .line 139
    goto :goto_5

    .line 141
    :sswitch_3
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    .line 142
    add-int/2addr v0, v6

    .line 144
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    .line 145
    goto :goto_5

    .line 147
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 148
    move-result v1

    .line 151
    const/4 v8, -0x1

    .line 152
    if-ne v1, v8, :cond_6

    .line 153
    const-string v0, "no-id"

    .line 155
    goto :goto_4

    .line 157
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v1

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 162
    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    :goto_4
    const-string v1, "Custom view: "

    .line 170
    invoke-static {v1, v0, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_7
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    .line 175
    add-int/2addr v0, v6

    .line 177
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    .line 178
    :goto_5
    if-eqz v4, :cond_9

    .line 180
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 184
    move-result-object v0

    .line 187
    if-eqz v0, :cond_8

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 190
    move-result-object v0

    .line 193
    goto :goto_6

    .line 194
    :cond_8
    const/4 v0, 0x0

    .line 195
    :goto_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 196
    if-eq v0, v1, :cond_9

    .line 198
    const/4 v5, 0x1

    .line 200
    :cond_9
    if-eqz v5, :cond_a

    .line 201
    iget v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    .line 203
    add-int/2addr v0, v6

    .line 205
    iput v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    .line 206
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v0

    .line 211
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    goto/16 :goto_0

    .line 215
    :cond_b
    return-void

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x1020006 -> :sswitch_3    # @android:id/icon
        0x10201e0 -> :sswitch_2    # @android:id/alias
        0x102021d -> :sswitch_1    # @android:id/blocksDescendants
        0x1020284 -> :sswitch_3    # @android:id/conversation_icon_badge_ring
        0x10202c9 -> :sswitch_2    # @android:id/fade_in
        0x10202d4 -> :sswitch_2    # @android:id/fill
        0x102038f -> :sswitch_3    # @android:id/list_item
        0x1020446 -> :sswitch_2    # @android:id/portrait
        0x102047c -> :sswitch_2    # @android:id/resolver_empty_state_subtitle
        0x102049b -> :sswitch_0    # @android:id/scrim
    .end sparse-switch
    .line 218
.end method

.method public static getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;
    .locals 8

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$getViewUsage$usageBuilder$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$getViewUsage$usageBuilder$1;

    .line 2
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 4
    move-result-object v0

    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    const/4 v3, 0x0

    .line 10
    if-ge v2, v1, :cond_2

    .line 11
    aget-object v4, p1, v2

    .line 13
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 15
    if-eqz v5, :cond_0

    .line 17
    move-object v3, v4

    .line 19
    check-cast v3, Landroid/view/ViewGroup;

    .line 20
    :cond_0
    if-eqz v3, :cond_1

    .line 22
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;

    .line 28
    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->computeViewHierarchyUse(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;Ljava/util/HashSet;)V

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;

    .line 46
    new-instance p2, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 48
    iget v2, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->smallIcon:I

    .line 50
    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->largeIcon:I

    .line 52
    iget v4, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->systemIcons:I

    .line 54
    iget v5, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->style:I

    .line 56
    iget v6, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->customViews:I

    .line 58
    iget v7, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker$UsageBuilder;->softwareBitmaps:I

    .line 60
    move-object v0, p2

    .line 62
    move-object v1, p0

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;-><init>(Lcom/android/systemui/statusbar/notification/logging/ViewType;IIIIII)V

    .line 64
    move-object v3, p2

    .line 67
    :cond_3
    return-object v3
    .line 68
.end method

.method public static synthetic getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method
