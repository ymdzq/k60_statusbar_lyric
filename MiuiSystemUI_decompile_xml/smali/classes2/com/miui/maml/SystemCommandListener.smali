.class public Lcom/miui/maml/SystemCommandListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# static fields
.field private static final CLEAR_RESOURCE:Ljava/lang/String; = "__clearResource"

.field private static final REQUEST_UPDATE:Ljava/lang/String; = "__requestUpdate"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "__clearResource"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 18
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 22
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 30
    move-result-object p0

    .line 33
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 34
    invoke-virtual {p0, p3}, Lcom/miui/maml/ResourceManager;->clear(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    const-string p2, "__requestUpdate"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    iget-object p0, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 50
    :cond_2
    :goto_0
    return-void
    .line 53
.end method
