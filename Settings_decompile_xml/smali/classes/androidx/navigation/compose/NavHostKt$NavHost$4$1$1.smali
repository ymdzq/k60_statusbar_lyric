.class final Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/compose/NavHostKt$NavHost$4;->invoke(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt$NavHost$4$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,185:1\n1855#2,2:186\n62#3,5:188\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt$NavHost$4$1$1\n*L\n160#1:186,2\n165#1:188,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

.field final synthetic $initialCrossfade$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $visibleEntries$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;",
            "Landroidx/navigation/compose/ComposeNavigator;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$initialCrossfade$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$initialCrossfade$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/navigation/compose/NavHostKt;->access$NavHost$lambda$7(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Landroidx/navigation/compose/NavHostKt;->access$NavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 161
    invoke-virtual {v0, v1}, Landroidx/navigation/compose/ComposeNavigator;->onTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$initialCrossfade$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/navigation/compose/NavHostKt;->access$NavHost$lambda$8(Landroidx/compose/runtime/MutableState;Z)V

    .line 165
    :cond_1
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    .line 62
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
