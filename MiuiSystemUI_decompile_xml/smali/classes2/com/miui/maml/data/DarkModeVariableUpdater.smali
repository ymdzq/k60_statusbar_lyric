.class public Lcom/miui/maml/data/DarkModeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mDarkMode:Lcom/miui/maml/data/IndexedVariable;

.field private mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 13
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 17
    const-string v1, "__darkmode"

    .line 19
    const/4 v2, 0x1

    .line 21
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 33
    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 37
    const-string v1, "__darkmode_wallpaper"

    .line 39
    invoke-direct {p1, v1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 41
    iput-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of p1, p3, Ljava/lang/Integer;

    .line 2
    if-eqz p1, :cond_2

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 11
    and-int/lit8 p2, p1, 0x1

    .line 12
    const/4 p3, 0x1

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 29
    :goto_0
    const/4 p2, 0x3

    .line 32
    and-int/2addr p1, p2

    .line 33
    if-ne p1, p2, :cond_1

    .line 34
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lcom/miui/maml/data/IndexedVariable;

    .line 51
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 58
    move-result-object p1

    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 70
    :cond_2
    return-void
    .line 73
.end method
