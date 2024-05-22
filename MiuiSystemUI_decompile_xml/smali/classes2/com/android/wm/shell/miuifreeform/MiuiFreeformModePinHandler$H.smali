.class final Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final HIDE_PIN_FLOATING_WINDOW_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler$H;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler$H;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->-$$Nest$mhideTask(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method
