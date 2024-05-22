.class Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    .line 2
    invoke-static {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->-$$Nest$monInputEvent(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Landroid/view/InputEvent;)V

    .line 4
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 8
    return-void
    .line 11
.end method
