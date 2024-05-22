.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/SettingsObserver$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onContentChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    .line 2
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 10
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazineClosed:Z

    .line 12
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateLeftIcon()V

    .line 22
    return-void
    .line 25
.end method
