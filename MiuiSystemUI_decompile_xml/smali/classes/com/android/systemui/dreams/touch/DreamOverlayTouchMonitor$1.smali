.class Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDestroy$1()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->stopMonitoring(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onPause$1()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->stopMonitoring(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onResume$1()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->stopMonitoring(Z)V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mInputSessionFactory:Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;

    .line 8
    const-string v2, "dreamOverlay"

    .line 10
    iget-object v3, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mInputEventListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2;

    .line 12
    iget-object v4, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mOnGestureListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;

    .line 14
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;->create(Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Z)Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent;->getInputSession()Lcom/android/systemui/dreams/touch/InputSession;

    .line 20
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mCurrentInputSession:Lcom/android/systemui/dreams/touch/InputSession;

    .line 24
    return-void
    .line 26
.end method
