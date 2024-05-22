.class public final Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;
.super Landroid/util/LruCache;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 2
    const/16 p1, 0x40

    .line 4
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    instance-of p1, p3, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    check-cast p3, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance p2, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V

    .line 16
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 19
    :cond_0
    return-void
    .line 22
.end method
