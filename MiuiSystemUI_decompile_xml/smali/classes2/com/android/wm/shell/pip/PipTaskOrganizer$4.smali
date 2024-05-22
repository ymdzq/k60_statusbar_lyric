.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final synthetic val$callback:Ljava/lang/Runnable;

.field public final synthetic val$surface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$surface:Landroid/view/SurfaceControl;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$callback:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$surface:Landroid/view/SurfaceControl;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;->val$callback:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method
