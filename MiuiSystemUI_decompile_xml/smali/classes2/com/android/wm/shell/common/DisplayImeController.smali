.class public final Lcom/android/wm/shell/common/DisplayImeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mImePerDisplay:Landroid/util/SparseArray;

.field public final mPositionProcessors:Ljava/util/ArrayList;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    const v3, 0x3ecccccd    # 0.4f

    .line 9
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    sput-object v0, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    .line 19
    iput-object p3, p0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 21
    iput-object p4, p0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 23
    iput-object p5, p0, Lcom/android/wm/shell/common/DisplayImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    new-instance p1, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayImeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayImeController;)V

    .line 29
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 32
    return-void
    .line 35
.end method


# virtual methods
.method public final addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
    .line 24
.end method

.method public final isImeShowing(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 8
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 14
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 18
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 34
    :cond_1
    return p1
    .line 35
.end method

.method public final onDisplayAdded(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 6
    move-result-object v1

    .line 9
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;-><init>(Lcom/android/wm/shell/common/DisplayImeController;II)V

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 15
    iget v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    return-void
    .line 27
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 8
    if-nez p2, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 15
    move-result-object v0

    .line 18
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 19
    iget v1, p2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    .line 21
    if-eq v0, v1, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController;->isImeShowing(I)Z

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    const/4 p0, 0x0

    .line 31
    const/4 p1, 0x0

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p2, v0, p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 15
    iget v2, v0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    return-void
    .line 25
.end method
