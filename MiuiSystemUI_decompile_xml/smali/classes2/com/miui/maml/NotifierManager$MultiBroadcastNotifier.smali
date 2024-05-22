.class public Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;
.super Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public createIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 7
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    aget-object v3, p0, v2

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
    .line 21
.end method
