.class public final Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt;
.super Ljava/lang/Object;
.source "InteractAcrossProfilesDetailsPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteractAcrossProfilesDetailsPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractAcrossProfilesDetailsPreference.kt\ncom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,76:1\n76#2:77\n25#3:78\n1114#4,6:79\n*S KotlinDebug\n*F\n+ 1 InteractAcrossProfilesDetailsPreference.kt\ncom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt\n*L\n40#1:77\n41#1:78\n41#1:79,6\n*E\n"
.end annotation


# direct methods
.method public static final InteractAcrossProfilesDetailsPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x78ae13fd

    .line 39
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settings.spa.app.appinfo.InteractAcrossProfilesDetailsPreference (InteractAcrossProfilesDetailsPreference.kt:38)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 40
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/Context;

    const v1, -0x1d58f75c

    .line 41
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 41
    new-instance v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 1117
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 41
    move-object v0, v1

    check-cast v0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;->isAvailableFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x38

    const/16 v8, 0xe

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

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
    new-instance v0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$1;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void

    .line 44
    :cond_4
    new-instance v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$3;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method
