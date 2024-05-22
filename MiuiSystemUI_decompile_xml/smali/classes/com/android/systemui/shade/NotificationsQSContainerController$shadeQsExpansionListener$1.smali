.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shade/ShadeQsExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onQsExpansionChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$shadeQsExpansionListener$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->qsExpanded:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->qsExpanded:Z

    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    check-cast p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
