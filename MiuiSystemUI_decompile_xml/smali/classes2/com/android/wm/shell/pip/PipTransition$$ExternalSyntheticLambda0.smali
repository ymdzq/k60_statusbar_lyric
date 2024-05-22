.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic f$1:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 6
    invoke-interface {v0, p0}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 8
    return-void
    .line 11
.end method
