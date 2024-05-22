.class public final Lcom/android/systemui/navigationbar/NavigationModeController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserSwitched()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onUserSwitched: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "NavigationModeController"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 33
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 36
    move-result p0

    .line 39
    const/16 v1, 0x3e8

    .line 40
    if-ne p0, v1, :cond_3

    .line 42
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 44
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    if-nez p0, :cond_0

    .line 48
    const/4 p0, 0x0

    .line 50
    :cond_0
    const-string v1, "force_fsg_nav_bar"

    .line 51
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 53
    move-result p0

    .line 56
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 57
    if-eqz p0, :cond_1

    .line 59
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLine:Z

    .line 61
    if-eqz p0, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

    .line 67
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->updateOverlayManager()V

    .line 81
    :cond_3
    return-void
    .line 84
.end method
