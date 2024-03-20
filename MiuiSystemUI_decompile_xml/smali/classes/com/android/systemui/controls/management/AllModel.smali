.class public final Lcom/android/systemui/controls/management/AllModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# instance fields
.field public final controls:Ljava/util/List;

.field public final controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

.field public final elements:Ljava/util/List;

.field public final emptyZoneString:Ljava/lang/CharSequence;

.field public final favoriteIds:Ljava/util/List;

.field public modified:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/ControlsFavoritingActivity$controlsModelCallback$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/AllModel;->emptyZoneString:Ljava/lang/CharSequence;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/management/AllModel;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

    .line 9
    new-instance p3, Ljava/util/HashSet;

    .line 11
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p4

    .line 23
    if-eqz p4, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p4

    .line 29
    check-cast p4, Lcom/android/systemui/controls/ControlStatus;

    .line 30
    iget-object p4, p4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 32
    invoke-virtual {p4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 34
    move-result-object p4

    .line 37
    invoke-virtual {p3, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p2

    .line 50
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result p4

    .line 54
    if-eqz p4, :cond_2

    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object p4

    .line 60
    move-object v0, p4

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 74
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    iput-object p2, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    .line 81
    new-instance p2, Lcom/android/systemui/controls/management/AllModel$OrderedMap;

    .line 83
    new-instance p3, Landroid/util/ArrayMap;

    .line 85
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    invoke-direct {p2, p3}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;-><init>(Ljava/util/Map;)V

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p1

    .line 96
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result p3

    .line 100
    if-eqz p3, :cond_5

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object p3

    .line 106
    move-object p4, p3

    .line 107
    check-cast p4, Lcom/android/systemui/controls/ControlStatus;

    .line 108
    iget-object p4, p4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 110
    invoke-virtual {p4}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    .line 112
    move-result-object p4

    .line 115
    if-nez p4, :cond_3

    .line 116
    const-string p4, ""

    .line 118
    :cond_3
    invoke-virtual {p2, p4}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 123
    if-nez v0, :cond_4

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p2, p4, v0}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 134
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_2

    .line 139
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 140
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object p3, p2, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 145
    check-cast p3, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object p3

    .line 152
    const/4 p4, 0x0

    .line 153
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/CharSequence;

    .line 164
    invoke-static {p2, v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/Iterable;

    .line 170
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 172
    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 174
    sget-object v1, Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/AllModel$createWrappers$values$1;

    .line 177
    new-instance v3, Lkotlin/sequences/TransformingSequence;

    .line 179
    invoke-direct {v3, v2, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    move-result v1

    .line 187
    if-eqz v1, :cond_6

    .line 188
    move-object p4, v3

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    new-instance v1, Lcom/android/systemui/controls/management/ZoneNameWrapper;

    .line 192
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/ZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 200
    goto :goto_3

    .line 203
    :cond_7
    if-eqz p4, :cond_9

    .line 204
    invoke-virtual {p2}, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->size()I

    .line 206
    move-result p2

    .line 209
    const/4 p3, 0x1

    .line 210
    if-eq p2, p3, :cond_8

    .line 211
    new-instance p2, Lcom/android/systemui/controls/management/ZoneNameWrapper;

    .line 213
    iget-object p3, p0, Lcom/android/systemui/controls/management/AllModel;->emptyZoneString:Ljava/lang/CharSequence;

    .line 215
    invoke-direct {p2, p3}, Lcom/android/systemui/controls/management/ZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_8
    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 223
    :cond_9
    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel;->elements:Ljava/util/List;

    .line 226
    return-void
    .line 228
.end method


# virtual methods
.method public final changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->elements:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    move-object v4, v1

    .line 20
    check-cast v4, Lcom/android/systemui/controls/management/ElementWrapper;

    .line 21
    instance-of v5, v4, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    .line 23
    if-eqz v5, :cond_1

    .line 25
    check-cast v4, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    .line 27
    iget-object v4, v4, Lcom/android/systemui/controls/management/ControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 29
    iget-object v4, v4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 31
    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    move v4, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v4, v3

    .line 45
    :goto_0
    if-eqz v4, :cond_0

    .line 46
    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_1
    check-cast v1, Lcom/android/systemui/controls/management/ControlStatusWrapper;

    .line 50
    if-eqz v1, :cond_3

    .line 52
    iget-object v0, v1, Lcom/android/systemui/controls/management/ControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 54
    if-eqz v0, :cond_3

    .line 56
    iget-boolean v0, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 58
    if-ne p2, v0, :cond_3

    .line 60
    move v3, v2

    .line 62
    :cond_3
    if-eqz v3, :cond_4

    .line 63
    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    .line 66
    if-eqz p2, :cond_5

    .line 68
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    check-cast v0, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 82
    :goto_2
    if-eqz p1, :cond_7

    .line 83
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/AllModel;->modified:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->controlsModelCallback:Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;

    .line 87
    if-nez p1, :cond_6

    .line 89
    iput-boolean v2, p0, Lcom/android/systemui/controls/management/AllModel;->modified:Z

    .line 91
    invoke-interface {v0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onFirstChange()V

    .line 93
    :cond_6
    invoke-interface {v0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onChange()V

    .line 96
    :cond_7
    if-eqz v1, :cond_8

    .line 99
    iget-object p0, v1, Lcom/android/systemui/controls/management/ControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    .line 101
    iput-boolean p2, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 103
    :cond_8
    return-void
    .line 105
.end method

.method public final getElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel;->elements:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel;->favoriteIds:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    iget-object v3, p0, Lcom/android/systemui/controls/management/AllModel;->controls:Ljava/util/List;

    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v3

    .line 30
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_2

    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 41
    move-object v6, v4

    .line 42
    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 43
    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 45
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 50
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    move-object v4, v5

    .line 58
    :goto_1
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    .line 59
    if-eqz v4, :cond_3

    .line 61
    iget-object v2, v4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    move-object v2, v5

    .line 66
    :goto_2
    if-eqz v2, :cond_4

    .line 67
    new-instance v5, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 69
    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {v2}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 75
    move-result-object v4

    .line 78
    invoke-virtual {v2}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 79
    move-result-object v6

    .line 82
    invoke-virtual {v2}, Landroid/service/controls/Control;->getDeviceType()I

    .line 83
    move-result v2

    .line 86
    invoke-direct {v5, v3, v4, v6, v2}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 87
    :cond_4
    if-eqz v5, :cond_0

    .line 90
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 95
    :cond_5
    return-object v1
    .line 96
.end method

.method public final bridge synthetic getMoveHelper()Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method
