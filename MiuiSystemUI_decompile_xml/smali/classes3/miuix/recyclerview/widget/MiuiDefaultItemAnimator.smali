.class public final Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.super Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sAttachedListener:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

.field public static final sSpeedConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    .line 2
    invoke-direct {v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sAttachedListener:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    .line 7
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 11
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [F

    .line 15
    fill-array-data v1, :array_0

    .line 17
    const/4 v2, -0x2

    .line 20
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 25
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    .line 34
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
    .line 38
.end method


# virtual methods
.method public final animateChangeImpl(Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    :goto_0
    iget-object v3, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    if-eqz v3, :cond_1

    .line 13
    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    :cond_1
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 17
    sget-object v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sSpeedConfig:Lmiuix/animation/base/AnimConfig;

    .line 19
    const/4 v6, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sAttachedListener:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    .line 27
    invoke-virtual {v2, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 29
    filled-new-array {v2}, [Landroid/view/View;

    .line 32
    move-result-object v7

    .line 35
    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 36
    move-result-object v7

    .line 39
    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object v7

    .line 43
    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 44
    iget v9, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->toX:I

    .line 46
    iget v10, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->fromX:I

    .line 48
    sub-int/2addr v9, v10

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v10

    .line 54
    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 55
    iget v12, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->toY:I

    .line 57
    iget p1, p1, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator$ChangeInfo;->fromY:I

    .line 59
    sub-int/2addr v12, p1

    .line 61
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 65
    filled-new-array {v8, v10, v11, p1, v5}, [Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 69
    invoke-interface {v7, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 70
    filled-new-array {v2}, [Landroid/view/View;

    .line 73
    move-result-object p1

    .line 76
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 77
    move-result-object p1

    .line 80
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 81
    move-result-object p1

    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v7

    .line 88
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v9

    .line 92
    filled-new-array {v8, v7, v11, v9}, [Ljava/lang/Object;

    .line 93
    move-result-object v7

    .line 96
    invoke-interface {p1, v7}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    .line 97
    move-result-wide v7

    .line 100
    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;

    .line 101
    invoke-direct {p1, p0, v2, v0, v6}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 103
    invoke-virtual {v2, p1, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_2
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    filled-new-array {v1}, [Landroid/view/View;

    .line 114
    move-result-object p1

    .line 117
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 118
    move-result-object p1

    .line 121
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 122
    move-result-object p1

    .line 125
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v4

    .line 131
    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v8

    .line 137
    filled-new-array {v0, v4, v7, v8, v5}, [Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 141
    invoke-interface {p1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 142
    filled-new-array {v1}, [Landroid/view/View;

    .line 145
    move-result-object p1

    .line 148
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 149
    move-result-object p1

    .line 152
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 153
    move-result-object p1

    .line 156
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v4

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v5

    .line 164
    filled-new-array {v0, v4, v7, v5}, [Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 168
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->predictDuration([Ljava/lang/Object;)J

    .line 169
    move-result-wide v4

    .line 172
    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;

    .line 173
    const/4 v0, 0x1

    .line 175
    invoke-direct {p1, p0, v2, v3, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 176
    invoke-virtual {v1, p1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    :cond_3
    return-void
    .line 182
.end method

.method public final getMoveDuration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x12c

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getRemoveDuration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x12c

    .line 2
    return-wide v0
    .line 4
.end method

.method public final resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    filled-new-array {p0}, [Landroid/view/View;

    .line 6
    move-result-object p1

    .line 9
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 14
    move-result-object p1

    .line 17
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 18
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 20
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 22
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 46
    :cond_0
    return-void
    .line 49
.end method
