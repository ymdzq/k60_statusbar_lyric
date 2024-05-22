.class public final Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
    .line 19
.end method
