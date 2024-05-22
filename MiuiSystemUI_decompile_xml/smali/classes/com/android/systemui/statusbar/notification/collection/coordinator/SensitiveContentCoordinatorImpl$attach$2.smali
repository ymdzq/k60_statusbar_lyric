.class final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$attach$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 3
    const-string v4, "onAppLockStateChanged"

    .line 5
    const-string v5, "onAppLockStateChanged()V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->appLock:Lcom/miui/systemui/statusbar/phone/AppLockHelper;

    .line 6
    iget-object v0, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->mBgHandler:Landroid/os/Handler;

    .line 8
    iget-object p0, p0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->getMaskRunnable:Lcom/miui/systemui/statusbar/phone/AppLockHelper$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    return-object p0
    .line 26
.end method
