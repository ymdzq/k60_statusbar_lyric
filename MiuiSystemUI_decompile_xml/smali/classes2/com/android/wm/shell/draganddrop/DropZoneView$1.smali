.class public final Lcom/android/wm/shell/draganddrop/DropZoneView$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "insets"

    .line 2
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->-$$Nest$mgetMarginPercent(Lcom/android/wm/shell/draganddrop/DropZoneView;)F

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 2
    iget p0, p1, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 4
    cmpl-float p0, p2, p0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iput p2, p1, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    .line 10
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginView:Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
