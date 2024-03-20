.class public final Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;
.super Landroidx/navigation/Navigator;
.source "AnimatedComposeNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "animatedComposable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Companion;,
        Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedComposeNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedComposeNavigator.kt\ncom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1855#2,2:81\n*S KotlinDebug\n*F\n+ 1 AnimatedComposeNavigator.kt\ncom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator\n*L\n47#1:81,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Companion;


# instance fields
.field private final isPop:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->Companion:Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->isPop:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->createDestination()Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;

    move-result-object p0

    return-object p0
.end method

.method public createDestination()Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;
    .locals 2

    .line 54
    new-instance v0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;

    sget-object v1, Lcom/android/settingslib/spa/framework/compose/ComposableSingletons$AnimatedComposeNavigatorKt;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/ComposableSingletons$AnimatedComposeNavigatorKt;

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/compose/ComposableSingletons$AnimatedComposeNavigatorKt;->getLambda-1$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Lkotlin/jvm/functions/Function4;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;-><init>(Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    return-object v0
.end method

.method public final getBackStack$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final isPop$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Landroidx/compose/runtime/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->isPop:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public final markTransitionComplete$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib(Landroidx/navigation/NavBackStackEntry;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    return-void
.end method

.method public navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string p2, "entries"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 48
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/navigation/NavigatorState;->pushWithTransition(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->isPop:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 1

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/navigation/NavigatorState;->popWithTransition(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator;->isPop:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
