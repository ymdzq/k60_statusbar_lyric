.class public final Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->setMiuiOptimizationEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method
