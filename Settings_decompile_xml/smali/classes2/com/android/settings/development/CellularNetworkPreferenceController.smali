.class public Lcom/android/settings/development/CellularNetworkPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "CellularNetworkPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/android/settings/development/CellularNetworkPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isCellularNetworkAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/android/settings/development/CellularNetworkFragment;->isChildControlDisplayed(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public OnPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "cellular_network"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/development/CellularNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/development/CellularNetworkPreferenceController;->isCellularNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 0
    return-void
.end method
