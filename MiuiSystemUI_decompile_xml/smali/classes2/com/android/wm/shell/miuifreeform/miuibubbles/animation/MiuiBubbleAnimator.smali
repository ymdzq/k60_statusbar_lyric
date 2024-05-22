.class public abstract Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ALPHA_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

.field public static final ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

.field public static final ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    fill-array-data v2, :array_0

    .line 10
    const/4 v3, -0x2

    .line 13
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v0

    .line 17
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 18
    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 20
    new-array v5, v1, [F

    .line 22
    fill-array-data v5, :array_1

    .line 24
    invoke-direct {v4, v3, v5}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 27
    const/4 v5, 0x0

    .line 30
    new-array v6, v5, [F

    .line 31
    invoke-virtual {v0, v2, v4, v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 33
    move-result-object v0

    .line 36
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 37
    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 39
    new-array v6, v1, [F

    .line 41
    fill-array-data v6, :array_2

    .line 43
    invoke-direct {v4, v3, v6}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 46
    new-array v5, v5, [F

    .line 49
    invoke-virtual {v0, v2, v4, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 55
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 57
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 59
    new-array v2, v1, [F

    .line 62
    fill-array-data v2, :array_3

    .line 64
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 67
    move-result-object v0

    .line 70
    sput-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

    .line 71
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 73
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 75
    new-array v1, v1, [F

    .line 78
    fill-array-data v1, :array_4

    .line 80
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 83
    move-result-object v0

    .line 86
    sput-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ALPHA_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 87
    return-void

    .line 89
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data

    .line 90
    :array_1
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f19999a    # 0.6f
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f19999a    # 0.6f
    .end array-data

    .line 106
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data

    .line 114
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
    .line 122
.end method

.method public static animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V
    .locals 4

    .line 1
    filled-new-array {p0}, [Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 10
    move-result-object p0

    .line 13
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 14
    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 16
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 23
    move-result-object v0

    .line 26
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 27
    float-to-double v2, p3

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    move-result-object p3

    .line 33
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 34
    float-to-double v1, p4

    .line 36
    invoke-virtual {p3, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 37
    move-result-object p3

    .line 40
    new-instance p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;

    .line 41
    invoke-direct {p4, p2, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;-><init>(Ljava/lang/Runnable;Lmiuix/animation/base/AnimConfig;)V

    .line 43
    filled-new-array {p4}, [Lmiuix/animation/listener/TransitionListener;

    .line 46
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 50
    move-result-object p1

    .line 53
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 54
    move-result-object p1

    .line 57
    invoke-interface {p0, p3, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 58
    return-void
    .line 61
.end method

.method public static animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "scale_background_"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "scale_background_width"

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getScaledWidth()I

    .line 26
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 33
    const-string v3, "scale_background_height"

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getScaledHeight()I

    .line 36
    move-result v4

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 43
    const-string v5, "scale_corner_radius"

    .line 44
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getBubbleCornerRadius()F

    .line 46
    move-result v6

    .line 49
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v6

    .line 53
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 58
    move-result-object v0

    .line 61
    const-string v1, "scale_background_width"

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 64
    move-result v2

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v2

    .line 71
    const-string v3, "scale_background_height"

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 74
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v4

    .line 81
    const-string v5, "scale_corner_radius"

    .line 82
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getFinalCornerRadius(Z)F

    .line 84
    move-result p1

    .line 87
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    move-result-object v6

    .line 91
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 92
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 94
    new-instance p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$1;

    .line 97
    invoke-direct {p2, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)V

    .line 99
    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 106
    move-result-object v7

    .line 109
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    .line 110
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 112
    const/4 p1, 0x2

    .line 115
    new-array p1, p1, [F

    .line 116
    fill-array-data p1, :array_0

    .line 118
    const/4 p2, -0x2

    .line 121
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 122
    move-result-object v8

    .line 125
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 129
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 130
    return-void

    .line 133
    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e4ccccd    # 0.2f
    .end array-data
    .line 134
.end method

.method public static resetEdgeAlpha(Landroid/view/View;)V
    .locals 2

    .line 1
    filled-new-array {p0}, [Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 10
    move-result-object p0

    .line 13
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v1

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 26
    return-void
    .line 29
.end method
