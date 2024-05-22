.class public final Lcom/miui/systemui/functions/HapticFeedBackImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/IHapticFeedBack;


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 5
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Lmiui/stub/MiuiStub$1;

    .line 11
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 16
    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v1, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    .line 20
    iput-object v2, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 23
    const-string/jumbo v2, "vibrator"

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroid/os/Vibrator;

    .line 32
    iput-object v1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mVibrator:Landroid/os/Vibrator;

    .line 34
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 40
    iget-object v0, v0, Lmiui/stub/MiuiStub$1;->this$0:Lmiui/stub/MiuiStub;

    .line 42
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    .line 44
    iget-object v0, v0, Lmiui/stub/MiuiStub$BaseProvider;->mBgHandler:Landroid/os/Handler;

    .line 46
    iput-object v0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mBgHandler:Landroid/os/Handler;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V
    .locals 7

    .line 2
    new-instance v6, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;IILjava/lang/String;I)V

    invoke-virtual {p0, p5, v6}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extExtHapticFeedback(ILjava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method

.method public final isSupportExtHapticFeedback(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 6
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final isSupportV2HapticFeedback(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_V2_HAPTIC_VERSION:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 6
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mBgHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
