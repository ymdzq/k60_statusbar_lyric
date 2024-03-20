.class public final Lcom/android/settingslib/spa/framework/compose/KeyboardsKt;
.super Ljava/lang/Object;
.source "Keyboards.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyboards.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Keyboards.kt\ncom/android/settingslib/spa/framework/compose/KeyboardsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,57:1\n36#2:58\n50#2:65\n49#2:66\n1114#3,6:59\n1114#3,6:67\n*S KotlinDebug\n*F\n+ 1 Keyboards.kt\ncom/android/settingslib/spa/framework/compose/KeyboardsKt\n*L\n36#1:58\n49#1:65\n49#1:66\n36#1:59,6\n49#1:67,6\n*E\n"
.end annotation


# direct methods
.method public static final hideKeyboardAction(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const v0, -0x3c12f419

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.framework.compose.hideKeyboardAction (Keyboards.kt:33)"

    .line 34
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 35
    :cond_0
    sget-object p1, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->INSTANCE:Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;

    sget v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->$stable:I

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object p1

    const v0, 0x44faf204

    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 1114
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 1115
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 36
    :cond_1
    new-instance v1, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$hideKeyboardAction$1$1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$hideKeyboardAction$1$1;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 1117
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 36
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final rememberLazyListStateAndHideKeyboardWhenStartScroll(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 3

    const v0, -0x1f9d529e

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.framework.compose.rememberLazyListStateAndHideKeyboardWhenStartScroll (Keyboards.kt:45)"

    .line 46
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 47
    invoke-static {v0, v0, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p1

    .line 48
    sget-object v0, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->INSTANCE:Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;

    sget v1, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->$stable:I

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/platform/LocalSoftwareKeyboardController;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-result-object v0

    const v1, 0x1e7b2b64

    .line 49
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1114
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    .line 1115
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    .line 49
    :cond_1
    new-instance v2, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v0, v1}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt$rememberLazyListStateAndHideKeyboardWhenStartScroll$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/coroutines/Continuation;)V

    .line 1117
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x40

    .line 49
    invoke-static {p1, v2, p0, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method
