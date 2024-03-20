.class final Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity;->MainContent(Landroidx/compose/runtime/Composer;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugActivity.kt\ncom/android/settingslib/spa/debug/DebugActivity$MainContent$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,253:1\n36#2:254\n1114#3,6:255\n*S KotlinDebug\n*F\n+ 1 DebugActivity.kt\ncom/android/settingslib/spa/debug/DebugActivity$MainContent$1\n*L\n87#1:254\n87#1:255,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic this$0:Lcom/android/settingslib/spa/debug/DebugActivity;


# direct methods
.method constructor <init>(Landroidx/navigation/NavHostController;Lcom/android/settingslib/spa/debug/DebugActivity;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->$navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iput p3, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.debug.DebugActivity.MainContent.<anonymous> (DebugActivity.kt:85)"

    const v2, 0xc9886d

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->$navController:Landroidx/navigation/NavHostController;

    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget p0, p0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;->$$dirty:I

    const v0, 0x44faf204

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    .line 1115
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 87
    :cond_3
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;

    invoke-direct {v1, p2, p0}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1$1$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    .line 1117
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x38

    const/16 v10, 0xc

    move-object v8, p1

    .line 87
    invoke-static/range {v3 .. v10}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
