.class public final Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final disable1FlagsList:Ljava/util/List;

.field public final disable2FlagsList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable1FlagsList:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLoggerKt;->defaultDisable2FlagsList:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    .line 13
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    invoke-static {v1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->flagsListHasDuplicateSymbols(Ljava/util/List;)Z

    .line 19
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string v0, "disable2 flags must have unique symbols"

    .line 28
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string v0, "disable1 flags must have unique symbols"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
    .line 41
.end method

.method public static flagsListHasDuplicateSymbols(Ljava/util/List;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 4
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 28
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 44
    move-result v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 50
    move-result v2

    .line 53
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v2

    .line 60
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 71
    const v5, 0x7fffffff

    .line 73
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 76
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 80
    move-result-object v4

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 88
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 92
    move-result v1

    .line 95
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 96
    move-result v2

    .line 99
    if-lt v0, v2, :cond_2

    .line 100
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 102
    move-result p0

    .line 105
    if-ge v1, p0, :cond_3

    .line 106
    :cond_2
    const/4 v3, 0x1

    .line 108
    :cond_3
    return v3
    .line 109
.end method


# virtual methods
.method public final getDiffString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "(unchanged)"

    .line 8
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "(changed: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 34
    iget v3, p2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    .line 36
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 38
    move-result v3

    .line 41
    iget v4, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    .line 42
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 44
    move-result v2

    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "."

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    .line 59
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p0

    .line 64
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 75
    iget v2, p2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    .line 77
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 79
    move-result v2

    .line 82
    iget v3, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    .line 83
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 85
    move-result v1

    .line 88
    if-eq v1, v2, :cond_3

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    goto :goto_1

    .line 94
    :cond_4
    const-string p0, ")"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 103
    return-object p0
    .line 104
.end method

.method public final getDisableFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Received new disable state: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, " "

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    const-string v2, "Old: "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " | New: "

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDiffString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDiffString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_0
    if-eqz p3, :cond_2

    .line 87
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    const-string p1, " | New after local modification: "

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->getDiffString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    return-object p0
    .line 121
.end method

.method public final getFlagsString(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, ""

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable1FlagsList:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 25
    iget v3, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    .line 27
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 29
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "."

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;->disable2FlagsList:Ljava/util/List;

    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;

    .line 58
    iget v2, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableFlag;->getFlagStatus$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)C

    .line 62
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    return-object p0
    .line 74
.end method
