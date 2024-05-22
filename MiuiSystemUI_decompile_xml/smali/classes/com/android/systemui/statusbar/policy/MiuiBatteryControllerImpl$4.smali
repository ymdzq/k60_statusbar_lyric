.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 18
    iget v2, v2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mCurrentUserId:I

    .line 20
    const-string v3, "POWER_SAVE_MODE_OPEN"

    .line 22
    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    move-result p1

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move v1, v0

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 34
    new-instance v2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;

    .line 36
    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;-><init>(Landroid/database/ContentObserver;ZI)V

    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void

    .line 44
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 45
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 53
    iget v0, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mCurrentUserId:I

    .line 55
    const-string v2, "battery_indicator_style"

    .line 57
    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 59
    move-result p1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 63
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4$1;

    .line 67
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;I)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void

    .line 75
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 76
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object p1

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 84
    iget v2, v2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mCurrentUserId:I

    .line 86
    const-string v3, "POWER_PERFORMANCE_MODE_OPEN"

    .line 88
    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    move-result p1

    .line 93
    if-ne p1, v1, :cond_1

    .line 94
    move v0, v1

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 97
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 99
    new-instance v2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;

    .line 101
    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;-><init>(Landroid/database/ContentObserver;ZI)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 110
.end method
