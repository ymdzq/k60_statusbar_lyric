.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $begin:F

.field public final synthetic $end:F

.field public final synthetic $firstChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic $r8$classId:I

.field public final synthetic $summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;


# direct methods
.method public synthetic constructor <init>(FFLcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$begin:F

    .line 4
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$end:F

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$firstChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$r8$classId:I

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    move-result p1

    .line 20
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$begin:F

    .line 21
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$end:F

    .line 23
    invoke-static {v3, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 25
    move-result v0

    .line 28
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 29
    float-to-int v0, v0

    .line 31
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 35
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$firstChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 37
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 39
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 43
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getNotificationTopPadding()I

    .line 45
    move-result v4

    .line 48
    int-to-float v4, v4

    .line 49
    int-to-float v5, v2

    .line 50
    sub-float/2addr v5, p1

    .line 51
    mul-float/2addr v5, v4

    .line 52
    sub-float/2addr v3, v5

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 64
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    .line 74
    move-result v1

    .line 77
    sub-int/2addr v1, v2

    .line 78
    add-int/2addr v1, v2

    .line 79
    sub-int/2addr v0, v2

    .line 80
    if-le v1, v0, :cond_0

    .line 81
    move v1, v0

    .line 83
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 86
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 88
    check-cast v0, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 95
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getAnimatedBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 98
    move-result-object v2

    .line 101
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 112
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    return-void

    .line 120
    :goto_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/Float;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 127
    move-result p1

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$begin:F

    .line 131
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$end:F

    .line 133
    invoke-static {v3, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 135
    move-result v0

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 139
    float-to-int v0, v0

    .line 141
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 145
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$firstChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 153
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 155
    move-result v3

    .line 158
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 159
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getNotificationTopPadding()I

    .line 161
    move-result v4

    .line 164
    int-to-float v4, v4

    .line 165
    mul-float/2addr v4, p1

    .line 166
    sub-float/2addr v3, v4

    .line 167
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 176
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 178
    check-cast v0, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 182
    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 186
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    .line 188
    move-result v1

    .line 191
    sub-int/2addr v1, v2

    .line 192
    add-int/2addr v1, v2

    .line 193
    sub-int/2addr v0, v2

    .line 194
    if-le v1, v0, :cond_2

    .line 195
    move v1, v0

    .line 197
    :cond_2
    :goto_2
    if-lez v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 200
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 202
    check-cast v0, Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    move-result-object v0

    .line 209
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 210
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->getAnimatedBackground()Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 212
    move-result-object v0

    .line 215
    int-to-float v3, v2

    .line 216
    sub-float/2addr v3, p1

    .line 217
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 218
    add-int/lit8 v1, v1, -0x1

    .line 221
    goto :goto_2

    .line 223
    :cond_3
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 226
.end method
