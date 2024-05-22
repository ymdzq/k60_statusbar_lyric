.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

.field public final synthetic f$1:Landroid/window/TransitionInfo;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/window/TransitionInfo;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl$Transaction;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/window/TransitionInfo;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl$Transaction;

    .line 8
    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->$r8$lambda$fuQt2OQJ0aQHTB2Fw6zPxr08XvE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    return-void
    .line 13
.end method
