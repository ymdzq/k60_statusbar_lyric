.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->statusBarClock:Landroid/widget/TextView;

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->statusBarClock:Landroid/widget/TextView;

    .line 14
    const-string/jumbo p2, "statusBarClock"

    .line 16
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->logLoc(Landroid/view/View;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->updateCommon()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 26
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->nsBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->updateBigTimeSize()V

    .line 38
    :cond_1
    :goto_0
    return-void
    .line 41
.end method
