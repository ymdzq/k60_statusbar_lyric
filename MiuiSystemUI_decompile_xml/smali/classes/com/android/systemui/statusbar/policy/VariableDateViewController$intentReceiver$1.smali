.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    const-string v0, "android.intent.action.TIME_TICK"

    .line 19
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 25
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string v0, "android.intent.action.TIME_SET"

    .line 31
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    :cond_1
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p2

    .line 60
    if-eqz p2, :cond_3

    .line 61
    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 65
    const/4 v1, 0x0

    .line 67
    invoke-direct {p2, v0, v1}, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;I)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 74
    new-instance p2, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;

    .line 76
    const/4 v0, 0x1

    .line 78
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;I)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_4
    return-void
    .line 85
.end method
