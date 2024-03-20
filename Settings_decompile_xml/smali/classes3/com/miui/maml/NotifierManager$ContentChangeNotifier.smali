.class public Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChangeNotifier"
.end annotation


# instance fields
.field protected final mObserver:Landroid/database/ContentObserver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 426
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 413
    new-instance p1, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$ContentChangeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$ContentChangeNotifier;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 427
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onRegister()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 433
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v0, v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected onUnregister()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
