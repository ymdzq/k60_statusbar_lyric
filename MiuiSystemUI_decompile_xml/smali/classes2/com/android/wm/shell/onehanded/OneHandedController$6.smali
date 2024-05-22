.class Lcom/android/wm/shell/onehanded/OneHandedController$6;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

.field final synthetic val$onChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$6;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController$6;->val$onChangeRunnable:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$6;->val$onChangeRunnable:Ljava/lang/Runnable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
    .line 7
.end method
