.class public final Lcom/android/systemui/wmshell/WMShell$15;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$15;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCameraLaunchGestureDetected(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    .line 4
    return-void
    .line 7
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/wmshell/WMShell$15;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    if-nez p1, :cond_0

    .line 9
    and-int/lit8 p1, p3, 0x2

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 15
    const/4 p1, 0x3

    .line 17
    invoke-interface {p0, p1}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded(I)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
