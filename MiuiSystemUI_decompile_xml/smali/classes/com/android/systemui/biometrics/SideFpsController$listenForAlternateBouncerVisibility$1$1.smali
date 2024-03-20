.class public final Lcom/android/systemui/biometrics/SideFpsController$listenForAlternateBouncerVisibility$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/SideFpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SideFpsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$listenForAlternateBouncerVisibility$1$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    sget-object p2, Lcom/android/systemui/biometrics/SideFpsUiRequestSource;->ALTERNATE_BOUNCER:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController$listenForAlternateBouncerVisibility$1$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController;->show(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/SideFpsController;->hide(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V

    .line 19
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object p0
    .line 24
.end method
