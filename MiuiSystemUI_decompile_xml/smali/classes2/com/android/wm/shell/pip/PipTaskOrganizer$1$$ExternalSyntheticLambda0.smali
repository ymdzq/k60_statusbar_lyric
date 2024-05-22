.class public final synthetic Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 12
    :cond_0
    return-void
    .line 14
.end method
