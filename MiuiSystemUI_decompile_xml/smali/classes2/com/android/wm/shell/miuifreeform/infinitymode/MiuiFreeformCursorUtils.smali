.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CTRL_TYPE_BOTTOM:I = 0x8

.field public static final CTRL_TYPE_CAPTION_HANDLE_SHOW:I = 0x20

.field public static final CTRL_TYPE_CAPTION_HANDLE_TRIGGER:I = 0x10

.field public static final CTRL_TYPE_LEFT:I = 0x1

.field public static final CTRL_TYPE_RIGHT:I = 0x2

.field public static final CTRL_TYPE_TOP:I = 0x4

.field public static final CTRL_TYPE_UNDEFINED:I = -0x1

.field public static final POSITION_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_BOTTOM:I = 0x2

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_TOP:I = 0x0

.field public static final POSITION_TOP_CAPTION_HANDLE_SHOW:I = 0x5

.field public static final POSITION_TOP_CAPTION_HANDLE_TRIGGER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformCursorUtils"

.field private static mCursorType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCornersCtrlType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 17
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    const/16 p0, 0x10

    .line 31
    return p0

    .line 33
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipShowRegion(Landroid/graphics/Rect;III)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    const/16 p0, 0x20

    .line 40
    return p0

    .line 42
    :cond_2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionRegion(Landroid/graphics/Rect;III)Z

    .line 43
    move-result p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    const/4 p0, 0x4

    .line 49
    return p0

    .line 50
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinLeftResizeRegion(Landroid/graphics/Rect;II)Z

    .line 51
    move-result p3

    .line 54
    if-eqz p3, :cond_4

    .line 55
    const/16 p0, 0x9

    .line 57
    return p0

    .line 59
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinRightResizeRegion(Landroid/graphics/Rect;II)Z

    .line 60
    move-result p0

    .line 63
    if-eqz p0, :cond_5

    .line 64
    const/16 p0, 0xa

    .line 66
    return p0

    .line 68
    :cond_5
    const/4 p0, -0x1

    .line 69
    return p0
    .line 70
.end method

.method public static getCursorType()I
    .locals 1

    .line 1
    sget v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 2
    return v0
    .line 4
.end method

.method public static getMousePosition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledAnimatingBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 17
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipRegion(Landroid/graphics/Rect;III)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    const/4 p0, 0x4

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinTopCaptionTipShowRegion(Landroid/graphics/Rect;III)Z

    .line 33
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    const/4 p0, 0x5

    .line 39
    return p0

    .line 40
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinLeftResizeRegion(Landroid/graphics/Rect;II)Z

    .line 41
    move-result p3

    .line 44
    if-eqz p3, :cond_3

    .line 45
    const/4 p0, 0x2

    .line 47
    return p0

    .line 48
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isWithinRightResizeRegion(Landroid/graphics/Rect;II)Z

    .line 49
    move-result p0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    const/4 p0, 0x3

    .line 55
    return p0

    .line 56
    :cond_4
    const/4 p0, -0x1

    .line 57
    return p0
    .line 58
.end method

.method public static setCursorType(I)V
    .locals 0

    .line 1
    sput p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 2
    return-void
    .line 4
.end method

.method public static setmCursorType(I)V
    .locals 0

    .line 1
    sput p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 2
    return-void
    .line 4
.end method

.method public static updateCursorType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->calculateCornersCtrlType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    sput p1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 7
    const/4 p2, 0x4

    .line 9
    if-eq p0, p2, :cond_2

    .line 10
    const/4 p2, 0x5

    .line 12
    if-eq p0, p2, :cond_1

    .line 13
    const/4 p2, 0x6

    .line 15
    if-eq p0, p2, :cond_0

    .line 16
    const/16 p2, 0x9

    .line 18
    if-eq p0, p2, :cond_0

    .line 20
    const/16 p2, 0xa

    .line 22
    if-eq p0, p2, :cond_1

    .line 24
    const/16 p2, 0x10

    .line 26
    if-eq p0, p2, :cond_2

    .line 28
    const/16 p2, 0x20

    .line 30
    if-eq p0, p2, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/16 p0, 0xbbf

    .line 35
    sput p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/16 p0, 0xbbe

    .line 40
    sput p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    sput p1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 45
    :goto_0
    sget p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 47
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->setmCursorType(I)V

    .line 49
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 52
    move-result-object p0

    .line 55
    sget p1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->mCursorType:I

    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setMagicPointerIconType(I)V

    .line 58
    return-void
    .line 61
.end method
