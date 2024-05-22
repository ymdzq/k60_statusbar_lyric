.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mDeviceProvisionedListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mDeviceProvisionedListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserSetupChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mDeviceProvisionedListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mDeviceProvisionedControllerImpl:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 4
    iget v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUser:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    .line 8
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserSetupCompleted:Z

    .line 12
    if-eq v1, v0, :cond_0

    .line 14
    iput-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserSetupCompleted:Z

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIcons()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
