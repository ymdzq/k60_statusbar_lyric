.class public final Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 NavHost.kt\nandroidx/navigation/compose/NavHostKt$NavHost$4$1$1\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,483:1\n166#2:484\n167#2,2:486\n169#2:489\n1855#3:485\n1856#3:488\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt$NavHost$4$1$1\n*L\n166#1:485\n166#1:488\n*E\n"
.end annotation


# instance fields
.field final synthetic $composeNavigator$inlined:Landroidx/navigation/compose/ComposeNavigator;

.field final synthetic $visibleEntries$delegate$inlined:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;->$visibleEntries$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;->$composeNavigator$inlined:Landroidx/navigation/compose/ComposeNavigator;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 484
    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;->$visibleEntries$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v0}, Landroidx/navigation/compose/NavHostKt;->access$NavHost$lambda$5(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 486
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$4$1$1$invoke$$inlined$onDispose$1;->$composeNavigator$inlined:Landroidx/navigation/compose/ComposeNavigator;

    invoke-virtual {v2, v1}, Landroidx/navigation/compose/ComposeNavigator;->onTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method
