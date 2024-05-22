.class public final synthetic Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda1;->f$0:Z

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 4
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;->$r8$lambda$oxwSCeDVMD-2kGzRvNOtkl2l1jg(ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 6
    return-void
    .line 9
.end method
