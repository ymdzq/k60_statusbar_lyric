.class Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

.field final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;->val$onEnd:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;->val$onEnd:Ljava/lang/Runnable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$mscheduleDraw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V

    .line 4
    return-void
    .line 7
.end method
