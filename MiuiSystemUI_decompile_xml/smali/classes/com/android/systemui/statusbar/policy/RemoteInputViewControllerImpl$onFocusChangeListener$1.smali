.class public final Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->remoteInputActive:Z

    .line 6
    if-eq p1, p2, :cond_0

    .line 8
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->remoteInputActive:Z

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 14
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
