.class final Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;
.super Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "bottom"

    .line 2
    const v1, 0x7f0a0953    # @id/tag_override_bottom

    .line 4
    const-string v2, "BOTTOM"

    .line 7
    const/4 v3, 0x3

    .line 9
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final getValue(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final setValue(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->setBottom(I)V

    .line 2
    return-void
    .line 5
.end method
