.class Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onUpdate:Ljava/lang/Runnable;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$onUpdate:Ljava/lang/Runnable;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$onEnd:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$onEnd:Ljava/lang/Runnable;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$fgetmDestroyed(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 11
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$fgetmFolmeControl(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 13
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 17
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$fgetmTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->toTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 26
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 28
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$fgetmSurfaceControl(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Landroid/view/SurfaceControl;

    .line 30
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 34
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$fgetmTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 36
    move-result-object v0

    .line 39
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 47
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$mmergeWithNextDraw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/view/SurfaceControl$Transaction;)V

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;

    .line 52
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->-$$Nest$mdrawContent(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V

    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;->val$onUpdate:Ljava/lang/Runnable;

    .line 57
    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_1
    return-void
    .line 64
.end method
