.class public Lcom/miui/maml/data/BatteryVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    .line 1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

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
    const/4 v1, 0x1

    .line 19
    const-string v2, "battery_level"

    .line 20
    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string p3, "android.intent.action.BATTERY_CHANGED"

    .line 6
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    const-string p1, "level"

    .line 14
    const/4 p3, -0x1

    .line 16
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 20
    if-eq p1, p3, :cond_1

    .line 21
    iget p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 23
    if-eq p2, p1, :cond_1

    .line 25
    iget-object p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 27
    const/16 p3, 0x64

    .line 29
    if-lt p1, p3, :cond_0

    .line 31
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    int-to-double v0, p1

    .line 36
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 37
    iput p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 46
    :cond_1
    return-void
    .line 49
.end method
