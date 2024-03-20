.class public Lcom/android/settings/wifi/WifiDetailGridView;
.super Landroid/widget/GridView;
.source "WifiDetailGridView.java"


# instance fields
.field private mFontScaler:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 25
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/android/settings/wifi/WifiDetailGridView;->mFontScaler:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 6

    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    .line 34
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 35
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiDetailGridView;->mFontScaler:D

    .line 36
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 37
    iget-wide v2, p0, Lcom/android/settings/wifi/WifiDetailGridView;->mFontScaler:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 40
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-double v2, p2

    mul-double/2addr v2, v0

    double-to-int p2, v2

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method
