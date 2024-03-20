.class public Lcom/android/settings/display/ResolutionVisualCheckBox;
.super Lmiuix/visual/check/VisualCheckBox;
.source "ResolutionVisualCheckBox.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ResolutionVisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ResolutionVisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiuix/visual/check/VisualCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 49
    invoke-super {p0}, Lmiuix/visual/check/VisualCheckBox;->onFinishInflate()V

    .line 50
    new-instance v0, Lcom/android/settings/display/ResolutionVisualCheckBox$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ResolutionVisualCheckBox$1;-><init>(Lcom/android/settings/display/ResolutionVisualCheckBox;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/settings/display/ResolutionVisualCheckBox;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/android/settings/display/ResolutionVisualCheckBox;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-super {p0}, Lmiuix/visual/check/VisualCheckBox;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCheckEnabled(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/settings/display/ResolutionVisualCheckBox;->mEnabled:Z

    return-void
.end method
