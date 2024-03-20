.class public Lcom/android/settings/widget/FontLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FontLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/FontLinearLayout$OnFontLinearLayoutClickListener;
    }
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mScale:F

.field private mScaledTouchSlop:I

.field private mTouchDownX:F

.field private mTouchUpX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScaledTouchSlop:I

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 54
    iget v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mTouchUpX:F

    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 56
    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 59
    iget v2, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    goto :goto_0

    .line 61
    :cond_0
    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 64
    iput p1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mTouchUpX:F

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/widget/FontLinearLayout;->onStopTrackingTouch()V

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/widget/FontLinearLayout;->trackTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/FontLinearLayout;->mTouchDownX:F

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/widget/FontLinearLayout;->onStartTrackingTouch()V

    :cond_2
    :goto_0
    return v1
.end method

.method public setOnFontLinearLayoutClickListener(Lcom/android/settings/widget/FontLinearLayout$OnFontLinearLayoutClickListener;)V
    .locals 0

    .line 0
    return-void
.end method
