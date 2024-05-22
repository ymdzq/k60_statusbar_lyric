.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    .line 1
    const-string p1, "scale_background_width"

    .line 2
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 4
    move-result-object p1

    .line 7
    const-string v0, "scale_background_height"

    .line 8
    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "scale_corner_radius"

    .line 14
    invoke-static {p2, v1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 16
    move-result-object p2

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 30
    move-result v0

    .line 33
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 34
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 43
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setBubbleCornerRadius(F)V

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 50
    return-void
    .line 53
.end method
