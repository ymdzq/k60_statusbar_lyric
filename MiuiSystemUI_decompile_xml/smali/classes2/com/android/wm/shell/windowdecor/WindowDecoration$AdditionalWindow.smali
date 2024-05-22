.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mTransactionSupplier:Ljava/util/function/Supplier;

.field public mWindowSurface:Landroid/view/SurfaceControl;

.field public mWindowViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final releaseView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 39
    :cond_2
    return-void
    .line 42
.end method
