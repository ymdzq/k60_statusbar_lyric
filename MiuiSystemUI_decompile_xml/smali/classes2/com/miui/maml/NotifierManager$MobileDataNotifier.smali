.class public Lcom/miui/maml/NotifierManager$MobileDataNotifier;
.super Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3
    invoke-static {}, Lcom/miui/maml/util/MobileDataUtils;->getInstance()Lcom/miui/maml/util/MobileDataUtils;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public onRegister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;->mObserver:Landroid/database/ContentObserver;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/util/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 8
    const/4 v0, 0x0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p0, v0, v0, v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method
