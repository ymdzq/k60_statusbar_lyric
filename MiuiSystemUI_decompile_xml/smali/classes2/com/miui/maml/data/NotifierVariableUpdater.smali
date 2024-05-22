.class public abstract Lcom/miui/maml/data/NotifierVariableUpdater;
.super Lcom/miui/maml/data/VariableUpdater;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/NotifierManager$OnNotifyListener;


# instance fields
.field protected mNotifierManager:Lcom/miui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/data/VariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mNotifierManager:Lcom/miui/maml/NotifierManager;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/NotifierVariableUpdater;->mType:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/NotifierManager;->resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 6
    return-void
    .line 9
.end method
