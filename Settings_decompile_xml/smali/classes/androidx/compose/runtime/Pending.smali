.class final Landroidx/compose/runtime/Pending;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4507:1\n1#2:4508\n1855#3,2:4509\n1855#3,2:4511\n1855#3,2:4513\n1855#3,2:4515\n1855#3,2:4517\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n*L\n156#1:4509,2\n162#1:4511,2\n172#1:4513,2\n178#1:4515,2\n198#1:4517,2\n*E\n"
.end annotation


# instance fields
.field private groupIndex:I

.field private final groupInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final keyInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final keyMap$delegate:Lkotlin/Lazy;

.field private final startIndex:I

.field private final usedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "keyInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    .line 101
    iput p2, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    .line 112
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 114
    iget-object v2, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/KeyInfo;

    .line 116
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v2}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1
    iput-object p2, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    .line 127
    new-instance p1, Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(Landroidx/compose/runtime/Pending;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    return-void

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid start index"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getGroupIndex()I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return p0
.end method

.method public final getKeyInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    return-object p0
.end method

.method public final getKeyMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public final getNext(ILjava/lang/Object;)Landroidx/compose/runtime/KeyInfo;
    .locals 1

    if-eqz p2, :cond_0

    .line 141
    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->getKeyMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->access$pop(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/KeyInfo;

    return-object p0
.end method

.method public final getStartIndex()I
    .locals 0

    .line 101
    iget p0, p0, Landroidx/compose/runtime/Pending;->startIndex:I

    return p0
.end method

.method public final getUsed()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/KeyInfo;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    return-object p0
.end method

.method public final nodePositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/GroupInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final recordUsed(Landroidx/compose/runtime/KeyInfo;)Z
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final registerInsert(Landroidx/compose/runtime/KeyInfo;I)V
    .locals 3

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Landroidx/compose/runtime/GroupInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerMoveNode(III)V
    .locals 5

    const-string v0, "groupInfos.values"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, p2, :cond_4

    .line 172
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    .line 173
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v3

    if-gt p1, v3, :cond_1

    add-int v4, p1, p3

    if-ge v3, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    sub-int/2addr v3, p1

    add-int/2addr v3, p2

    .line 174
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_2
    if-gt p2, v3, :cond_3

    if-ge v3, p1, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v4, :cond_0

    add-int/2addr v3, p3

    .line 175
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_4
    if-le p2, p1, :cond_9

    .line 178
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    .line 179
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v3

    if-gt p1, v3, :cond_6

    add-int v4, p1, p3

    if-ge v3, v4, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-eqz v4, :cond_7

    sub-int/2addr v3, p1

    add-int/2addr v3, p2

    .line 180
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_3

    :cond_7
    add-int/lit8 v4, p1, 0x1

    if-gt v4, v3, :cond_8

    if-ge v3, p2, :cond_8

    move v4, v1

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    if-eqz v4, :cond_5

    sub-int/2addr v3, p3

    .line 181
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method public final registerMoveSlot(II)V
    .locals 5

    const-string v0, "groupInfos.values"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, p2, :cond_3

    .line 156
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    .line 157
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 158
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v3, :cond_2

    if-ge v3, p1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 159
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_0

    :cond_3
    if-le p2, p1, :cond_7

    .line 162
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupInfo;

    .line 163
    invoke-virtual {v0}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_5

    .line 164
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v4, p1, 0x1

    if-gt v4, v3, :cond_6

    if-ge v3, p2, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 165
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GroupInfo;->setSlotIndex(I)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final setGroupIndex(I)V
    .locals 0

    .line 103
    iput p1, p0, Landroidx/compose/runtime/Pending;->groupIndex:I

    return-void
.end method

.method public final slotPositionOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/GroupInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/GroupInfo;->getSlotIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final updateNodeCount(II)Z
    .locals 3

    .line 192
    iget-object v0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupInfo;

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v0

    .line 195
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result v1

    sub-int v1, p2, v1

    .line 196
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GroupInfo;->setNodeCount(I)V

    if-eqz v1, :cond_1

    .line 198
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p2, "groupInfos.values"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/GroupInfo;

    .line 199
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p2}, Landroidx/compose/runtime/GroupInfo;->getNodeIndex()I

    move-result v2

    add-int/2addr v2, v1

    if-ltz v2, :cond_0

    .line 202
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GroupInfo;->setNodeIndex(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final updatedNodeCountOf(Landroidx/compose/runtime/KeyInfo;)I
    .locals 1

    const-string v0, "keyInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Landroidx/compose/runtime/Pending;->groupInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/GroupInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/GroupInfo;->getNodeCount()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/KeyInfo;->getNodes()I

    move-result p0

    :goto_0
    return p0
.end method
