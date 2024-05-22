.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    invoke-static {v1, v2, v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->$r8$lambda$9RUmZ4SDJyc_XuN50EW2jQxhpp8(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 10
    return-void
    .line 13
.end method
