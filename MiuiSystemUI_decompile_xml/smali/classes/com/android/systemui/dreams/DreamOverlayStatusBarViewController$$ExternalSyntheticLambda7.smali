.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mExtraStatusBarItems:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 18
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 20
    move-result-object p0

    .line 23
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda8;

    .line 24
    invoke-direct {v1}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda8;-><init>()V

    .line 26
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStatusBarView$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarView;)V

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    return-void
    .line 56
.end method
