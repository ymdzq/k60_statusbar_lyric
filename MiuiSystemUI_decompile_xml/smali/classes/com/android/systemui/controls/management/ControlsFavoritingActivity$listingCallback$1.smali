.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServicesUpdated(Ljava/util/List;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-le p1, v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 11
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->isNewFlowEnabled:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/16 p1, 0x8

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    .line 21
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    move-object v0, v1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v0

    .line 30
    if-eq v0, p1, :cond_3

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    .line 33
    if-nez v0, :cond_2

    .line 35
    goto :goto_1

    .line 37
    :cond_2
    move-object v1, v0

    .line 38
    :goto_1
    new-instance v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;

    .line 39
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;I)V

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    :cond_3
    return-void
    .line 47
.end method
