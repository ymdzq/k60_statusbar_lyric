.class public final Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1\n*L\n1#1,483:1\n806#2,2:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_createChildTransitionInternal$inlined:Landroidx/compose/animation/core/Transition;

.field final synthetic $transition$inlined:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1$invoke$$inlined$onDispose$1;->$this_createChildTransitionInternal$inlined:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1$invoke$$inlined$onDispose$1;->$transition$inlined:Landroidx/compose/animation/core/Transition;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1$invoke$$inlined$onDispose$1;->$this_createChildTransitionInternal$inlined:Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1$invoke$$inlined$onDispose$1;->$transition$inlined:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/Transition;->removeTransition$animation_core_release(Landroidx/compose/animation/core/Transition;)Z

    return-void
.end method
