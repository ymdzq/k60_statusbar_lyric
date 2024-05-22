.class public final Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 6
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    .line 20
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 22
    const p0, 0x7fffffff

    .line 25
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final surfaceDestroyed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
