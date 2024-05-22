.class public final Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;


# instance fields
.field public final mKeepClearAreaGravityEnabled:Z

.field public mKeepClearAreasPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "persist.wm.debug.enable_pip_keep_clear_algorithm_gravity"

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreaGravityEnabled:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 17
    const v0, 0x7f070e84    # @dimen/pip_keep_clear_areas_padding '16.0dp'

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreasPadding:I

    .line 25
    return-void
    .line 27
.end method

.method public static tryOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 7
    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 22
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 26
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
    .line 32
.end method


# virtual methods
.method public final adjust(Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v0

    .line 20
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 26
    iget-boolean v2, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 29
    if-eqz v2, :cond_1

    .line 31
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget v3, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 35
    sub-int/2addr v2, v3

    .line 37
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 40
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_4

    .line 45
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 47
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 49
    if-gt p0, p1, :cond_2

    .line 51
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 53
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 55
    if-ge p2, v1, :cond_3

    .line 57
    :cond_2
    sub-int/2addr p1, p0

    .line 59
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 60
    :cond_3
    return-object v0

    .line 63
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 64
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 69
    move-result v4

    .line 72
    const/4 v5, 0x1

    .line 73
    xor-int/2addr v4, v5

    .line 74
    iget-boolean v6, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserMovedPip:Z

    .line 75
    if-nez v6, :cond_5

    .line 77
    iget-boolean v6, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 79
    if-nez v6, :cond_5

    .line 81
    move v4, v5

    .line 83
    :cond_5
    iget-boolean v6, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreaGravityEnabled:Z

    .line 84
    if-nez v6, :cond_6

    .line 86
    if-eqz v4, :cond_9

    .line 88
    :cond_6
    invoke-virtual {p2, v0, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 90
    move-result-object v4

    .line 93
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 94
    invoke-virtual {p2, v0, v4, v3}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 96
    move-result p2

    .line 99
    const/high16 v0, 0x3f000000    # 0.5f

    .line 100
    cmpl-float v0, p2, v0

    .line 102
    const/4 v3, 0x5

    .line 104
    if-ltz v0, :cond_7

    .line 105
    const/high16 v0, 0x40200000    # 2.5f

    .line 107
    cmpg-float p2, p2, v0

    .line 109
    if-gez p2, :cond_7

    .line 111
    move p2, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    const/4 p2, 0x3

    .line 115
    :goto_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 116
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 120
    move-result v5

    .line 123
    sub-int/2addr v4, v5

    .line 124
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 125
    if-ne p2, v3, :cond_8

    .line 128
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 132
    move-result v0

    .line 135
    sub-int/2addr p2, v0

    .line 136
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 137
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 139
    goto :goto_2

    .line 142
    :cond_8
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 143
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 145
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 147
    :cond_9
    :goto_2
    iget-object p2, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 150
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 152
    move-result-object p1

    .line 155
    invoke-virtual {p0, v2, p2, p1, v1}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 156
    move-result-object p0

    .line 159
    return-object p0
    .line 160
.end method

.method public final findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    check-cast p2, Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    move-object v0, p3

    .line 10
    check-cast v0, Landroid/util/ArraySet;

    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 22
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_1
    check-cast p3, Landroid/util/ArraySet;

    .line 34
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 36
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    .line 45
    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 47
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p1

    .line 53
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p3

    .line 57
    if-eqz p3, :cond_7

    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 63
    check-cast p3, Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    .line 66
    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 68
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreasPadding:I

    .line 71
    neg-int v1, v1

    .line 73
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 74
    invoke-static {p3, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 77
    move-result p3

    .line 80
    if-eqz p3, :cond_3

    .line 81
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 83
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 85
    sub-int/2addr p3, v1

    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {p2, v0, p4, v1, p3}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z

    .line 89
    move-result p3

    .line 92
    if-eqz p3, :cond_4

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 96
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 98
    sub-int/2addr p3, v2

    .line 100
    invoke-static {p2, v0, p4, p3, v1}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z

    .line 101
    move-result p3

    .line 104
    if-eqz p3, :cond_5

    .line 105
    goto :goto_0

    .line 107
    :cond_5
    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 110
    sub-int/2addr p3, v2

    .line 112
    invoke-static {p2, v0, p4, v1, p3}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z

    .line 113
    move-result p3

    .line 116
    if-eqz p3, :cond_6

    .line 117
    goto :goto_0

    .line 119
    :cond_6
    iget p3, v0, Landroid/graphics/Rect;->right:I

    .line 120
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 122
    sub-int/2addr p3, v2

    .line 124
    invoke-static {p2, v0, p4, p3, v1}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z

    .line 125
    goto :goto_0

    .line 128
    :cond_7
    return-object p2
    .line 129
.end method
