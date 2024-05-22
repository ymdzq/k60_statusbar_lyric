.class public final Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 2
    iget p2, p0, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentEndLocation:I

    .line 4
    if-eq p1, p2, :cond_0

    .line 6
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentStartLocation:I

    .line 8
    if-ne p1, v0, :cond_1

    .line 10
    :cond_0
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentStartLocation:I

    .line 12
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaViewController;->currentTransitionProgress:F

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/media/controls/ui/MediaViewController;->setCurrentState(FIIZ)V

    .line 17
    :cond_1
    return-void
    .line 20
.end method
