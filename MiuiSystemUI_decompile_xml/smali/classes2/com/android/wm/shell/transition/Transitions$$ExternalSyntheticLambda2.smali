.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/Transitions;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 8
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 10
    return-void
    .line 13
.end method
