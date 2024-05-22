.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;I)V
    .locals 1

    .line 1
    iput p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 7
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    .line 9
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    .line 12
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final callWrapper$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "Caught exception from ControlsProviderService"

    .line 5
    const-string v3, "ServiceWrapper"

    .line 7
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    .line 9
    const/4 v5, 0x0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    const-string v7, "load "

    .line 22
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 35
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 39
    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    .line 43
    invoke-interface {p0, v4}, Landroid/service/controls/IControlsProvider;->load(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_0
    move v1, v5

    .line 53
    :goto_0
    return v1

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v7, "suggest "

    .line 59
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 73
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 77
    if-eqz p0, :cond_1

    .line 79
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    .line 81
    invoke-interface {p0, v4}, Landroid/service/controls/IControlsProvider;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    goto :goto_2

    .line 86
    :catch_1
    move-exception p0

    .line 87
    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_1
    move v1, v5

    .line 91
    :goto_2
    return v1

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
