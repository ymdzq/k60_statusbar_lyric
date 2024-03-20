.class public final synthetic Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DismissCallbackWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const-string v1, "Failed to call callback"

    .line 4
    const-string v2, "DismissCallbackWrapper"

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 17
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-static {v2, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_0
    return-void

    .line 27
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 33
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissSucceeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    goto :goto_2

    .line 38
    :catch_1
    move-exception p0

    .line 39
    invoke-static {v2, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_2
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
