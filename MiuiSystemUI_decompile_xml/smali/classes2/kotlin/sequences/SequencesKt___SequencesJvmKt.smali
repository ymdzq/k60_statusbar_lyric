.class public abstract Lkotlin/sequences/SequencesKt___SequencesJvmKt;
.super Lkotlin/sequences/SequencesKt__SequencesJVMKt;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;

    .line 2
    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/util/Iterator;)V

    .line 4
    instance-of p0, v0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 12
    invoke-direct {p0, v0}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;)V

    .line 14
    move-object v0, p0

    .line 17
    :goto_0
    return-object v0
    .line 18
.end method

.method public static final varargs sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-eqz v0, :cond_1

    .line 8
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 10
    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 13
    move-result-object p0

    .line 16
    :goto_1
    return-object p0
    .line 17
.end method
