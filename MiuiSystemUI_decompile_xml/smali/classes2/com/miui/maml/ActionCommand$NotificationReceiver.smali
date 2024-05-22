.class abstract Lcom/miui/maml/ActionCommand$NotificationReceiver;
.super Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/NotifierManager$OnNotifyListener;


# instance fields
.field private mNotifierManager:Lcom/miui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public asyncUpdate()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/maml/ActionCommand;->access$000()Landroid/os/Handler;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;

    .line 6
    invoke-direct {v1, p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver$1;-><init>(Lcom/miui/maml/ActionCommand$NotificationReceiver;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 2
    return-void
    .line 5
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public abstract update()V
.end method
