.class public Lcom/android/settings/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mSetProgress:Ljava/lang/reflect/Method;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    const-string/jumbo p3, "setProgress"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 45
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    iput-object p1, p0, Lcom/android/settings/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private setProgressOnMove(F)V
    .locals 4

    .line 215
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    float-to-int p1, p1

    .line 219
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setProgress(I)V

    .line 222
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 194
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 197
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    if-le p1, v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    if-ge p1, v3, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 202
    :cond_2
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float p1, v1

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 205
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->setProgressOnMove(F)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    .line 162
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 159
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 156
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 153
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    :goto_0
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 60
    iget-object v3, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 65
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v6, v1, v5

    .line 70
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v7

    div-int/2addr v6, v7

    sub-int v6, v1, v6

    .line 71
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v6, v5

    add-int/2addr v4, v7

    invoke-virtual {v3, v7, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/16 v4, 0x2710

    .line 83
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 84
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v5, v1, v4

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v5, v6

    .line 85
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, v1, v4

    .line 86
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v7

    mul-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v7

    div-int/2addr v5, v7

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v5

    .line 85
    invoke-virtual {v3, v6, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-lez p2, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V

    return-void

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No background!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 113
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method onStartVerticalTrackingTouch()V
    .locals 0

    .line 0
    return-void
.end method

.method onStopVerticalTrackingTouch()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 118
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 141
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStartVerticalTrackingTouch()V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return v2
.end method

.method public setOnSeekBarChangeListener(Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
