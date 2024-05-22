.class public final Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;->this$0:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView$1;->this$0:Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardState:Z

    .line 10
    sget v0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->$r8$clinit:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "mKeyguardState : "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/buttons/MiuiKeyButtonView;->mKeyguardState:Z

    .line 21
    const-string v1, "MiuiKeyButtonView"

    .line 23
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 25
    return-void
    .line 28
.end method
