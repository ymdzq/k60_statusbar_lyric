.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $completion:Lkotlinx/coroutines/CompletableDeferred;

.field public final synthetic $intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Lkotlinx/coroutines/CompletableDeferredImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$intent:Landroid/content/Intent;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$bundle:Landroid/os/Bundle;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/screenshot/ICrossProfileService;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$intent:Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$bundle:Landroid/os/Bundle;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/screenshot/ICrossProfileService;->launchIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    .line 11
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_ALREADY:Lkotlinx/coroutines/internal/Symbol;

    .line 25
    if-ne v0, v1, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    .line 30
    if-ne v0, v1, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_RETRY:Lkotlinx/coroutines/internal/Symbol;

    .line 35
    if-eq v0, v1, :cond_0

    .line 37
    :goto_0
    return-void
    .line 39
.end method
