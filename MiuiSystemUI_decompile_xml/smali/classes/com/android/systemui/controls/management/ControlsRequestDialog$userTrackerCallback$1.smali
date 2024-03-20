.class public final Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final startingUser:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsRequestDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/android/systemui/controls/management/ControlsRequestDialog;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->startingUser:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->startingUser:I

    .line 2
    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestDialog$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsRequestDialog;

    .line 6
    iget-object p2, p1, Lcom/android/systemui/controls/management/ControlsRequestDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    invoke-virtual {p2, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
