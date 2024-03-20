.class final Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavGraphBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic this$0:Lcom/android/settingslib/spa/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iput p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->invoke(Landroidx/navigation/NavGraphBuilder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/navigation/NavGraphBuilder;)V
    .locals 10

    const-string v1, "$this$NavHost"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "root"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 88
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$1;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v6, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v6}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v2, 0x7634bc88

    const/4 v9, 0x1

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    const-string v3, "pages"

    .line 89
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$2;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v6, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v6}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v2, 0x104a5cb1

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    const-string v3, "entries"

    .line 90
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$3;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v6, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v6}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$3;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v2, 0x33aa47d0

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    const-string/jumbo v3, "slices"

    .line 91
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$4;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v6, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v6}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$4;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v2, 0x570a32ef

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    const-string v3, "page/{pid}"

    const-string v1, "pid"

    .line 95
    sget-object v2, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$5;->INSTANCE:Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$5;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 97
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$6;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v6, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v6}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$6;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v2, 0x7a6a1e0e

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    const/4 v7, 0x4

    move-object v2, p1

    .line 92
    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    const-string v3, "entry/{eid}"

    const-string v1, "eid"

    .line 101
    sget-object v2, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$7;->INSTANCE:Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$7;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    .line 100
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 103
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$8;

    iget-object v2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget v0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;->$$dirty:I

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1$8;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v0, -0x6235f6d3

    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v2, p1

    .line 98
    invoke-static/range {v2 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    return-void
.end method
