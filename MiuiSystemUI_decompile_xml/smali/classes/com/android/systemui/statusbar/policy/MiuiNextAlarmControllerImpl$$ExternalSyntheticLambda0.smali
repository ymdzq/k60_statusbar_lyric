.class public final synthetic Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->updateAlarmExistInBg()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mContentObserver:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->onChange(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mContentObserverNew:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$1;->onChange(Z)V

    .line 15
    return-void
    .line 18
.end method
