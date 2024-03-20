.class public final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;
.super Ljava/lang/Object;
.source "AppInfoSettings.kt"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppInfoSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppInfoSettings.kt\ncom/android/settings/spa/app/appinfo/AppInfoSettingsProvider\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,167:1\n76#2:168\n474#3,4:169\n478#3,2:177\n482#3:183\n25#4:173\n25#4:184\n1114#5,3:174\n1117#5,3:180\n1114#5,6:185\n474#6:179\n*S KotlinDebug\n*F\n+ 1 AppInfoSettings.kt\ncom/android/settings/spa/app/appinfo/AppInfoSettingsProvider\n*L\n68#1:168\n69#1:169,4\n69#1:177,2\n69#1:183\n69#1:173\n70#1:184\n69#1:174,3\n69#1:180,3\n70#1:185,6\n69#1:179\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

.field private static final name:Ljava/lang/String;

.field private static final parameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    invoke-direct {v0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    const-string v0, "AppInfoSettings"

    .line 55
    sput-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->name:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    .line 58
    sget-object v1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$parameter$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$parameter$1;

    invoke-static {v0, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 59
    sget-object v2, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$parameter$2;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$parameter$2;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->parameter:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final startAppInfoSettings(Ljava/lang/String;ILandroidx/fragment/app/Fragment;II)V
    .locals 8

    const-string/jumbo v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "settings_enable_spa"

    .line 101
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object p2, Lcom/android/settings/spa/SpaActivity;->Companion:Lcom/android/settings/spa/SpaActivity$Companion;

    sget-object p3, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->getRoute(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/android/settings/spa/SpaActivity$Companion;->startSpaActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 106
    sget v2, Lcom/android/settings/R$string;->application_info_label:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 104
    invoke-static/range {v1 .. v7}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const v0, 0x345ca971

    .line 65
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settings.spa.app.appinfo.AppInfoSettingsProvider.Page (AppInfoSettings.kt:64)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "userId"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 76
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const v0, 0x2e20b340

    .line 69
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x1d58f75c

    .line 477
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v1, v6, :cond_1

    .line 474
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 479
    invoke-static {v1, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 478
    new-instance v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v6, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 1117
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v6

    .line 25
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 477
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 482
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1115
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 71
    new-instance v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, v0

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlinx/coroutines/CoroutineScope;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1117
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    check-cast v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/16 v1, 0x8

    .line 73
    invoke-static {v0, p2, v1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt;->access$AppInfoSettings(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/Composer;I)V

    .line 74
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->PackageRemoveDetector(Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider$Page$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;Landroid/os/Bundle;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    sget-object p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParameter()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->parameter:Ljava/util/List;

    return-object p0
.end method

.method public final getRoute(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final navigator(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x38345663

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settings.spa.app.appinfo.AppInfoSettingsProvider.navigator (AppInfoSettings.kt:77)"

    .line 78
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->toRoute(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p3, p1}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->navigator(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
