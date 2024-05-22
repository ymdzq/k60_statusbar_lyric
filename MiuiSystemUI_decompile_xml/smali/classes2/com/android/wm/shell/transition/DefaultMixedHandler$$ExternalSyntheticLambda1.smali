.class public final synthetic Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/TransitionInfo;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 4
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 6
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 8
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 10
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->syncFreeformSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 16
    return-void
    .line 19
.end method
