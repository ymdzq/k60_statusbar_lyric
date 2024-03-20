.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;Lcom/android/systemui/qs/customize/MiuiQSCustomizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;->$view:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 13
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;->$view:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isOpening:Z

    .line 21
    if-nez p0, :cond_1

    .line 23
    invoke-static {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide$default(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method
