.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/transition/Transitions;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$1:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/transition/Transitions;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 12
    return-void

    .line 15
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
