.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroid/database/ContentObserver;

.field public final synthetic val$powerSave:Z


# direct methods
.method public synthetic constructor <init>(Landroid/database/ContentObserver;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->this$1:Landroid/database/ContentObserver;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->val$powerSave:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->this$1:Landroid/database/ContentObserver;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 12
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->val$powerSave:Z

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->setPowerSave(Z)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->this$1:Landroid/database/ContentObserver;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 24
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$5$1;->val$powerSave:Z

    .line 26
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mPerformanceMode:Z

    .line 28
    if-ne v1, p0, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mPerformanceMode:Z

    .line 33
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 35
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, v1, :cond_1

    .line 45
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 53
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mPerformanceMode:Z

    .line 55
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPerformanceModeChanged(Z)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    monitor-exit p0

    .line 63
    :goto_2
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
