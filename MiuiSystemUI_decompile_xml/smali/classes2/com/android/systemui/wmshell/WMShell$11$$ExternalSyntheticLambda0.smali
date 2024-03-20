.class public final synthetic Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x10000

    .line 5
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$11;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {v0, v3}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 28
    return-void

    .line 31
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 32
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$11;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v0, v3}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 48
    return-void

    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 52
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$11;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 60
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 68
    return-void

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$11$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 72
    check-cast p0, Lcom/android/systemui/wmshell/WMShell$12;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$12;->this$0:Lcom/android/systemui/wmshell/WMShell;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 78
    new-instance v0, Landroid/view/KeyEvent;

    .line 80
    const/16 v1, 0x119

    .line 82
    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 87
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 92
.end method
