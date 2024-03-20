.class public Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    invoke-static {p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$300(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->onContentChanged()V

    .line 4
    return-void
    .line 7
.end method
