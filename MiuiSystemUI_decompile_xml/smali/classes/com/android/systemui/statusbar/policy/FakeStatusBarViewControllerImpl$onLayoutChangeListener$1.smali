.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

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
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realStatusIcons:Landroid/view/View;

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakeStatusIconsSize()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 18
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->realPromptIcon:Landroid/view/View;

    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl$onLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->updateFakePromptIconSize()V

    .line 30
    :cond_1
    :goto_0
    return-void
    .line 33
.end method
