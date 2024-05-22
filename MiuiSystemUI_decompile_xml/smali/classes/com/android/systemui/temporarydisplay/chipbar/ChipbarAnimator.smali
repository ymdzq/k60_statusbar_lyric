.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static forceDisplayView(Landroid/view/View;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Landroid/view/ViewGroup;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    move-object v0, p0

    .line 21
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 22
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    invoke-static {v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;->forceDisplayView(Landroid/view/View;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    return-void
    .line 40
.end method
