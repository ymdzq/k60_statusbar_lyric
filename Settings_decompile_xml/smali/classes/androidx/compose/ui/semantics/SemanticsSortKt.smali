.class public final Landroidx/compose/ui/semantics/SemanticsSortKt;
.super Ljava/lang/Object;
.source "SemanticsSort.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsSort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n33#2,6:195\n151#2,3:201\n33#2,4:204\n154#2,2:208\n38#2:210\n156#2:211\n33#2,6:212\n33#2,6:218\n1#3:224\n*S KotlinDebug\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n*L\n53#1:195,6\n56#1:201,3\n56#1:204,4\n56#1:208,2\n56#1:210\n56#1:211\n58#1:212,6\n176#1:218,6\n*E\n"
.end annotation


# direct methods
.method public static final findCoordinatorToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static final findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 177
    invoke-static {v2, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/SemanticsModifierNode;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/SemanticsModifierNode;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 54
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroidx/compose/ui/semantics/NodeLocationHolder;

    invoke-direct {v6, p0, v5}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    .line 35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 154
    check-cast v4, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 56
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/NodeLocationHolder;->getNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 154
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_2
    if-ge v3, p0, :cond_5

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 59
    invoke-static {v1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_4
    invoke-static {v1, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public static synthetic findOneLayerOfSemanticsWrappersSortedByBounds$default(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;"
        }
    .end annotation

    .line 39
    :try_start_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 40
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Location:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 45
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method
