.class public final Lcom/android/systemui/navigationbar/NavigationBarView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "mIsKeyguardShowing :"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    const-string v1, "NavBarView"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 37
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->isVisible()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 53
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    :goto_0
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 73
    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    move-result p0

    .line 82
    xor-int/2addr p0, v2

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->abortCurrentGesture()V

    .line 84
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v1

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_1
    if-ge v2, v1, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 99
    check-cast v3, Landroid/view/View;

    .line 100
    invoke-virtual {v3, p0}, Landroid/view/View;->setClickable(Z)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_1

    .line 107
    :cond_1
    return-void
    .line 108
.end method
