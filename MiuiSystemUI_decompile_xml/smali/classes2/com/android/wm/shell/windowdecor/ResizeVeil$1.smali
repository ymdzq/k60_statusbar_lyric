.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 4
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 19
    return-void
    .line 22
.end method
