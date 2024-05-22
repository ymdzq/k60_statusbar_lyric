.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_ABSOLUTE:I = 0x2

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_CLEAR:I = 0x0

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_DEFAULT:I = 0x1

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_PADDING:I = 0x4

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_RELATIVE:I = 0x1008


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/PropertyStyle;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 13
    move-result-object p0

    .line 16
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 17
    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 19
    double-to-int p1, v0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 24
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method private static getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lmiuix/animation/ViewTarget;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
    .line 14
.end method

.method private static isInvalid(Landroid/view/View;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    :goto_0
    return p0
    .line 7
.end method

.method public static start(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 13
    iget p1, p1, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 15
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 17
    move-result-object v0

    .line 20
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    instance-of v1, p0, Ljava/lang/Float;

    .line 27
    if-nez v1, :cond_1

    .line 29
    instance-of v1, p0, Ljava/lang/Integer;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    :cond_1
    check-cast p0, Ljava/lang/Float;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->setHoverCorner(F)V

    .line 41
    :cond_2
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    .line 44
    move-result p0

    .line 47
    const/4 v1, -0x1

    .line 48
    if-nez p0, :cond_3

    .line 49
    if-ne p1, v1, :cond_3

    .line 51
    const/4 p1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-ne p1, v1, :cond_4

    .line 55
    const/4 p1, 0x0

    .line 57
    :cond_4
    :goto_0
    and-int/lit8 p0, p1, 0x3

    .line 58
    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(I)V

    .line 60
    return-void
    .line 63
.end method
