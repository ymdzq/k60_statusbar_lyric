.class public final Lcom/android/systemui/biometrics/SideFpsController$1;
.super Landroid/hardware/fingerprint/ISidefpsController$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/SideFpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SideFpsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    invoke-direct {p0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final hide(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    sget-object p1, Lcom/android/systemui/biometrics/SideFpsUiRequestSource;->AUTO_SHOW:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/SideFpsController;->hide(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V

    .line 6
    return-void
    .line 9
.end method

.method public final show(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/biometrics/SideFpsController;->activityTaskManager:Landroid/app/ActivityTaskManager;

    .line 4
    const/4 v0, 0x4

    .line 6
    if-eq p2, v0, :cond_3

    .line 7
    const/4 v0, 0x6

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez p1, :cond_2

    .line 36
    const-string p1, ""

    .line 38
    :cond_2
    const-string v0, "com.android.settings.biometrics.fingerprint.FingerprintSettings"

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    :cond_3
    const/4 v1, 0x0

    .line 48
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/systemui/biometrics/SideFpsUiRequestSource;->AUTO_SHOW:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 49
    if-eqz v1, :cond_5

    .line 51
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/SideFpsController;->show(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V

    .line 55
    goto :goto_2

    .line 58
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/SideFpsController;->hide(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V

    .line 61
    :goto_2
    return-void
    .line 64
.end method