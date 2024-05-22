.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final action:Ljava/lang/Object;

.field public final id:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->$r8$classId:I

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->action:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->action:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final callWrapper$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "Caught exception from ControlsProviderService"

    .line 5
    const-string v3, "ServiceWrapper"

    .line 7
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->action:Ljava/lang/Object;

    .line 9
    const/4 v5, 0x0

    .line 11
    const-string v6, " - "

    .line 12
    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/Object;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 18
    goto :goto_1

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 22
    check-cast v7, Ljava/lang/String;

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    .line 26
    const-string v9, "onAction "

    .line 28
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v9, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 47
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 51
    if-eqz v0, :cond_0

    .line 53
    check-cast v4, Landroid/service/controls/actions/ControlAction;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->actionCallbackService:Landroid/service/controls/IControlsActionCallback$Stub;

    .line 57
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    .line 59
    new-instance v6, Landroid/service/controls/actions/ControlActionWrapper;

    .line 61
    invoke-direct {v6, v4}, Landroid/service/controls/actions/ControlActionWrapper;-><init>(Landroid/service/controls/actions/ControlAction;)V

    .line 63
    invoke-interface {v0, v7, v6, p0}, Landroid/service/controls/IControlsProvider;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_0
    move v1, v5

    .line 74
    :goto_0
    return v1

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 76
    check-cast v7, Ljava/util/List;

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v9, "subscribe "

    .line 82
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v9, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 102
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 106
    if-eqz p0, :cond_1

    .line 108
    check-cast v4, Landroid/service/controls/IControlsSubscriber;

    .line 110
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    .line 112
    invoke-interface {p0, v7, v4}, Landroid/service/controls/IControlsProvider;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto :goto_2

    .line 117
    :catch_1
    move-exception p0

    .line 118
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_1
    move v1, v5

    .line 122
    :goto_2
    return v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 124
.end method
