.class public final synthetic Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/TileServiceManager;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 7
    iput p3, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 4
    iget p0, p0, Lcom/android/systemui/qs/external/TileServiceManager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    iget-object v2, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    .line 8
    invoke-interface {v2, p0, v1}, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;->isTileAdded(ILandroid/content/ComponentName;)Z

    .line 10
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-interface {v2, p0, v1, v3}, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;->setTileAdded(ILandroid/content/ComponentName;Z)V

    .line 17
    iget-object p0, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 25
    new-instance v1, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;

    .line 27
    const/4 v2, 0x2

    .line 29
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    .line 30
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method
