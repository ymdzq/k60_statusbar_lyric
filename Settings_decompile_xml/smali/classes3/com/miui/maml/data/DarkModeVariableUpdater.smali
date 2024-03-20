.class public Lcom/miui/maml/data/DarkModeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "DarkModeVariableUpdater.java"


# instance fields
.field private mDarkMode:Lcom/miui/maml/data/IndexedVariable;

.field private mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    .line 13
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "__darkmode"

    const/4 v2, 0x1

    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "__darkmode_wallpaper"

    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 20
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 21
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 24
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :goto_0
    const/4 p2, 0x3

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_1

    .line 32
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    .line 38
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2
    return-void
.end method
