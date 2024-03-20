.class public final Lcom/android/systemui/classifier/FalsingA11yDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingA11yDelegate;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    if-ne p2, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingA11yDelegate;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 6
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 14
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->completePriorGesture()V

    .line 22
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    .line 26
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 28
    move-result p0

    .line 31
    return p0
    .line 32
.end method
