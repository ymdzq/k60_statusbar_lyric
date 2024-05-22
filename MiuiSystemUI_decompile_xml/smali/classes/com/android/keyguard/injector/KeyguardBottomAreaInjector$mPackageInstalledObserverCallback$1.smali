.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageInstalledChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "com.android.camera"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIcons()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
