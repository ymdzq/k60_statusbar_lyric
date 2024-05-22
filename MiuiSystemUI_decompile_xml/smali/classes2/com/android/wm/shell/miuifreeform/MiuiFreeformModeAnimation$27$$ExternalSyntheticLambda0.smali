.class public final synthetic Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;

.field public final synthetic f$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;->$r8$lambda$PWys-fJL3-fVQ8RIGplwZ9ENluE(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 10
    return-void
    .line 13
.end method
