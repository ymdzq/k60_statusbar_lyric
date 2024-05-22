.class public abstract Landroidx/customview/poolingcontainer/PoolingContainer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final callPoolingContainerOnRelease(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewKt;->getAllViews(Landroid/view/View;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

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
    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    const v1, 0x7f0a0716    # @id/pooling_container_listener_holder_tag

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 32
    if-nez v2, :cond_0

    .line 34
    new-instance v2, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 36
    invoke-direct {v2}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;-><init>()V

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 41
    :cond_0
    iget-object v0, v2, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 46
    move-result v1

    .line 49
    const/4 v2, -0x1

    .line 50
    if-lt v2, v1, :cond_1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 58
    const/4 p0, 0x0

    .line 61
    throw p0

    .line 62
    :cond_2
    return-void
.end method
