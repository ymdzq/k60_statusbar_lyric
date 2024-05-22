.class public final Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070631    # @dimen/lockscreen_shade_media_transition_distance '120.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->distanceForFullShadeTransition:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 23
    move-result p1

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->inSplitShade:Z

    .line 27
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    .line 30
    return-void
    .line 33
.end method
