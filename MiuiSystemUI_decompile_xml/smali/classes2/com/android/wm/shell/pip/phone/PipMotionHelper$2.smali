.class public final Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;
.super Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 2
    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getHeight(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 4
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
    .line 9
.end method

.method public final getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    const/4 v0, 0x0

    .line 6
    aput p0, p2, v0

    .line 7
    const/4 p0, 0x1

    .line 9
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 10
    aput p1, p2, p0

    .line 12
    return-void
    .line 14
.end method

.method public final getWidth(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
    .line 9
.end method
