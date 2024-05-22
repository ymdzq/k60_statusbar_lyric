.class public final Lcom/android/systemui/wmshell/WMShell$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$splitScreen:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wmshell/WMShell$8;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$8;->val$splitScreen:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final goToFullscreenFromSplit()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$8;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$8;->val$splitScreen:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreen;

    .line 10
    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 16
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;

    .line 18
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda4;-><init>(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 21
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void

    .line 29
    :goto_0
    check-cast p0, Lcom/android/wm/shell/sosc/SoScSplitScreen;

    .line 30
    invoke-interface {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreen;->goToFullscreenFromSplit()V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
