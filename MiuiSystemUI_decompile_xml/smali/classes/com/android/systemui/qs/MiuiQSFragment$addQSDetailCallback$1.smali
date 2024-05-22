.class final Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/qs/MiuiQS$QSDetailCallback;

.field final synthetic this$0:Lcom/android/systemui/qs/MiuiQSFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSFragment;Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->$callback:Lcom/android/systemui/qs/MiuiQS$QSDetailCallback;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->$callback:Lcom/android/systemui/qs/MiuiQS$QSDetailCallback;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->$callback:Lcom/android/systemui/qs/MiuiQS$QSDetailCallback;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->$callback:Lcom/android/systemui/qs/MiuiQS$QSDetailCallback;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isShowingDetail()Z

    .line 27
    check-cast v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;

    .line 30
    iget-object p0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 34
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    return-object p0
    .line 39
.end method
