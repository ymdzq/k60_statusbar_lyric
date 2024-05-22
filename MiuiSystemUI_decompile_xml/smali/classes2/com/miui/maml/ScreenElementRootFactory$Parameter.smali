.class public Lcom/miui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ResourceLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
