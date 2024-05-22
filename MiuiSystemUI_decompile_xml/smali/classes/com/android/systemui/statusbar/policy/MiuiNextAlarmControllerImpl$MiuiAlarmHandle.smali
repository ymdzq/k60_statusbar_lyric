.class public final Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const v1, 0x186a2

    .line 4
    if-ne v0, v1, :cond_0

    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasAlarmPackage:Z

    .line 23
    if-eq p1, v0, :cond_2

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasAlarmPackage:Z

    .line 27
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->-$$Nest$mupdateAlarmIcon(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    const v1, 0x186a3

    .line 33
    if-ne v0, v1, :cond_1

    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result p1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasSystemSettings:Z

    .line 52
    if-eq p1, v0, :cond_2

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasSystemSettings:Z

    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->-$$Nest$mupdateAlarmIcon(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    const v1, 0x186a4

    .line 62
    if-ne v0, v1, :cond_2

    .line 65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 69
    if-eqz v0, :cond_2

    .line 71
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result p1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl$MiuiAlarmHandle;->this$0:Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasGlobalSettings:Z

    .line 81
    if-eq p1, v0, :cond_2

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->mHasGlobalSettings:Z

    .line 85
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->-$$Nest$mupdateAlarmIcon(Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;)V

    .line 87
    :cond_2
    :goto_0
    return-void
    .line 90
.end method
