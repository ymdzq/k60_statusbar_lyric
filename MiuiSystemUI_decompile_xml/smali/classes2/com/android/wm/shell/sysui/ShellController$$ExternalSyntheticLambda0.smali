.class public final synthetic Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Landroid/view/SurfaceControlRegistry;->createProcessInstance(Landroid/content/Context;)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellInit;->init()V

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 25
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 37
    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 39
    return-void

    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 43
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellController;->onKeyguardDismissAnimationFinished()V

    .line 49
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 54
.end method
