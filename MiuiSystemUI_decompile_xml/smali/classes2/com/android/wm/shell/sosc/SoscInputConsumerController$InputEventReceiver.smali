.class final Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mDoubleTapDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoscInputConsumerController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoscInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;->this$0:Lcom/android/wm/shell/sosc/SoscInputConsumerController;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 4
    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 8
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->-$$Nest$fgetmOnGestureListener(Lcom/android/wm/shell/sosc/SoscInputConsumerController;)Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 10
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    new-instance p2, Landroid/view/GestureDetector;

    .line 16
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoscInputConsumerController;->-$$Nest$fgetmOnGestureListener(Lcom/android/wm/shell/sosc/SoscInputConsumerController;)Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 18
    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 22
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 25
    :cond_0
    return-void
    .line 27
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoscInputConsumerController$InputEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    move-object v1, p1

    .line 10
    check-cast v1, Landroid/view/MotionEvent;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method
