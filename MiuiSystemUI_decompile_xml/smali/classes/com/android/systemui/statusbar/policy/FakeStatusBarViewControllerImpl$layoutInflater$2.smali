.class final Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$layoutInflater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$layoutInflater$2;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$layoutInflater$2;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->context:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method
