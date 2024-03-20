.class public final Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p0

    .line 5
    const-class v0, Lcom/android/keyguard/KeyguardMoveRightController;

    .line 6
    const/4 v1, 0x1

    .line 8
    if-eqz p0, :cond_2

    .line 9
    if-eq p0, v1, :cond_1

    .line 11
    const/4 v2, 0x2

    .line 13
    if-eq p0, v2, :cond_0

    .line 14
    const/4 v2, 0x3

    .line 16
    if-eq p0, v2, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/keyguard/KeyguardMoveRightController;

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 30
    move-result p2

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchMove(FF)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Landroid/view/ViewGroup;

    .line 42
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/keyguard/KeyguardMoveRightController;

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 54
    move-result p1

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    move-result p2

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchUp(FF)V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/keyguard/KeyguardMoveRightController;

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 81
    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 85
    move-result p2

    .line 88
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchDown(FFZ)V

    .line 89
    :goto_0
    return v1
    .line 92
.end method
