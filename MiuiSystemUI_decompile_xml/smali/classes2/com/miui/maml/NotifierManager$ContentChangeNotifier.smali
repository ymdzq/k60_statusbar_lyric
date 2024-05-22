.class public Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field protected final mObserver:Landroid/database/ContentObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V

    .line 8
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 11
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public onRegister()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    .line 8
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13
    const/4 v0, 0x0

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0, v0, v0, v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 19
    return-void
    .line 22
.end method

.method public onUnregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 8
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    return-void
    .line 13
.end method
