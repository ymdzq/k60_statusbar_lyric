.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newVisibility:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iput p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->$newVisibility:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->otherAppsButton:Landroid/view/View;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :cond_0
    iget p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->$newVisibility:I

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
    .line 14
.end method
