.class public final Lcom/android/systemui/media/controls/ui/MediaControlPanel$1;
.super Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final getCurrentBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$1;->getCurrentTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getCurrentTopCornerRadius()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f070d8e    # @dimen/notification_corner_radius '28.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
