.class Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;
.super Landroid/os/Handler;
.source "WifiLinkTurboSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "WifiLinkTurboSettings"

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 66
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWifiLinkTurbo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->enableWifiLinkTurbo(Z)V

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$fgetmAppRecyclerView(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$mloadPackages(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$fgetmAppRecyclerView(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$mcancelLoadPackage(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLinkTurboOptions "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    iget v2, v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mFlag:I

    if-eq v2, p1, :cond_3

    .line 59
    iput p1, v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mFlag:I

    .line 60
    invoke-static {v0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$fgetmAppRecyclerView(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->-$$Nest$mloadPackages(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAdapter:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mRecommendApps:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->setItems(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
