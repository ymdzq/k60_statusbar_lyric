.class final Lcom/android/systemui/statusbar/policy/BatteryStateNotifier$scheduleNotificationCancel$r$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier$scheduleNotificationCancel$r$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier$scheduleNotificationCancel$r$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;->stateUnknown:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;->noMan:Landroid/app/NotificationManager;

    .line 8
    const/16 v0, 0x29a

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    return-object p0
    .line 17
.end method
