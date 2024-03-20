.class final Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedNavHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentEntry:Landroidx/navigation/NavBackStackEntry;

.field final synthetic $this_AnimatedContent:Landroidx/compose/animation/AnimatedVisibilityScope;


# direct methods
.method constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/animation/AnimatedVisibilityScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->$currentEntry:Landroidx/navigation/NavBackStackEntry;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->$this_AnimatedContent:Landroidx/compose/animation/AnimatedVisibilityScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 229
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.framework.compose.AnimatedNavHost.<anonymous>.<anonymous> (AnimatedNavHost.kt:227)"

    const v2, -0x5005ad1b

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->$currentEntry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.android.settingslib.spa.framework.compose.AnimatedComposeNavigator.Destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;

    .line 230
    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/compose/AnimatedComposeNavigator$Destination;->getContent$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Lkotlin/jvm/functions/Function4;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->$this_AnimatedContent:Landroidx/compose/animation/AnimatedVisibilityScope;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavHostKt$AnimatedNavHost$9$1;->$currentEntry:Landroidx/navigation/NavBackStackEntry;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, p0, p1, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
