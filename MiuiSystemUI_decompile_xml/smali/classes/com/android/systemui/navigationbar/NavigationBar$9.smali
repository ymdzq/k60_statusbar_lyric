.class public final Lcom/android/systemui/navigationbar/NavigationBar$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$9;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLockTaskModeChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    move p1, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$9;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    .line 11
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 15
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setInScreenPinning(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    .line 32
    return-void
    .line 35
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x5

    .line 9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$9;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 10
    if-ne p1, v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 18
    move-result-object p0

    .line 21
    const p1, 0x3eb33333    # 0.35f

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 29
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 33
    move-result-object p0

    .line 36
    const/high16 p1, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    .line 39
    :goto_0
    return-void
    .line 42
.end method
