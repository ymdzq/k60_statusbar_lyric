.class public Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContent:Landroid/widget/FrameLayout;

.field public mContentAnimatorSet:Landroid/animation/AnimatorSet;

.field public mContentRemoteViews:Landroid/widget/FrameLayout;

.field public mContentText:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

.field public mDarkColor:I

.field public mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

.field public mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

.field public mIconAnimatorSet:Landroid/animation/AnimatorSet;

.field public mIconWidth:I

.field public mIsLight:Z

.field public mLastClickTime:J

.field public mLightColor:I

.field public final mLocations:[Landroid/graphics/Rect;

.field public mMinWidth:I

.field public final mRect:Landroid/graphics/Rect;

.field public mShouldPerformClick:Z

.field public mStartX:F

.field public mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLocations:[Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/graphics/Rect;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLocations:[Landroid/graphics/Rect;

    .line 8
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/graphics/Rect;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLocations:[Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFocusedNotifViewRect()Landroid/graphics/Rect;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 8
    move-result v0

    .line 11
    const-string v1, "FocusedNotifPromptView"

    .line 12
    if-ltz v0, :cond_0

    .line 14
    const/4 v2, 0x3

    .line 16
    if-le v0, v2, :cond_1

    .line 17
    :cond_0
    const-string v2, "getFocusedNotifViewRect: unknown rotation:"

    .line 19
    invoke-static {v2, v0, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 25
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 27
    move-result v2

    .line 30
    const-string v3, ", rotation="

    .line 31
    const-string v4, "getFocusedNotifViewRect: rect="

    .line 33
    if-eqz v2, :cond_3

    .line 35
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLocations:[Landroid/graphics/Rect;

    .line 37
    aget-object v2, v2, v0

    .line 39
    if-nez v2, :cond_2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v2

    .line 65
    :cond_3
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    .line 66
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 68
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 71
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 73
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    .line 76
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 80
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 83
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationX()F

    .line 85
    move-result v5

    .line 88
    float-to-int v5, v5

    .line 89
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 90
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTranslationY()F

    .line 92
    move-result v6

    .line 95
    float-to-int v6, v6

    .line 96
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 97
    sub-int/2addr v7, v5

    .line 99
    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 100
    iget v8, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconWidth:I

    .line 102
    sub-int/2addr v7, v8

    .line 104
    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 105
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 107
    sub-int/2addr v7, v6

    .line 109
    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 110
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 112
    sub-int/2addr v7, v6

    .line 114
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 115
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    .line 117
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 119
    sub-int/2addr v8, v5

    .line 121
    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 122
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 124
    sub-int/2addr v8, v5

    .line 126
    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 127
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 129
    sub-int/2addr v8, v6

    .line 131
    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 132
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 134
    sub-int/2addr v8, v6

    .line 136
    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 137
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLocations:[Landroid/graphics/Rect;

    .line 139
    aput-object v2, v7, v0

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v4, ", mRect="

    .line 151
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mRect:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string p0, ", translationX="

    .line 161
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string p0, ", translationY="

    .line 169
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p0

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p0, Landroid/graphics/Rect;

    .line 190
    invoke-direct {p0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 192
    return-object p0
    .line 195
.end method

.method public final initAnimatorCore(Landroid/animation/AnimatorSet;Z)Landroid/animation/AnimatorSet;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 4
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;ZI)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    const/4 v0, 0x2

    .line 18
    new-array v2, v0, [F

    .line 19
    fill-array-data v2, :array_0

    .line 21
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 24
    move-result-object v2

    .line 27
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 28
    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 30
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    const-wide/16 v3, 0x190

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    new-instance v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda1;

    .line 41
    invoke-direct {v5, p0, p2, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;ZI)V

    .line 43
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    new-instance v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;

    .line 49
    const/4 v5, 0x1

    .line 51
    invoke-direct {v1, p0, p2, v5}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;ZI)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    new-array v0, v0, [F

    .line 58
    fill-array-data v0, :array_1

    .line 60
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 63
    move-result-object v0

    .line 66
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 67
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 69
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    new-instance v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda1;

    .line 78
    invoke-direct {v1, p0, p2, v5}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;ZI)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 90
    :cond_0
    return-object p1

    .line 93
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 102
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 11
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    cmpg-float p1, p2, p1

    .line 3
    const/4 p2, 0x1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-gtz p1, :cond_0

    .line 7
    move p1, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, p4

    .line 11
    :goto_0
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIsLight:Z

    .line 12
    if-eq p5, p1, :cond_1

    .line 14
    move p5, p2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move p5, p4

    .line 18
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIsLight:Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 21
    if-eqz v0, :cond_3

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 25
    if-nez v0, :cond_2

    .line 27
    goto :goto_2

    .line 29
    :cond_2
    move p2, p4

    .line 30
    :cond_3
    :goto_2
    if-eqz p6, :cond_4

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    goto :goto_4

    .line 38
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 39
    if-eqz p1, :cond_5

    .line 41
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLightColor:I

    .line 43
    goto :goto_3

    .line 45
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mDarkColor:I

    .line 46
    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :goto_4
    if-nez p2, :cond_6

    .line 51
    if-eqz p5, :cond_6

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->updateRemoteViews()V

    .line 55
    :cond_6
    return-void
    .line 58
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 11
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0377    # @id/focused_notif_icon

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->setVisibilityChangedListener(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView$OnVisibilityChangedListener;)V

    .line 21
    const v0, 0x7f0a0374    # @id/focused_notif_content

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/FrameLayout;

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    .line 33
    const v0, 0x7f0a0376    # @id/focused_notif_content_text

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a0375    # @id/focused_notif_content_remote

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/FrameLayout;

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    const v1, 0x7f06012d    # @color/focus_notif_prompt_light '#e6ffffff'

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 64
    move-result v0

    .line 67
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mLightColor:I

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v0

    .line 73
    const v1, 0x7f06012c    # @color/focus_notif_prompt_dark '#bf000000'

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 77
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mDarkColor:I

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v0

    .line 86
    const v1, 0x7f07034e    # @dimen/focused_notif_view_min_width '100.0dp'

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v0

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mMinWidth:I

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v0

    .line 99
    const v1, 0x7f07034d    # @dimen/focused_notif_icon_size '20.0dp'

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    move-result v0

    .line 106
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconWidth:I

    .line 107
    return-void
    .line 109
.end method

.method public setController(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    return-void
    .line 4
.end method

.method public setData(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 10
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 12
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 36
    if-nez v3, :cond_0

    .line 38
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 40
    if-nez v3, :cond_0

    .line 42
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 44
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 46
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    move v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    if-ne v0, p1, :cond_1

    .line 56
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v0, v2

    .line 69
    :goto_0
    xor-int/2addr v0, v1

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 71
    if-eqz v3, :cond_3

    .line 73
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsAnimating:Z

    .line 75
    if-eqz v3, :cond_3

    .line 77
    move v3, v1

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move v3, v2

    .line 81
    :goto_2
    if-eqz v0, :cond_5

    .line 82
    if-nez v3, :cond_5

    .line 84
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 86
    if-eqz v4, :cond_4

    .line 88
    if-eqz p1, :cond_4

    .line 90
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 92
    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    move-result v4

    .line 99
    if-nez v4, :cond_4

    .line 100
    move v4, v1

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v4, v2

    .line 104
    :goto_3
    if-eqz v4, :cond_5

    .line 105
    move v4, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_5
    move v4, v2

    .line 109
    :goto_4
    if-eqz v0, :cond_7

    .line 110
    if-nez v3, :cond_7

    .line 112
    if-nez v4, :cond_8

    .line 114
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 116
    if-eqz v5, :cond_6

    .line 118
    if-eqz p1, :cond_6

    .line 120
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 122
    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 124
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 126
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 132
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    move-result v6

    .line 137
    if-nez v6, :cond_6

    .line 138
    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 140
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v6

    .line 145
    if-nez v6, :cond_6

    .line 146
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 148
    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 150
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 152
    move-result v5

    .line 155
    if-nez v5, :cond_6

    .line 156
    move v5, v1

    .line 158
    goto :goto_5

    .line 159
    :cond_6
    move v5, v2

    .line 160
    :goto_5
    if-eqz v5, :cond_7

    .line 161
    goto :goto_6

    .line 163
    :cond_7
    move v1, v2

    .line 164
    :cond_8
    :goto_6
    const-string/jumbo v2, "setData: shouldUpdate="

    .line 165
    const-string v5, ", isViewAnimating="

    .line 168
    const-string v6, ", shouldStartIconAnim="

    .line 170
    invoke-static {v2, v0, v5, v3, v6}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    move-result-object v2

    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, ", shouldStartContentAnim="

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 190
    const-string v3, "FocusedNotifPromptView"

    .line 191
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 196
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;-><init>()V

    .line 198
    if-eqz p1, :cond_9

    .line 201
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 203
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 205
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->notifKey:Ljava/lang/String;

    .line 207
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->notifKey:Ljava/lang/String;

    .line 209
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->icon:Landroid/graphics/drawable/Icon;

    .line 211
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->icon:Landroid/graphics/drawable/Icon;

    .line 213
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 219
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 221
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 223
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 225
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->intent:Landroid/app/PendingIntent;

    .line 227
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->intent:Landroid/app/PendingIntent;

    .line 229
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 231
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 233
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    .line 235
    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    .line 237
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 239
    iput-boolean p1, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 241
    :cond_9
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 243
    if-eqz v0, :cond_a

    .line 245
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->update(ZZ)V

    .line 247
    :cond_a
    return-void
    .line 250
.end method

.method public final update(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->initAnimatorCore(Landroid/animation/AnimatorSet;Z)Landroid/animation/AnimatorSet;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    .line 27
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 42
    if-nez p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 46
    const/16 p2, 0x8

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 53
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 59
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->initAnimatorCore(Landroid/animation/AnimatorSet;Z)Landroid/animation/AnimatorSet;

    .line 62
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 66
    if-eqz p2, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentAnimatorSet:Landroid/animation/AnimatorSet;

    .line 73
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 75
    goto :goto_1

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 79
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 81
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->updateRemoteViews()V

    .line 88
    :goto_1
    return-void
    .line 91
.end method

.method public final updateRemoteViews()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 7
    const/16 v1, 0x8

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    return-void

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 19
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIsLight:Z

    .line 21
    if-eqz v3, :cond_1

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    move-object v2, v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    .line 33
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    move-result-object v2

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v3

    .line 50
    const v4, 0x7f0710f6    # @dimen/status_bar_prompt_min_width '48.0dp'

    .line 51
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 58
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    const-string v3, "FocusedNotifPromptView"

    .line 78
    const-string/jumbo v4, "updateRemoteViews: something wrong "

    .line 80
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 86
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    return-void
    .line 107
.end method
