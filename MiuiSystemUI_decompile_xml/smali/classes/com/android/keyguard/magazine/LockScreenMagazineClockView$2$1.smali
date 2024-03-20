.class public final Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;->this$1:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;->val$intent:Landroid/content/Intent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1f4

    .line 2
    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->checkFastDoubleClick(J)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;->this$1:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;

    .line 10
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 12
    invoke-static {p1}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->access$100(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;->val$intent:Landroid/content/Intent;

    .line 18
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 20
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
