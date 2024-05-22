.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const/4 p0, 0x0

    .line 8
    const v0, 0x3dcccccd    # 0.1f

    .line 9
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 12
    move-result v0

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result v0

    .line 21
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 22
    const v0, 0x3f19999a    # 0.6f

    .line 24
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result p0

    .line 30
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result p0

    .line 34
    iput p0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 35
    const/4 p0, 0x0

    .line 37
    iput p0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 38
    return-void
    .line 40
.end method
