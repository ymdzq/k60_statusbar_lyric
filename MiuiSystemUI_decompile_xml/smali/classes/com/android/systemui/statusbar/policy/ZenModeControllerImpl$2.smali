.class public final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 13
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 15
    monitor-enter p2

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    invoke-static {p0, v0}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 25
    monitor-exit p2

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :goto_0
    :try_start_1
    const-string/jumbo p1, "updateZenModeConfig"

    .line 33
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenModeConfig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    return-void

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    throw p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 54
.end method
