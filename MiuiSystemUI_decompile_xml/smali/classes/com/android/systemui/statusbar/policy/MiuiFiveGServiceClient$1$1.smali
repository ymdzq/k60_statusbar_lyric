.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->$r8$classId:I

    .line 2
    const-string v1, "FiveGServiceClient"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    const-string v0, "ExtTelephony Service connected"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 17
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceConnected:Z

    .line 20
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPackageName:Ljava/lang/String;

    .line 22
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 24
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

    .line 26
    invoke-virtual {v4, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    .line 28
    move-result-object v2

    .line 31
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 34
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 36
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->-$$Nest$minitFiveGServiceState(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "Client = "

    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :goto_0
    const-string v0, "ExtTelephony Service disconnected..."

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 70
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 72
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceConnected:Z

    .line 74
    if-eqz v1, :cond_0

    .line 76
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 80
    invoke-virtual {v1, v0}, Lcom/qti/extphone/ExtTelephonyManager;->unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 87
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceConnected:Z

    .line 90
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 93
    const/16 v0, 0x2711

    .line 95
    const-wide/16 v1, 0x1388

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 106
.end method
