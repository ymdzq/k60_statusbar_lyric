.class public final Lcom/android/settingslib/spa/slice/presenter/DemoKt;
.super Ljava/lang/Object;
.source "Demo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDemo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Demo.kt\ncom/android/settingslib/spa/slice/presenter/DemoKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,48:1\n76#2:49\n76#2:50\n25#3:51\n1114#4,6:52\n*S KotlinDebug\n*F\n+ 1 Demo.kt\ncom/android/settingslib/spa/slice/presenter/DemoKt\n*L\n31#1:49\n32#1:50\n33#1:51\n33#1:52,6\n*E\n"
.end annotation


# direct methods
.method public static final SliceDemo(Landroid/net/Uri;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string/jumbo v0, "sliceUri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x172c19ea

    .line 30
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.slice.presenter.SliceDemo (Demo.kt:29)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 31
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/Context;

    .line 32
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 76
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    move-object v8, v1

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    const v1, -0x1d58f75c

    .line 33
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 34
    invoke-static {v0, p0}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 1117
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const-string v0, "remember {\n        Slice\u2026(context, sliceUri)\n    }"

    .line 33
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/LiveData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object v5, p1

    .line 37
    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/DividerKt;->Divider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 38
    sget-object v1, Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$1;->INSTANCE:Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$1;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$2;

    invoke-direct {v3, v0, v8}, Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$2;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/slice/presenter/DemoKt$SliceDemo$3;-><init>(Landroid/net/Uri;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method
