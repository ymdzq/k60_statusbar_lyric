.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    iput-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$4:Landroid/window/WindowContainerTransaction;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;->f$4:Landroid/window/WindowContainerTransaction;

    .line 10
    invoke-static {v1, v2, p0, v0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->$r8$lambda$mbmEsJi0HcxOYnZmxz2axmRzi9c(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 12
    return-void
    .line 15
.end method
