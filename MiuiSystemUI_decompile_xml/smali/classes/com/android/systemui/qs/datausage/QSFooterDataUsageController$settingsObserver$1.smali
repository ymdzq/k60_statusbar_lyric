.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1$onChange$1;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$settingsObserver$1$onChange$1;-><init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
    .line 14
.end method
