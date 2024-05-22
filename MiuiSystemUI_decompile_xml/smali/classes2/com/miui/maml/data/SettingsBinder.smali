.class public Lcom/miui/maml/data/SettingsBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SettingsBinder"


# instance fields
.field private mConst:Z

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/miui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 21
    const-string p2, "const"

    .line 24
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const-string p2, "false"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 35
    xor-int/lit8 p1, p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/miui/maml/data/SettingsBinder;->mConst:Z

    .line 38
    :cond_0
    return-void
    .line 40
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/SettingsBinder;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SettingsBinder$Variable;
    .locals 2

    .line 2
    new-instance v0, Lcom/miui/maml/data/SettingsBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/SettingsBinder$Variable;-><init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SettingsBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SettingsBinder$Variable;

    move-result-object p0

    return-object p0
.end method

.method public refresh()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->startQuery()V

    .line 5
    return-void
    .line 8
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/SettingsBinder;->mConst:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/data/SettingsBinder;->startQuery()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public startQuery()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 18
    check-cast v1, Lcom/miui/maml/data/SettingsBinder$Variable;

    .line 20
    invoke-virtual {v1}, Lcom/miui/maml/data/SettingsBinder$Variable;->query()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 26
    return-void
    .line 29
.end method
