.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mBubblesManagerOptional:Ljava/util/Optional;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

.field public final mInterceptedDismissalEntries:Ljava/util/Set;

.field public final mNotifCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

.field public mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public mOnEndDismissInterception:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubblesOptional:Ljava/util/Optional;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 37
    return-void
    .line 39
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 12
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mDismissInterceptor:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    .line 32
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 35
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mOnEndDismissInterception:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$1;

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 43
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "Interceptor "

    .line 61
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, " already added."

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0
    .line 81
.end method
