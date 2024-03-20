.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 7
    return p0
    .line 9
.end method

.method public final onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 20
    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    .line 24
    invoke-direct {v0}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 29
    :cond_1
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 31
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 35
    :try_start_0
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 41
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 46
    move-result v1

    .line 49
    float-to-int v1, v1

    .line 50
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 57
    if-nez v0, :cond_3

    .line 59
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    .line 61
    invoke-direct {v0}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    .line 63
    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 66
    :cond_3
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 68
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    .line 70
    monitor-enter v0

    .line 72
    :try_start_1
    monitor-exit v0

    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    throw p0

    .line 77
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 78
    move-result p0

    .line 81
    return p0
    .line 82
.end method
