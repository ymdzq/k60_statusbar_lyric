.class final Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;
.super Ljava/lang/Object;
.source "AppSettingsPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSettingsPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSettingsPreference.kt\ncom/android/settings/spa/app/appinfo/AppSettingsPresenter\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,94:1\n47#2:95\n49#2:99\n50#3:96\n55#3:98\n106#4:97\n*S KotlinDebug\n*F\n+ 1 AppSettingsPreference.kt\ncom/android/settings/spa/app/appinfo/AppSettingsPresenter\n*L\n72#1:95\n72#1:99\n72#1:96\n72#1:98\n72#1:97\n*E\n"
.end annotation


# instance fields
.field private final app:Landroid/content/pm/ApplicationInfo;

.field private final context:Landroid/content/Context;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final intentFlow:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isAvailableFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->app:Landroid/content/pm/ApplicationInfo;

    .line 64
    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->packageManager:Landroid/content/pm/PackageManager;

    .line 68
    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$intentFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$intentFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 70
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->intentFlow:Lkotlinx/coroutines/flow/SharedFlow;

    .line 106
    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 72
    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->isAvailableFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getApp$p(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->app:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static final synthetic access$getIntentFlow$p(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;)Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->intentFlow:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public static final synthetic access$getPackageManager$p(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->packageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static final synthetic access$startActivity(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->startActivity(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method private final startActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3f9

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final isAvailableFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->isAvailableFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final startActivity()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$startActivity$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$startActivity$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
