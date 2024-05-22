.class public Lcom/google/android/setupdesign/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

.field public listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

.field public requiringScroll:Z

.field public scrollThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    .line 3
    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    .line 6
    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    .line 9
    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method


# virtual methods
.method public final checkScroll()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getBottomScrollListener()Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public getScrollThreshold()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->scrollThreshold:I

    .line 2
    return p0
    .line 4
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result p2

    .line 15
    sub-int/2addr p2, p5

    .line 16
    add-int/2addr p2, p3

    .line 17
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    .line 18
    move-result p4

    .line 21
    sub-int/2addr p2, p4

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p1

    .line 26
    iput p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->scrollThreshold:I

    .line 27
    :cond_0
    sub-int/2addr p5, p3

    .line 29
    if-lez p5, :cond_1

    .line 30
    iget-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    if-eq p4, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScroll()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public setBottomScrollListener(Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    .line 2
    return-void
    .line 4
.end method
