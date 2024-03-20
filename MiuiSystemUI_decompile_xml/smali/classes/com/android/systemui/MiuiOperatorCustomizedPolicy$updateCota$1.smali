.class public final Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "persist.sys.cota.carrier"

    .line 7
    const-string v1, ""

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    iput-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->initResource()V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mListeners:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfigChangeListener;

    .line 44
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateMiuiOperatorConfig()V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMainHandler:Landroid/os/Handler;

    .line 52
    new-instance v2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;

    .line 54
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;-><init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_1
    return-void
    .line 62
.end method
