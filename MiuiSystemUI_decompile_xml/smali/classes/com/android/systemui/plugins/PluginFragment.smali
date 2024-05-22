.class public abstract Lcom/android/systemui/plugins/PluginFragment;
.super Landroid/app/Fragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    .line 2
    return-void
    .line 4
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method
