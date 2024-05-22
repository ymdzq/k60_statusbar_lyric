.class public final Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

.field public final synthetic val$isPrimaryDisplay:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->val$isPrimaryDisplay:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 4
    return-object p0
    .line 6
.end method

.method public final isSamplingEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->val$isPrimaryDisplay:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    xor-int/2addr p1, v0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateIsDark(Z)V

    .line 8
    return-void
    .line 11
.end method
