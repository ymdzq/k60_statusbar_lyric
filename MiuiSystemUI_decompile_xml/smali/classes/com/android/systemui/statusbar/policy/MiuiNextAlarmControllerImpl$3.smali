.class public final Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p2, "com.android.deskclock"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->updateAlarmExistInBg()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p2, "com.android.deskclock"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->updateAlarmExistInBg()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
