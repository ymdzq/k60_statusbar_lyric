.class public abstract Lcom/android/systemui/shared/hardware/InputManagerKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 2
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    move v1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;

    .line 19
    invoke-direct {v1, v3, v0}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 21
    move-object v0, v1

    .line 24
    :goto_1
    new-instance v1, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;

    .line 25
    invoke-direct {v1, p0}, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;-><init>(Landroid/hardware/input/InputManager;)V

    .line 27
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 30
    move-result-object p0

    .line 33
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 34
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 36
    :cond_2
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 39
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    check-cast p0, Landroid/view/InputDevice;

    .line 49
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    move v2, v3

    .line 63
    :cond_3
    return v2
    .line 64
.end method
