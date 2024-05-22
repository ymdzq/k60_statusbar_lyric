.class public final Lcom/android/systemui/toast/MIUIStrongToastControl$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$8;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$8;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    const-string v1, "mIsKeyguardShowing :"

    .line 10
    const-string v2, "MIUIStrongToastControl"

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToastControl;->hideStrongToastImmediately()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
