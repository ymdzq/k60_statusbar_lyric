.class public final synthetic Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Rect;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 9
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 12
    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 14
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    .line 16
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Rect;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl;

    .line 20
    const/4 v4, 0x0

    .line 22
    move-object v7, p1

    .line 23
    move-object v8, p0

    .line 24
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 25
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p0, v2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    .line 29
    return-void
.end method
