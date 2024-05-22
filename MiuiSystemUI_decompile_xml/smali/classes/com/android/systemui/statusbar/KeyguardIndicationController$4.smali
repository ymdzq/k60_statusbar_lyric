.class public final Lcom/android/systemui/statusbar/KeyguardIndicationController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideBiometricMessage()V

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 17
    return-void
    .line 20
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 16
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 26
    return-void
    .line 29
.end method
