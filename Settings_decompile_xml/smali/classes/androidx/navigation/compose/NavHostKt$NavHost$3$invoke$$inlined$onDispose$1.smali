.class public final Landroidx/navigation/compose/NavHostKt$NavHost$3$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/compose/NavHostKt$NavHost$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 NavHost.kt\nandroidx/navigation/compose/NavHostKt$NavHost$3\n*L\n1#1,483:1\n114#2,2:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $navController$inlined:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$3$invoke$$inlined$onDispose$1;->$navController$inlined:Landroidx/navigation/NavHostController;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 484
    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$3$invoke$$inlined$onDispose$1;->$navController$inlined:Landroidx/navigation/NavHostController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    return-void
.end method
