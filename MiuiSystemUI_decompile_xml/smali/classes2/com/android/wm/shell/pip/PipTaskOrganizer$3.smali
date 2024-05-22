.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$3;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldSyncPipTransactionWithMenu()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 10
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 12
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method
