.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public mEntryRemoved:Z

.field public mEntryRemovedByUser:Z

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

.field public mNotifRemovedByUserCallback:Ljava/lang/Runnable;

.field public mShadeEmptiedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    .line 12
    return-void
    .line 15
.end method
