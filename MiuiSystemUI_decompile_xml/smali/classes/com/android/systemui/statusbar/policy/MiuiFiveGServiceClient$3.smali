.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
