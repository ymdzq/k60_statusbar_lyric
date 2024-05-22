.class public final Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;
.super Landroid/view/BatchedInputEventReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)V

    .line 4
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 8
    return-void
    .line 11
.end method
